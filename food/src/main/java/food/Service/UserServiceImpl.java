package food.Service;

import java.util.List;

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
			result = userDAO.insert(user, "userId", "password", "name", "email", "phone");
			
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

	@Override
	public User login(User user) {
		String userId = user.getUserId();
		User selectedUser = null;
		System.out.println("userId : " + userId);
		try {
			selectedUser = userDAO.select(userId);
			System.out.println(userDAO.select(userId));
			System.out.println(userId);
			System.out.println(selectedUser);
			System.out.println("강사님 지원요청");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 회원 가입이 안 된 아이디
		if( selectedUser == null ) 
			return null;
		
		// 비밀번호 일치 여부 확인
		String password = selectedUser.getPassword();	// 가입되 비번 (암호화)
		String loginPassword = user.getPassword();		// 로그인 시도한 비번
		
		// * BCrypt.checkpw(로그인 비밀번호, 암호된 비밀번호);
		boolean check = PasswordUtils.check(loginPassword, password);
		
		// 비밀번호 불일치
		if( !check )
			return null;
		// 로그인 성공
		return selectedUser;
	}

	@Override
	public int delete(User user) {
		int result = 0;
		try {
			result = userDAO.delete(user.getUserId());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	
	
	@Override
	public List<User> list() {
		List<User> list = null;
		try {
			list = userDAO.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
}













