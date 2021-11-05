package edu.fa.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.internal.build.AllowSysOut;

import edu.fa.dao.AccountDAO;
import edu.fa.dao.ProfileDAO;
import edu.fa.entities.Account;
import edu.fa.entities.Content;
import edu.fa.entities.Profile;
import edu.fa.utils.DBContext;
import edu.fa.utils.HibernateUtils;
import edu.fa.utils.SQLCommand;

public class AccountDAOImpl implements AccountDAO {
	private Session session;
	private Transaction transaction;

	@Override
	public Account getAccount(String email, String password) throws HibernateException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Query<Account> query = session.createQuery(
					"FROM Account a WHERE a.email like :email AND a.password LIKE :password", Account.class);
			query.setParameter("email", email);
			query.setParameter("password", password);
			try {
				Account account = query.getSingleResult();
				transaction.commit();
				return account;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		} finally {
			session.close();
		}
	}

	@Override
	public boolean updateAccount(Account account) throws HibernateException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.update(account);
			transaction.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean addAccount(Account account) throws HibernateException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();// bắt đầu
			AccountDAO accountDAO=new AccountDAOImpl();
			Account checkExit=accountDAO.getAccount(account.getEmail(), account.getPassword());
			System.out.println(checkExit);
			if(checkExit==null) {
				session.save(account);
				transaction.commit();// đẩy code lên
				return true;
			}else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public static void main(String[] args) throws Exception {
		AccountDAO accountDAO = new AccountDAOImpl();
//		Account account=accountDAO.getAccount("DatNQ30@fsoft.com", "Da99168$");
//		System.out.println(account);
//		ProfileDAO profileDAO=new ProfileDAOImpl();
//		Profile profile =profileDAO.getProfileById(3);
//		System.out.println(profile);
//		account.setProfile(profile);
//		accountDAO.updateAccount(account);
		Account account = new Account("Hung", "Hung@gmail.com", "123qwe!");
		System.out.println(accountDAO.addAccount(account));
//		accountDAO.addAccount(account);
	}

}
