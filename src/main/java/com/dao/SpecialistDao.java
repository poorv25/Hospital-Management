package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.entity.Specialist;

public class SpecialistDao {

	private Connection conn;

	public SpecialistDao(Connection conn) {
		super();
		this.conn = conn;
	}
			public boolean addSpecialist(String spec)
			{
				boolean f=false;
				try {
					String sql="insert into specialist(spec_name) values(?)";
					PreparedStatement ps=conn.prepareStatement(sql);
					ps.setString(1, spec);
					int i = ps.executeUpdate();
					if (i == 1) {
						f = true;
					}
				}catch(Exception e)
				{
					e.printStackTrace();
				}
				return f;
			}
			
			public List<Specialist> getAllspecialist()
			{
				List<Specialist> List=new ArrayList<Specialist>();
				Specialist s=null;
				try {
					 String sql="select * from specialist";
					  
				}catch(Exception e)
				{
					e.printStackTrace();
				}
				return List;
			}
}
