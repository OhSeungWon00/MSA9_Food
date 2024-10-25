package food.DAO;

import java.sql.ResultSet;

import com.alohaclass.jdbc.dao.BaseDAOImpl;

import food.DTO.UserAuth;
public class UserAuthDAO extends BaseDAOImpl<UserAuth> {

	@Override
	public UserAuth map(ResultSet arg0) throws Exception {
		UserAuth userAuth = new UserAuth();
		userAuth.setUserId(rs.getString("userId"));
		userAuth.setAuth(rs.getString("Auth"));
		return userAuth;
	}

	@Override
	public String pk() {
		return "no";
	}

	@Override
	public String table() {
		return "user_auth";
	}
}
