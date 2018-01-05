package com.niit.DaoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.Dao.ProductDao;
import com.niit.model.Product;

@Repository("productDao")
public  class ProductDaoImpl implements ProductDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDaoImpl(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	public void insertProduct(Product product)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.persist(product);
		session.getTransaction().commit();
	}
	public List<Product> retrieve()
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		List<Product> li= session.createQuery("from Product").list();
		session.getTransaction().commit();
		return li;
	}
	public Product findByPID(int pid)
	{
		Session session=sessionFactory.openSession();
		Product p=null;
		try
		{
			session.beginTransaction();
			p=(Product) session.get(Product.class,pid);
			session.getTransaction().commit();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return p;
	}

	
	public List<Product> getProdByCatId(int cid)
	{
		Session session=sessionFactory.openSession();
		List<Product> prod=null;
		try
		{
			session.beginTransaction();
			prod=session.createQuery("from product where cid="+cid).list();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return prod;
	}
	public void update(Product p)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(p);
		session.getTransaction().commit();
	}
	public void deleteProd(int pid)
	{
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		
		Product p=(Product)session.get(Product.class,pid);
		session.delete(p);
		session.getTransaction().commit();
	}

	
	
}
