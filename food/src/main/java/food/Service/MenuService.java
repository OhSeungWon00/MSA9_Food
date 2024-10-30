package food.Service;

import java.util.List;

import food.DTO.Menu;

public interface MenuService {
	// 게시글 목록
	List<Menu> list();
	
	// 메뉴 조회
	Menu select(Long menuId);

	// 메뉴 등록
	int insert(Menu menu);
	
	// 메뉴 수정
	int update(Menu menu);
	
	// 메뉴 삭제
	int delete(Long menuId);

	// 가게별 게시글 목록
	List<Menu> list2(Menu menu);
}
