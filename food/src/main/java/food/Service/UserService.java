package food.Service;

import java.util.List;

import com.alohaclass.jdbc.dto.PageInfo;

import food.DTO.User;

public interface UserService {
	
	// 회원가입
	public int signup(User user);
	
	// 로그인
	public User login(User user);

	// 사용자 관리 (유저 계정 삭제)
	public int delete(User user);
	
	// 회원목록
	public List<User> list();
	
	// 회원목록 - 페이지
	public PageInfo<User> page(int page);
	
	// 유저 조회
	public User select(String userId);
	
	// 유저 계정 수정
	public int update(User user);
	

	
	
	
	
}


