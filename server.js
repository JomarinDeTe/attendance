import express from "express";
import mysql from 'mysql';
import cors from 'cors';
import bcrypt from 'bcrypt';
import session from "express-session";
import MySQLStoreFactory from 'express-mysql-session';
const MySQLStore = MySQLStoreFactory(session);
const app = express();
const sessionSecret = '$2a$12$6qqVbtnUx.iFS/MZixmSXOpHFCrqZ4Ua.77ULZbDxu1vPP/svXDNS';


//session sql
const sessionStore = new MySQLStore({
  host: "bkxugmhtpvkmue780b7b-mysql.services.clever-cloud.com",
  user: "umq4rnvmf0blsrwg",
  password: "tmrtbKuTb04OPj6ov2Vl",
  database: "bkxugmhtpvkmue780b7b",
});


// session handling para sa login
app.use(session({
  secret: sessionSecret,
  resave: false,
  saveUninitialized: true,
  store: sessionStore,
}));

app.use(cors());

app.use(express.json());


//database connection method
const db = mysql.createConnection({
  host: "bkxugmhtpvkmue780b7b-mysql.services.clever-cloud.com",
  user: "umq4rnvmf0blsrwg",
  password: "tmrtbKuTb04OPj6ov2Vl",
  database: "bkxugmhtpvkmue780b7b",
})


// login function


const isValidUser = (username, password) => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM tbl_users WHERE username = ?';
    db.query(sql, [username], (error, results) => {
      if (error) {
        reject(error);
      } else if (results.length === 0) {
        reject('User not found');
      } else {
        const user = results[0];
        console.log('Retrieved user:', user);
        bcrypt.compare(password, user.password, (err, isMatch) => {
          if (err) {
            reject(err);
          } else if (isMatch) {
            console.log('User authenticated:', user);
            resolve(user);
          } else {
            reject('Invalid password');
          }
        });
      }
    });
  });
};


const getUserRole = (username) => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT role FROM tbl_users WHERE username = ? ';
    db.query(sql, [username], (error, results) => {
      if (error) {
        reject(error);
      } else if (results.length > 0) {
        resolve(results[0].role);
      } else {
        reject('User not found');
      }
    });
  });
};

const getUserInfo = (username) => {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT student_id FROM tbl_users WHERE username = ? ';
    db.query(sql, [username], (error, results) => {
      if (error) {
        reject(error);
      } else if (results.length > 0) {
        resolve(results[0].student_id);
      } else {
        reject('User not found');
      }
    });
  });
};
// login api sa frontend
app.post('/login', async (req, res) => {
  const {
    username,
    password
  } = req.body;

  try {
    const user = await isValidUser(username, password);
    const role = await getUserRole(username);
    const info = await getUserInfo(username);
    
    req.session.user = {
      user_id: user.user_id,
      username: user.username,
      role: role,
      info: info
      
    };
    res.json({
      username,
      role,
      info: info
     
    });
  } catch (error) {
    res.status(401).json({
      error
    });
  }
});


//logout 

app.get('/logout', async (req, res) => {
  req.session.destroy((err) => {
    if (err) {
      console.error('Error while logging out:', err);
    }
    res.redirect('/');
  });
});

// end of login and logout function

//student  function


app.post('/registration', (req, res) => {
  const sqlCheckStudent = 'SELECT * FROM tbl_users WHERE student_id = ? OR name = ?';
  const { student_id, fullname } = req.body;

  
  db.query(sqlCheckStudent, [student_id, fullname], async (checkErr, checkResult) => {
    if (checkErr) {
      console.error('Error checking if student exists:', checkErr);
      res.status(500).json({ status: 500, message: 'Error checking if student exists' });
    } else {
      if (checkResult.length > 0) {
        
        res.status(400).json({ status: 400, message: 'Student with the same student ID or name already exists' });
      } else {
      
        const plaintextPassword = req.body.password;
        const hashedPassword = await bcrypt.hash(plaintextPassword, 10);
        const values = [
          req.body.fullname,
          req.body.student_id,
          req.body.year_level,
          req.body.course,
          req.body.contact_number,
          req.body.address,
          req.body.username,
          req.body.email,
          hashedPassword,
        ];

        const sqlInsertStudent = `
          INSERT INTO tbl_users (name, student_id, year_level, course, contact_number, address, username, email, password)
          VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        `;

        try {
          await insertRecord(sqlInsertStudent, values);
          res.json({ Message: "User registered successfully" });
        } catch (error) {
          console.error('Error registering user:', error);
          res.status(500).json({ Message: "Error registering user" });
        }
      }
    }
  });
});

function insertRecord(sql, values) {
  return new Promise((resolve, reject) => {
    db.query(sql, values, (err, result) => {
      if (err) {
        reject(err);
      } else {
        resolve(result);
      }
    });
  });
}


// end of student function

// teacher functions

// para sa mga subjects display
app.get('/subjects', (req, res) => {
  const sub = "SELECT * FROM subjects "
  db.query(sub, (err, result) => {
    if (err) return res.json({
      Message: "Error fetching Subjects"
    });
    return res.json(result);
  })
})


app.get('/students', (req, res)=> {
  const sub = "SELECT * FROM tbl_users WHERE role = 'Student' "
  db.query(sub, (err, result) => {
    if (err) return res.json({
      Message: "Error fetching Students"
    });
    return res.json(result);
  })
})

// para sa code pang display ng student related sa teacher na naka login
app.get('/students/:user_id', (req, res) => {
  const userId = req.params.user_id;
  const sql = `
      SELECT *, t.id as record_id FROM teachers_students t
      LEFT JOIN tbl_users u ON u.user_id = t.student_table_id
      LEFT JOIN subjects s ON s.id = t.class_id
      WHERE t.teachers_table_id = ?
    `;
  db.query(sql, [userId], (err, results) => {
    if (err) {
      return res.json({
        Message: "Error fetching Students"
      });
    }
    return res.json(results);
  });
});



// search function para sa pag add ng students
app.get('/search-student/:studentId', (req, res) => {
  const studentId = req.params.studentId;
  const sql = 'SELECT user_id, name FROM tbl_users WHERE student_id = ? '; 
  db.query(sql, [studentId], (err, results) => {
    if (err) {
      return res.status(500).json({
        error: 'Error searching for student'
      });
    }

    if (results.length === 0) {
      return res.status(404).json({
        error: 'Student not found'
      });
    }

    const studentData = results[0];
    res.json({
      user_id: studentData.user_id,
      name: studentData.name
    });
  });
});


// insert student ng bawat teacher 
app.post('/insert-student', (req, res) => {
  const { teacher_id, studentId, block, selectedClass } = req.body;
  const sqlCheckStudent = 'SELECT COUNT(*) AS count FROM teachers_students WHERE student_table_id = ? AND class_id = ? ';

 
  db.query(sqlCheckStudent, [studentId, selectedClass], (checkErr, checkResult) => {
    if (checkErr) {
      console.error('Error checking if student exists:', checkErr);
      res.status(500).json({ status: 500, message: 'Error checking if student exists' });
    } else {
      const studentExists = checkResult[0].count > 0;

      if (studentExists) {
        res.status(200).json({ status: 200, message: 'Student already exists' });
      } else {
        const sqlInsertStudent = `
          INSERT INTO teachers_students (teachers_table_id, student_table_id, blocks, class_id)
          VALUES (?, ?, ?, ?)
        `;

        const responses = [];

        const processClass = (classId, callback) => {
          db.query(sqlInsertStudent, [teacher_id, studentId, block, classId], (err, result) => {
            if (err) {
              console.error('Error inserting student:', err);
              responses.push({ status: 500, message: 'Error inserting student' });
            } else {
              responses.push({ status: 200, message: 'Student inserted successfully' });
            }
            callback();
          });
        };

        const classes = Array.isArray(selectedClass) ? selectedClass : [selectedClass];

        const processNextClass = (index) => {
          if (index < classes.length) {
            processClass(classes[index], () => {
              processNextClass(index + 1);
            });
          } else {
            res.json({ responses });
          }
        };

        processNextClass(0);
      }
    }
  });
});
  

//delete function

app.post('/remove-student', (req, res) => {
  const studentId = req.body.studentId; 

  const deleteStudentQuery = 'DELETE FROM teachers_students WHERE id = ?';
  db.query(deleteStudentQuery, [studentId], (err, results) => {
    if (err) {
      console.error('Error deleting student:', err);
      res.status(500).json({ success: false, message: 'Failed to delete student' });
    } else {
      console.log('Student deleted:', results.affectedRows);
      res.json({ success: true, message: 'Student has been removed from the list' });
    }
  });
});

// 
app.get('/attendance-by-subject', (req, res) => {
  const selectedClass = req.query.class;
  const teacher_id = req.query.teacher_id;
  const sql = 'SELECT *, u.user_id AS student_pk FROM teachers_students t LEFT JOIN tbl_users u ON u.user_id = t.student_table_id LEFT JOIN subjects s ON s.id = t.class_id  WHERE t.class_id = ? AND t.teachers_table_id = ? ';
  db.query(sql, [selectedClass, teacher_id], (err, results) => {
    if (err) {
      console.error('Error fetching students:', err);
      res.status(500).json({ error: 'Error fetching students' });
    } else {
      res.json(results);
    }
  });
});

app.get('/all-students', (req, res) => {
  const teacher_id = req.query.teacher_id;
  const sql = 'SELECT * FROM teachers_students t LEFT JOIN tbl_users u ON u.user_id = t.student_table_id LEFT JOIN subjects s ON s.id = t.class_id  WHERE t.teachers_table_id = ? ';
  db.query(sql, [teacher_id], (err, results) => {
    if (err) {
      console.error('Error fetching students:', err);
      res.status(500).json({ error: 'Error fetching students' });
    } else {
      res.json(results);
    }
  });
});


// report functions
app.get('/attendance-data', async (req, res) => {
  const teacherId = req.query.teacher_id;
  const selectedClass = req.query.class;
  const startDate = req.query.start_date;
  const endDate = req.query.end_date;
  try {
    const sql = `
      SELECT *
      FROM tbl_attendance a
      LEFT JOIN subjects s ON s.id = a.class_id
      LEFT JOIN tbl_users u ON u.user_id = a.student_table_id
      WHERE a.teacher_id = ? AND a.class_id = ? AND a.date_added >= ? AND a.date_added <= ?
    `;
    db.query(sql, [teacherId, selectedClass, startDate, endDate], (err, results) => {
      if (err) {
        console.error('Error fetching students:', err);
        res.status(500).json({ error: 'Error fetching students' });
      } else {
        res.json(results);
      }
    });
  } catch (error) {
    console.error('Error executing the database query: ', error);
    res.status(500).send('Internal Server Error');
  }
});
//end of report function

// insert attendance
app.post('/submit-attendance', (req, res) => {
  const attendanceData = req.body;
  const { selectedClass, selectedDate, studentData } = attendanceData;
  const responses = []; 
  const teacher_id = req.body.teacherID;
  const processStudent = (student, callback) => {
    const { user_id, attendance } = student;
    const date_added = selectedDate;
    const sqlCheckAttendance = "SELECT * FROM tbl_attendance WHERE student_table_id = ? AND class_id = ? AND date_added = ? ";
    
    db.query(sqlCheckAttendance, [user_id, selectedClass, date_added], (err, results) => {
      if (err) {
        responses.push({ status: 500, message: 'Error checking student attendance' });
        callback();
      } else {
        if (results.length === 0) {
          const sqlInsertAttendance = "INSERT INTO tbl_attendance (teacher_id, student_table_id, class_id, attendance, date_added) VALUES (?, ?, ?, ?, ?)";
          
          db.query(sqlInsertAttendance, [teacher_id, user_id, selectedClass, attendance, date_added], (insertErr, insertResults) => {
            if (insertErr) {
              responses.push({ status: 500, message: 'Error inserting student attendance' });
            } else {
              responses.push({ status: 200, message: 'Attendance data submitted successfully' });
            }
            callback(); 
          });
        } else {
          responses.push({ status: 409, message: 'Attendance already exists for the student on this date' });
          callback(); 
        }
      }
    });
  };

  const processNextStudent = (index) => {
    if (index < studentData.length) {
      processStudent(studentData[index], () => {
        processNextStudent(index + 1); 
      });
    } else {
      res.json({ responses });
    }
  };
  processNextStudent(0);
});



// teacher's subject function
 
app.get('/teacher-subjects', (req, res) => {
  const teacherId = req.query.teacherId;

  const sql = 'SELECT * FROM teachers_subjects t INNER JOIN subjects s ON s.id = t.subject_id WHERE t.teacher_id = ?';

  db.query(sql, [teacherId], (err, results) => {
    if (err) {
      console.error('Error fetching teacher subjects:', err);
      res.status(500).json({ error: 'Error fetching teacher subjects' });
    } else {
      res.json(results);
    }
  });
});


//

// end of teacher functions

// admin functions

app.get('/teachers', (req, res) => {
  const sql = `
      SELECT t.*, GROUP_CONCAT(s.subject_name) AS subject_names
      FROM tbl_users t
      LEFT JOIN teachers_subjects ts ON t.user_id = ts.teacher_id
      LEFT JOIN subjects s ON ts.subject_id = s.id WHERE t.role = 'Teacher'
      GROUP BY t.user_id
    `;
  db.query(sql, (err, result) => {
    if (err) return res.json({
      Message: "Error Fetching Teachers"
    });

    const teachersData = result.map((teacher) => ({
      ...teacher,
      subject_names: teacher.subject_names.split(','),
    }));

    return res.json(teachersData);
  });
});

app.post('/add-teacher', async (req, res) => {
  
  const checkExistingTeacherSql = "SELECT COUNT(*) AS count FROM tbl_users WHERE email = ? OR name = ?";
  const checkExistingTeacherValues = [req.body.email, req.body.fullname];

  db.query(checkExistingTeacherSql, checkExistingTeacherValues, async (err, result) => {
    if (err) {
      return res.status(500).json({
        Message: "Error checking existing teacher",
      });
    }

    const existingTeacherCount = result[0].count;

    if (existingTeacherCount > 0) {
      
      return res.status(400).json({
        Message: "A teacher with the provided email or name already exists.",
      });
    }

    
    const teacherSql = "INSERT INTO tbl_users(`name`,`address`,`date_of_birth`,`username`,`email`,`password`,`role`) VALUES(?,?,?,?,?,?,?) ";
    const plaintextPassword = req.body.password;
    const hashedPassword = await bcrypt.hash(plaintextPassword, 10);
    const teacherValues = [
      req.body.fullname,
      req.body.address,
      req.body.birthday,
      req.body.username,
      req.body.email,
      hashedPassword,
      req.body.selectedRole,
    ];

    db.query(teacherSql, teacherValues, (err, result) => {
      if (err) {
        return res.status(500).json({
          Message: "Error Adding Teacher",
        });
      }

      const teacherId = result.insertId;

      const subjectIds = req.body.subject_id;

      if (subjectIds && subjectIds.length > 0) {
        const insertSubjectSql = "INSERT INTO teachers_subjects (`teacher_id`, `subject_id`) VALUES ? ";
        const insertSubjectValues = subjectIds.map((subjectId) => [teacherId, subjectId]);

        db.query(insertSubjectSql, [insertSubjectValues], (err) => {
          if (err) {
            return res.status(500).json({
              Message: "Error Adding Subjects for Teacher",
            });
          }

          return res.json({
            Message: "Teacher and Subjects Added Successfully",
          });
        });
      } else {
        return res.json({
          Message: "Teacher Added Successfully (No Subjects Selected)",
        });
      }
    });
  });
});

app.post('/add-subject', (req, res) => {
  const { subjectName, subjectCode, time, day, room } = req.body;

  const checkSql = 'SELECT * FROM subjects WHERE subject_name = ? AND subject_code = ?';
  db.query(checkSql, [subjectName, subjectCode], (checkErr, checkResult) => {
    if (checkErr) {
      console.error('Error checking subject:', checkErr);
      return res.status(500).json({ message: 'Error checking subject' });
    }

    if (checkResult.length > 0) {
      return res.json({ message: 'Subject already on the list' });
    } else {
      const insertSql = 'INSERT INTO subjects (subject_name, subject_code, time, day, room, created_at, updated_at) VALUES (?, ?, ?, ?, ?, NOW(), NOW())';
      db.query(insertSql, [subjectName, subjectCode, time, day, room], (insertErr, insertResult) => {
        if (insertErr) {
          console.error('Error adding subject:', insertErr);
          return res.status(500).json({ message: 'Error adding subject' });
        }

        return res.json({ message: 'Subject added successfully' });
      });
    }
  });
});

app.delete('/teachers/:teacherId', (req, res) => {
  const teacherId = req.params.teacherId;
  const deleteTeacherQuery = 'DELETE FROM tbl_users WHERE user_id = ?';

  db.query(deleteTeacherQuery, [teacherId], (err, results) => {
    if (err) {
      console.error('Error deleting teacher:', err);
      res.status(500).json({ message: 'Error deleting teacher' });
    }

    
    res.json({ message: 'Teacher deleted successfully' });
  });
});




// server port 8081 for nodejs express
app.listen(8081, () => {
  console.log("port 8081 FOR SERVER TESTING ")
});
