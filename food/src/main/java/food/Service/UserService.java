package food.Service;

import food.DTO.User;

public interface UserService {
	
	// 회원가입
	public int signup(User user);
	
	// 로그인
	public User login(User user);
	

}
