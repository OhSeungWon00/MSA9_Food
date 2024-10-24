package food.utils;

import org.mindrot.jbcrypt.BCrypt;


/**
 * 
 * 암호화 유틸
 * 
 */



public class PasswordUtils {
	
	// Bcrypt 암호화 알고리즘으로 암호화
	public static String encoded(String password) {
		// SALT : 암호 값에 소금 뿌려버리기~
		return BCrypt.hashpw(password, BCrypt.gensalt());
	}
	
	
	
	// 비밀번호 검증
	public static boolean check(String password, String encodedPassword) {
		return BCrypt.checkpw(password, encodedPassword);
	}

}
