package crm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.service.ServiceRegistry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import crm.model.User;

@Repository
public class MyDao {

	@Autowired
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sf){
		
		this.sessionFactory = sf;
	}
	

	@Transactional
	public void saveUser(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		
	}
	@SuppressWarnings("deprecation")
	@Transactional
	public List<User> getUsers(){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from User ");
		List<User> user=q.getResultList();
		return user;
	}
	@Transactional
	public void deleteUser(int uid) {
		Session session=this.sessionFactory.getCurrentSession();
		User user=session.load(User.class, uid);
		session.delete(user);
	}
	@Transactional
	public User getUser(int pid) {
		Session session=this.sessionFactory.getCurrentSession();
		 return session.get(User.class, pid);
	}
}
