package edu.fa.dao;

import java.sql.SQLException;

import org.hibernate.HibernateException;

import edu.fa.entities.Profile;

public interface ProfileDAO {

	Profile getProfileById(int accountId) throws HibernateException;

	boolean updateProfile(Profile profile) throws HibernateException;

	boolean addProfile(Profile profile) throws HibernateException;
}