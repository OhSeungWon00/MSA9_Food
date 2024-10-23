package food.Service;

import food.DAO.UserAuthDAO;
import food.DAO.UserDAO;
import food.DTO.User;
import food.DTO.UserAuth;
import food.utils.PasswordUtils;

public class UserServiceImpl implements UserService{
	
	UserDAO userDAO = new UserDAO();
	UserAuthDAO userAuthDAO = new UserAuthDAO();

	@Override
	public int signup(User user) {
		int result = 0;
		
		
		String enecodedPassword = PasswordUtils.encoded(user.getPassword());
		user.setPassword(enecodedPassword);
		
		
		try {
			result = userDAO.insert(user, "user_id", "password", "name", "email", "phone");
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(result == 0) {
			return 0;
		}
		/*
		 * int authResult = 0; UserAuth userAuth = new UserAuth();
		 * userAuth.setUser_id(user.getUser_id()); userAuth.setAuth("ROLE_USER"); try {
		 * authResult = userAuthDAO.insert(userAuth, "user_id", "auth"); } catch
		 * (Exception e) { e.printStackTrace(); }
		 */
		return result;
	}
}
