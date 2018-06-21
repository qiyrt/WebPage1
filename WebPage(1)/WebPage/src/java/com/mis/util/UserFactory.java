/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mis.util;

import com.mis.dao.IUserDao;
import com.mis.dao.impl.UserDaoImpl;

/**
 *
 * @author Administrator
 */
public class UserFactory {
    public static IUserDao getUserDao(){
		return new UserDaoImpl();
	}
}
