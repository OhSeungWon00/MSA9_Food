package food.utils;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtils {
	
	// Bcrypt 암호화 알고리즘으로 암호화
	public static String encoded(String password) {
		return BCrypt.hashpw(password, password)
	}
	
	
	
	// 비밀번호 검증
	
	
	
	
	
	

}
