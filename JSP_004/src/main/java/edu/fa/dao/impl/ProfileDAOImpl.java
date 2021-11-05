package edu.fa.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.fa.dao.ProfileDAO;
import edu.fa.entities.Account;
import edu.fa.entities.Profile;
import edu.fa.utils.DBContext;
import edu.fa.utils.HibernateUtils;
import edu.fa.utils.SQLCommand;

public class ProfileDAOImpl implements ProfileDAO {
	private Session session;
	private Transaction transaction;

	@Override
	public Profile getProfileById(int profileId) throws HibernateException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();// bắt đầu
			Profile profile = session.get(Profile.class, profileId);
			transaction.commit();// đẩy code lên
			return profile;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public boolean updateProfile(Profile profile) throws HibernateException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Query<Profile> query = session.createQuery("UPDATE Profile SET description=:description, firstName=:firstName, lastName=:lastName, phone=:phone WHERE id=:id");
			query.setParameter("description", profile.getDescription());
			query.setParameter("firstName", profile.getFirstName());
			query.setParameter("lastName", profile.getLastName());
			query.setParameter("phone", profile.getPhone());
			query.setParameter("id", profile.getId());
			int row = query.executeUpdate();
			System.out.println(row);
			transaction.commit();
			if (row > 0)
				return true;
			else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public boolean addProfile(Profile profile) throws HibernateException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();// bắt đầu
			session.save(profile);
			transaction.commit();// đẩy code lên
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	public static void main(String[] args) throws HibernateException, SQLException {
		ProfileDAO profileDAO = new ProfileDAOImpl();
		Profile profile = new Profile(1, "Vuong", "Nguyen", "0948854268", "Fpt University");
//		System.out.println(profileDAO.getFinalProfile());;
	}

}
