package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.Dao.UserDao;
import com.niit.model.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	

  public UserDaoImpl()
  {
	  
  }
	public UserDaoImpl(SessionFactory sessionFactory) {
    
		this.sessionFactory = sessionFactory;
	}
	//@Transactional
	public void insertUser(User user) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();
		session.saveOrUpdate(user);
		session.getTransaction().commit();
	}
	
	
	 public List<User> getAllUsers() {
	        Session session = sessionFactory.openSession();
	        Query query = session.createQuery("from User");
	        List<User> usersDetail = query.list();

	        return usersDetail;
	    }
	@Override
	public void removeUser(int uid) {
		Session session = sessionFactory.openSession();
        Query query = session.createQuery("from User where userId="+uid);
        List<User> usersDetail = query.list();
        if(usersDetail!=null && !usersDetail.isEmpty())
        {
        	System.out.println(usersDetail.get(0).getUserId());
        session.delete(usersDetail.get(0));
        }
        System.out.println("user is deleted");
	}
	@Override
	public void modifyUser(User user) {
		
	}
}