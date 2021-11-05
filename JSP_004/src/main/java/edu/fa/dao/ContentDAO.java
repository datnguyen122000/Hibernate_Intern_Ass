package edu.fa.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;

import edu.fa.entities.Content;

public interface ContentDAO {

	boolean addContent(Content content) throws HibernateException;

	List<Content> viewContent(int accountId) throws SQLException;

}