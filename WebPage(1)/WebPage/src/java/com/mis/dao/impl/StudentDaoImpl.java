package com.mis.dao.impl;

import com.mis.dao.IStudentDao;
import com.mis.model.Student;
import com.mis.util.DatabaseBean;
import com.mis.util.Pagination;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl implements IStudentDao {

    Connection conn = null;
    PreparedStatement psmt = null;
    ResultSet rs = null;

    @Override
    public List<Student> getAllStudent(Pagination pagination) {
        List<Student> students = new ArrayList<Student>();

        try {
            //统计总记录数
            conn = DatabaseBean.getConnection();
            String sql = "select count(*) as counts from student";
            psmt = conn.prepareStatement(sql);
            rs = psmt.executeQuery();
            rs.next();
            pagination.setCountSize(rs.getInt("counts"));
            //求指定显示的记录数
            int perPage = pagination.getPageSize();
            int start = (pagination.getPageNo() - 1) * perPage + 1;
            int end = pagination.getPageNo() * perPage;
            //小于等于该页最大条数，大于等于该页最小条数
            sql = "SELECT * FROM(SELECT ROWNUM NO,s.* FROM "
                    + "(SELECT * FROM student ORDER BY sno ASC) s "
                    + "WHERE ROWNUM<=?) WHERE NO >=?";
            psmt = conn.prepareStatement(sql);
            psmt.setInt(1, end);
            psmt.setInt(2, start);
            rs = psmt.executeQuery();
            while (rs.next()) {
                Student stu = new Student();
                stu.setSno(rs.getString("sno"));
                stu.setSname(rs.getString("sname"));
                stu.setSsex(rs.getString("ssex"));
                stu.setSage(rs.getInt("sage"));
                stu.setSdept(rs.getString("sdept"));
                stu.setSavgGrade(rs.getDouble("savgGrade"));
                stu.setPhoto_url(rs.getString("photo_url"));
                students.add(stu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseBean.close(rs, psmt, conn);
        }
        return students;
    }

    @Override
    public Student getStudent(String sno) {
        Student stu = null;
        try {
            conn = DatabaseBean.getConnection();
            String sql = "select * from student where sno=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, sno);
            rs = psmt.executeQuery();
            if (rs.next()) {
                stu = new Student();
                stu.setSno(rs.getString("sno"));
                stu.setSname(rs.getString("sname"));
                stu.setSsex(rs.getString("ssex"));
                stu.setSage(rs.getInt("sage"));
                stu.setSdept(rs.getString("sdept"));
                stu.setSavgGrade(rs.getDouble("savgGrade"));
                stu.setPhoto_url(rs.getString("photo_url"));
            }
            return stu;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseBean.close(rs, psmt, conn);
        }
        return null;
    }

    @Override
    public boolean findStudent(String sno) {
        try {
            conn = DatabaseBean.getConnection();
            String sql = "select * from student where sno=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, sno);
            rs = psmt.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            DatabaseBean.close(rs, psmt, conn);
        }
        return false;
    }

    @Override
    public boolean insertStudent(Student stu) {
        try {
            conn = DatabaseBean.getConnection();
            if (stu.getPhoto().available() > 0) {
                String sql = "insert into student(sno,sname,ssex,sage,sdept,spicture,photo_url) values(?,?,?,?,?,?,?)";
                psmt = conn.prepareStatement(sql);
                psmt.setString(1, stu.getSno());
                psmt.setString(2, stu.getSname());
                psmt.setString(3, stu.getSsex());
                psmt.setInt(4, stu.getSage());
                psmt.setString(5, stu.getSdept());
                psmt.setBinaryStream(6, stu.getPhoto(), stu.getPhoto().available());
                psmt.setString(7, stu.getPhoto_url());
            } else {
                String sql = "insert into student(sno,sname,ssex,sage,sdept,photo_url) values(?,?,?,?,?,?)";
                psmt = conn.prepareStatement(sql);
                psmt.setString(1, stu.getSno());
                psmt.setString(2, stu.getSname());
                psmt.setString(3, stu.getSsex());
                psmt.setInt(4, stu.getSage());
                psmt.setString(5, stu.getSdept());
                psmt.setString(6, stu.getPhoto_url());
            }
            psmt.executeUpdate();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseBean.close(rs, psmt, conn);
        }
        return false;
    }

    @Override
    public boolean updateStudent(Student stu) {
        try {
            conn = DatabaseBean.getConnection();
            if (stu.getPhoto().available() > 0) {
                String sql = "update student set sname=?,ssex=?,sage=?,sdept=?,spicture=?,photo_url=? where sno=?";
                psmt = conn.prepareStatement(sql);
                psmt.setString(1, stu.getSname());
                psmt.setString(2, stu.getSsex());
                psmt.setInt(3, stu.getSage());
                psmt.setString(4, stu.getSdept());
                psmt.setBinaryStream(5, stu.getPhoto(), stu.getPhoto().available());
                psmt.setString(6, stu.getPhoto_url());
                psmt.setString(7, stu.getSno());
            } else {
                String sql = "update student set sname=?,ssex=?,sage=?,sdept=? where sno=?";
                psmt = conn.prepareStatement(sql);
                psmt.setString(1, stu.getSname());
                psmt.setString(2, stu.getSsex());
                psmt.setInt(3, stu.getSage());
                psmt.setString(4, stu.getSdept());
                psmt.setString(5, stu.getSno());
            }
            psmt.executeUpdate();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            DatabaseBean.close(null, psmt, conn);
        }
        return false;
    }

    @Override
    public boolean deleteStudent(String sno) {
        try {
            conn = DatabaseBean.getConnection();
            String sql = "delete from student where sno=?";
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, sno);
            psmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseBean.close(rs, psmt, conn);
        }
        return false;
    }
}
