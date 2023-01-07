package ro.unitbv.mi.javaweb.controller;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



class Response {
	public Response(String status) {
		this.status = status;
	}
	
	public String status;
}


class Person {
	public String username;
	public String password;
	public String name;
	public String phone;
	public String favorite;
	public String email;	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFavorite() {
		return favorite;
	}

	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Person [username=" + username + ", password=" + password + ", name=" + name + ", phone=" + phone
				+ ", favorite=" + favorite + ", email=" + email + "]";
	}
}



@Controller
public class ExampleController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Spring 3 MVC Hello World");
		return "page";

	}

	@RequestMapping(value = "/form-homework", method = RequestMethod.GET)
	public String rootFormHomework(ModelMap model) {
		return "form-homework";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String printForm(ModelMap model) {
		return "form";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String submitForm(@RequestBody Person person) {
		System.out.println(person);
		return "form";
	}


	
	@RequestMapping(value = "/stooges/list")
	public @ResponseBody List<String> listStooges() {
		String[] array = {"Larry", "Moe", "Curley"};
		
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		return Arrays.asList(array);
	}
	
	@RequestMapping(value = "/stooges/find/{name:.+}", method = RequestMethod.GET)
	public ResponseEntity<Response> findStooge(@PathVariable("name") String name) {
		Set<String> set = new HashSet<String>();
		set.add("Larry"); 
		set.add("Moe");
		set.add("Curley");
		
		if (!set.contains(name))
			return new ResponseEntity<Response>(new Response("the searched person is not here"), HttpStatus.NOT_FOUND);
		
		return new ResponseEntity<Response>(new Response("found"), HttpStatus.OK);
	}

}
