package food.DAO;

import java.sql.ResultSet;
import java.util.List;

import com.alohaclass.jdbc.dao.BaseDAOImpl;
import food.DTO.newBrand;

public class newBrandDAO extends BaseDAOImpl<newBrand> {

	@Override
	public newBrand map(ResultSet arg0) throws Exception {
		newBrand newbrand = new newBrand();
		newbrand.setBrandId(rs.getLong("brand_id"));
		newbrand.setName(rs.getString("name"));
		newbrand.setLocation(rs.getString("location"));
		newbrand.setPhone(rs.getString("phone"));
		newbrand.setContent(rs.getString("content"));
		return newbrand;
	}

	@Override
	public String pk() {
		return "brand_id";
	}

	@Override
	public String table() {
		return "brand";
	}
	
	
	public void findByPage(int start, int pageSize) {
	    String sql = "SELECT * FROM brand LIMIT ?, ?";
	}
}