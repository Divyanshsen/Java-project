package models;

import java.sql.*;

public class Address{
	private Integer addressId;
	private User user;
	private String address;
	private City city;
	private String pin;
	private Boolean defaultAddress;

	public static final boolean DEFAULT_ADDRESS = true;
	public static final boolean NON_DEFAULT_ADDRESS = false;

	public Address(User user,String address,City city,String pin){
		this.user = user;
		this.address = address;
		this.city = city;
		this.pin = pin;
	}


	//################ Methods #####################
	public boolean saveAddress(){
		Connection con = null;
		Boolean flag = false;

		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecomdb?user=root&password=1234");

			String query = "insert into addresses (user_id,address,city_id,pin,default_address) value (?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1,user.getUserId());
			ps.setString(2,address);
			ps.setInt(3,city.getCityId());
			ps.setString(4,pin);
			ps.setBoolean(5,DEFAULT_ADDRESS);

			int res = ps.executeUpdate();

			if(res==1){
				flag = true;
			}

		}catch(SQLException|ClassNotFoundException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}

		return flag;
	}


	public void setDefaultAddress(Boolean defaultAddress){
		this.defaultAddress = defaultAddress;
	}

	public Boolean isDefaultAddress(){
		return defaultAddress;
	}

	public void setPin(String pin){
		this.pin = pin;
	}

	public String getPin(){
		return pin;
	}

	public void setCity(City city){
		this.city = city;
	}

	public City getCity(){
		return city;
	}

	public void setAddress(String address){
		this.address = address;
	}

	public String getAddress(){
		return address;
	}

	public void setUser(User user){
		this.user = user;
	}

	public User getUser(){
		return user;
	}

	public void setAddressId(Integer addressId){
		this.addressId = addressId;
	}

	public Integer getAddressId(){
		return addressId;
	}
}