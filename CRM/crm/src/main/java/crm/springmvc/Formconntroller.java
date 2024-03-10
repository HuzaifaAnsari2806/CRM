package crm.springmvc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import crm.model.User;
import crm.service.Myservice;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class Formconntroller {
	
	@Autowired
	public Myservice myservice;
	
	
	@RequestMapping("/")
	public String display(Model m) {
		List<User> user=myservice.diplUsers();
		m.addAttribute("data", user);
		return "home";
	}
	
//	Adding customer
	@RequestMapping("/AddCustomer")
	public String addUser(Model m) {
		
		return "add-customer";
	}
	
	
//	Handling Customer
	@RequestMapping(path = "/handler-user",method = RequestMethod.POST)
	public RedirectView formhandler(@ModelAttribute User user,HttpServletRequest request,Model m) {
		RedirectView redirectView= new RedirectView();
		m.addAttribute("title", "Add Customer");
		this.myservice.createUser(user);
		System.out.println(user);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView ;
	}
	
//	Delete Customer
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteUser(@PathVariable("userId") int id,HttpServletRequest request) {
		this.myservice.removeUser(id);
		RedirectView redirectView= new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView ;
	}
	
//	Update Customer
	@RequestMapping("/update/{userId}")
	public String updateUser(@PathVariable("userId") int id,Model m) {
		User user=myservice.displUser(id);
		m.addAttribute("data",user);
		return "update-user";
	}
	
}
