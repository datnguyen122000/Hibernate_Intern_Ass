package edu.fa.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import edu.fa.dao.ContentDAO;
import edu.fa.entities.Account;
import edu.fa.entities.Content;
import edu.fa.utils.DBContext;
import edu.fa.utils.HibernateUtils;
import edu.fa.utils.SQLCommand;

public class ContentDAOImpl implements ContentDAO {
	private Session session;
	private Transaction transaction;

	@Override
	public boolean addContent(Content content) throws HibernateException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();// bắt đầu
			session.save(content);
			transaction.commit();// đẩy code lên
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public List<Content> viewContent(int accountId) throws SQLException {
		try {
			session = HibernateUtils.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Query<Content> query = session.createQuery("SELECT a.contents FROM Account a WHERE a.id=:id");
			query.setParameter("id", accountId);
			try {
				List<Content> contents = query.getResultList();

				// set time view
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm");
				for (Content content : contents) {
					String time = sdf.format(content.getCreatedDate());
					String timeList[] = time.split(" ");
					content.setTimeView(timeList[0] + "<br>" + timeList[1]);
				}
				transaction.commit();
				return contents;
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		} finally {
			session.close();
		}
	}

	public static void main(String[] args) throws SQLException {
		ContentDAO contentDAO = new ContentDAOImpl();
		List<Content> contents = contentDAO.viewContent(2);
		for (Content content : contents) {
			System.out.println(content);
		}
		System.out.println(contents);
	}
}
