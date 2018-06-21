/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.dao;

import com.mis.model.User;

/**
 *
 * @author Administrator
 */
public interface IUserDao {
    public boolean findStudent(String username,String password,String userGrade);
    public boolean insertStudent(User user);
}
