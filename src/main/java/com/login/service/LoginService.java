package com.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.login.model.Login;
import com.login.rep.LoginRepository;

@Service
public class LoginService {

	@Autowired
	private LoginRepository loginRepository;

	public List<Login> getAllUsers() {
		
		List<Login> allUsers = loginRepository.findAll();
		
		return allUsers;
	}
	
	public Login addUser(Login user) {
		
		Login adduser = loginRepository.save(user);
		
		return adduser;
	}

	public Login getUserById(int id) {
	    Login getUser = loginRepository.findById(id).get();
		return getUser;
	}

	public Login updateUser(Login login,int id) {
		// TODO Auto-generated method stub
		login.setId(id);
		Login saveUser = loginRepository.save(login);
		
		return saveUser;
	}

	public void deleteUserById(int id) {
		// TODO Auto-generated method stub
		loginRepository.deleteById(id);
	}
}
