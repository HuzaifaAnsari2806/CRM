package crm.springmvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import crm.model.User;
import crm.service.Myservice;

@Controller
public class Formconntroller {
	
	@Autowired
	public Myservice myservice;
	
	
	@RequestMapping("/")
	public String display() {
		return "home";
	}
	
	@RequestMapping("/AddCustomer")
	public String addUser(Model m) {
		m.addAttribute("title", "Add Customer");
		return "add-customer";
	}
	
	@RequestMapping(path = "/AddCustomer",method = RequestMethod.POST)
	public String formhandler(@ModelAttribute User user,Model model) {
		this.myservice.createUser(user);
		return "Result" ;
		
	}
	
}
