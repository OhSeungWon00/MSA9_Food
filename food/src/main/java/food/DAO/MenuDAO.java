package food.DAO;

import java.sql.ResultSet;

import com.alohaclass.jdbc.dao.BaseDAOImpl;

import food.DTO.Menu;

public class MenuDAO extends BaseDAOImpl<Menu> {

	@Override
	public Menu map(ResultSet arg) throws Exception {
		Menu menu = new Menu();
		menu.setMenuId(rs.getLong("menu_id"));
		menu.setName(rs.getString("name"));
		menu.setPrice(rs.getString("price"));
		menu.setComment(rs.getString("comment"));
		menu.setBrandId(rs.getString("brand_id"));
		menu.setFileId(rs.getString("file_id"));
		return menu;
	}

	@Override
	public String pk() {
		return "menu_id";
	}

	@Override
	public String table() {
		return "menu";
	}
	
}
