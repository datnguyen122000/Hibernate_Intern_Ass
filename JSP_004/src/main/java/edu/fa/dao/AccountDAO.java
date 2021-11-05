package edu.fa.dao;

import java.sql.SQLException;

import org.hibernate.HibernateException;

import edu.fa.entities.Account;

public interface AccountDAO {

	Account getAccount(String email, String password) throws HibernateException;

	boolean updateAccount(Account account) throws HibernateException;
	
	boolean addAccount(Account account) throws HibernateException;
 
}