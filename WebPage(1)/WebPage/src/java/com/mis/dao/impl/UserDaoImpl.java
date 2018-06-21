/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.dao.impl;

import com.mis.dao.IUserDao;
import com.mis.model.User;
import com.mis.util.DatabaseBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Administrator
 */
public class UserDaoImpl implements IUserDao{
    Connection conn = null;
    PreparedStatement psmt = null;
    ResultSet rs = null;
    
    @Override
    public boolean findStudent(String username, String password, String userGrade) {
       try {
            conn = DatabaseBean.getConnection();
            String sql = null;
            if("用户".equals(userGrade)){
                 sql = "select * from user where username=? and password=? ";
            }
            if("管理员".equals(userGrade)){
                 sql = "select * from manager where username=? and password=? ";
            }
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, username);
            psmt.setString(2, password);
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
    public boolean insertStudent(User user) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
