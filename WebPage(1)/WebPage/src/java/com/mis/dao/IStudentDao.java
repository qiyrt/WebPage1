package com.mis.dao;

import com.mis.model.Student;
import com.mis.util.Pagination;
import java.util.List;

public interface IStudentDao {
    public List<Student> getAllStudent(Pagination pagination);
    public Student getStudent(String sno);
    public boolean findStudent(String sno);
    public boolean insertStudent(Student stu);
    public boolean updateStudent(Student stu);
    public boolean deleteStudent(String sno);    
}
