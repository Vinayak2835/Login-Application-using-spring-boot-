package com.login.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.login.model.Login;
import com.login.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	List<Login> list = new ArrayList<Login>();

	@RequestMapping("/welcome")
	public String welcome(Model model) {

		Login login = new Login();
		model.addAttribute("user", login);
		return "welcome";
	}

	@PostMapping("/login")
	public String hello(Login login, Model model) {
		System.out.println(login);

		List<Login> users = loginService.getAllUsers();

		for (Login log : users) {

			if (log.getUserName().equalsIgnoreCase(login.getUserName())
					&& log.getPassword().equalsIgnoreCase(login.getPassword())) {

				//System.out.println(log + "exists");
				// model.addAttribute("user", log);
				return "redirect:/hel";
			}

			else {
				System.out.println("user not exists");
			}

		}

		return "redirect:/welcome";
    }

	@GetMapping("/hel")
	public String hello(Model model) {

		List<Login> allUsers = loginService.getAllUsers();

		model.addAttribute("users", allUsers);

		return "hello";
	}

	@GetMapping("/addUser")
	public String addUser(Model model) {

		Login login = new Login();

		model.addAttribute("user", login);

		return "add-admin";
	}

	@PostMapping("/saveUser")
	public String saveUser(Login login) {
		System.out.println(login);
		
		if(login.getId() == 0 ) {
			Login addUser = loginService.addUser(login);
		}
		else {
			Login updateUser = loginService.updateUser(login,login.getId());
		}
		
		
		//Login addUser = loginService.addUser(login);

		return "redirect:/hel";
	}
	
	@GetMapping("/updateUser")
	public String updateUser(@RequestParam("userId") int id, @ModelAttribute("user") Login login) {
		
		Login getUser =  loginService.getUserById(id);
		
		System.out.println(getUser);
		
		login.setId(getUser.getId());
		
		login.setUserName(getUser.getUserName());
		login.setPassword(getUser.getPassword());
		
		return "add-admin";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") int id) {
		
		loginService.deleteUserById(id);
		
		return "redirect:/hel";
	}
}
