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

	@Override
	public newBrand search(newBrand newbrand) {
		String name = newbrand.getName();
		newBrand selectedBrandName = null;
		
			try {
				selectedBrandName = newbrandDAO.select(name); // pk 출력
			} catch (Exception e) {
				System.out.println("호출오류");
				e.printStackTrace();
			}
			return selectedBrandName;
	}
	
	@Override
	public int brandUpdate(newBrand newBrand) {
		int result = 0;
		
		try {
			result = newbrandDAO.update(newBrand);
			System.out.println(newBrand.getName());
			System.out.println("update 성공");
			
		} catch (Exception e) {
			System.out.println("업뎃오류");
			e.printStackTrace();
		}
		
		if(result == 0) {
			return 0;
		}		
		
		return result;
		
	}
	




}