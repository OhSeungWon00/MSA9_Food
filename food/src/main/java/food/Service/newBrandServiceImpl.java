package food.Service;

import food.DAO.newBrandDAO;
import food.DTO.newBrand;

public class newBrandServiceImpl implements newBrandService{
	
	newBrandDAO newbrandDAO = new newBrandDAO();
	
	@Override
	public int newbrand(newBrand newbrand) {
		int result = 0;
		
		try {
			result = newbrandDAO.insert(newbrand, "name", "location", "phone", "content");
		} catch (Exception e) {
			System.out.println("생성오류");
			e.printStackTrace();
		}
		if(result == 0) {
			return 0;
		}		
		
		return result;
	}


}
