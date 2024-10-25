package food.DAO;

import java.sql.ResultSet;

import com.alohaclass.jdbc.dao.BaseDAOImpl;

import food.DTO.User;

public class UserDAO extends BaseDAOImpl<User> {

	@Override
	public User map(ResultSet arg0) throws Exception {
		User user = new User();
		user.setUser_id(rs.getString("user_id"));
		user.setPassword(rs.getString("password"));
		user.setName(rs.getString("name"));
		user.setEmail(rs.getString("email"));
		user.setPhone(rs.getString("phone"));
		user.setBirth(rs.getString("birth"));
		user.setIntro(rs.getString("intro"));
		return user;
	}

	@Override
	public String pk() {
		return "user_id";
	}

	@Override
	public String table() {
		return "user";
	}
	
	
	
	

	
	
}