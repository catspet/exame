package com.infosyst.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.infosyst.bin.Usser;

public class userDao {
public static Connection getConnection(){
	Connection con=null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/infosyst?zeroDateTimeBehavior=convertToNull","root","1234");
		}catch (Exception e){System.out.println(e);}
		return con;
	}
	
	
	public static int save(Usser u)
	{
		int status=0;
		try
		{
			Connection con =getConnection();
			PreparedStatement ps =con.prepareStatement(
					"insert into register(name,apellidop,apellidom,email,ingresosmensuales,fechaingreso,edad) values (?,?,?,?,?,?,?)");
			
			ps.setString(1,u.getName());
			ps.setString(2,u.getApellidop());
			ps.setString(3,u.getApellidom());
			ps.setString(4,u.getEmail());
			ps.setInt(5,u.getIngresosmensuales());
			ps.setString(6,u.getFechaingreso());
			ps.setInt(7,u.getEdad());
			status=ps.executeUpdate();
			
		}catch (Exception e){System.out.println(e);}
		return status;
	}
	 
	public static int update(Usser u)
	{
		int status=0;
		try
		{
			Connection con =getConnection();
			PreparedStatement ps =con.prepareStatement(
					"update register set name=?,apellidop=?, apellidom=?,email=?,ingresosmensuales=?,ingresos_mensuales=?,edad=? where id=?");
			
			ps.setString(1,u.getName());
			ps.setString(2,u.getApellidop());
			ps.setString(3,u.getApellidom());
			ps.setString(4,u.getEmail());
			ps.setInt(5,u.getIngresosmensuales());
			ps.setString(6,u.getFechaingreso());
			ps.setInt(7,u.getEdad());
			status=ps.executeUpdate();
			
			status=ps.executeUpdate();
			
		}catch (Exception e){System.out.println(e);}
		return status;
	}
	
	
	public static int delete(Usser u)
	{
		int status=0;
		try
		{
			Connection con =getConnection();
			PreparedStatement ps =con.prepareStatement(
					"delete from register where id=?");
			
			
			ps.setInt(1,u.getId());
			status=ps.executeUpdate();
			
		}catch (Exception e){System.out.println(e);}
		return status;
	}
	
	/////////   Mostrar registros en *ver Usuarios* //////////
	public static List<Usser> getAllRecords()
	{
		
		List<Usser>list=new ArrayList<Usser>();
		
		try
		{
			Connection con =getConnection();
			PreparedStatement ps =con.prepareStatement(
					"select * from register");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
			
			Usser u = new Usser();	
			
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));	
			u.setApellidop(rs.getString("apellido_paterno"));
			u.setApellidom(rs.getString("apellido_materno"));
			u.setEmail(rs.getString("email"));
			u.setFechaingreso(rs.getString("fechaingreso"));
			u.setIngresosmensuales(rs.getInt("ingresosmensuales"));
			u.setEdad(rs.getInt("edad"));

			
			list.add(u);
			}
		}catch (Exception e){System.out.println(e);}
		return list;
	}
	
	
	
	public static Usser getRecordById(int id)
	{
		
		Usser u= null;
		
		try
		{
			Connection con =getConnection();
			PreparedStatement ps =con.prepareStatement(
					"select * from register where id=?");
			
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
			
		    u=new Usser();
			
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setApellidop(rs.getString("apellido_paterno"));
			u.setApellidom(rs.getString("apellido_materno"));
			u.setEmail(rs.getString("email"));

			
			
			}
		}catch (Exception e){System.out.println(e);}
		return u;
	}
	
	
	
	
	

}
