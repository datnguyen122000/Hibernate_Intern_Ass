package edu.fa.utils;

public class SQLCommand {
	public final static String GET_ACCOUNT="SELECT * FROM ACCOUNT WHERE EMAIL LIKE ? and [PASSWORD] LIKE ?";
	public final static String ADD_ACCOUNT="INSERT INTO ACCOUNT " + "VALUES(?,?,?)";
	public final static String ADD_CONTENT="INSERT INTO Content VALUES(?,?,?,?,?)";
	public final static String VIEW_CONTENTS="SELECT * FROM Content WHERE AccountID=?";
	public final static String UPDATE_PROFILE="UPDATE Profile SET FirstName=?," + " Lastname=?,Phone=?,[Description]=? where AccountId=?";
	public final static String ADD_PROFILE="INSERT INTO [Profile] VALUES(?,?,?,?,?)";
}
