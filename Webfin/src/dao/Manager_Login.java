package dao;

import java.sql.Connection;

import connect.DBConnect;
import controller.Login;
import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Manager_Login {

	private Connection conn;
	
	/*Resultset rs;// thêm private để giảm dung lượn
	Preparedstatement stmt;*/

	public void Magana_Login(Login login,User user){
	
	//initComponents();
	try{
		conn=DBConnect.getConnection();// ConectionFT.getconection();
		
	}catch(Exception e)
	{	
		
	}
	//labelhello.settext(user.getuser_type)//
	//showuser();//redirect
	
	}

/*	public Magana_Login(){
	initComponents();
	try{
		conn=ConectionFT.getconection();
		


	}catch(Exception e)
	{	
	}
	//showuser();
	
	}*/
}
