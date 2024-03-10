package crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import crm.dao.MyDao;
import crm.model.User;

@Service
public class Myservice {

	@Autowired
	private MyDao mydao;
	public void createUser(User user) {
		mydao.saveUser(user);
	}
	public void removeUser(int uid) {
		mydao.deleteUser(uid);
	}
	public List<User> diplUsers() {
		return mydao.getUsers();
	}
	public User displUser(int uid) {
		return mydao.getUser(uid);
	}
	
}
