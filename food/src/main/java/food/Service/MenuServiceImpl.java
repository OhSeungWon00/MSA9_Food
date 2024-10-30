package food.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import food.DAO.MenuDAO;
import food.DTO.Menu;

public class MenuServiceImpl implements MenuService{
	
	private MenuDAO menuDAO = new MenuDAO();
	
	@Override
	public List<Menu> list(){
		List<Menu> menuList = null;
		try {
			menuList = menuDAO.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return menuList;
	}
	
	// 등록
	@Override
	public int insert(Menu menu) {
		int result = 0;
		try {
			result = menuDAO.insert(menu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 수정
	@Override
	public int update(Menu menu) {
		int result = 0;
		System.out.println("update : " + menu);
		try {
			result = menuDAO.update(menu);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 삭제
	@Override
	public int delete(Long menuId) {
		int result = 0;
		try {
			result = menuDAO.delete(menuId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 조회
	@Override
	public Menu select(Long menuId) {
		Menu menu = null;
		System.out.println("메뉴 조회 중.... menuId : " + menuId);
		try {
			menu = menuDAO.select(menuId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return menu;
	}

	// 가게별 메뉴리스트 조회
	@Override
	public List<Menu> list2(Menu menu) {
		String brandId = menu.getBrandId();
		List<Menu> listby = null;
		
		try {
			Map<Object, Object> where = new HashMap<Object, Object>();
			where.put("brand_id", brandId);
			listby = menuDAO.listBy(where);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listby;
	}
}
