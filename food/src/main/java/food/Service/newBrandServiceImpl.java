package food.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		System.out.println(" name : " + name);
		
			try {
				Map<Object, Object> where = new HashMap<Object, Object>();
				where.put("name", name);
				selectedBrandName = newbrandDAO.selectBy(where); // pk 출력
				System.out.println("-- : " + selectedBrandName);
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
			System.out.println("Brand -- " + newBrand);
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

	@Override
	public List<newBrand> list() {
		List<newBrand> list = null;
		try {
			list = newbrandDAO.list();
		} catch (Exception e) {
			System.out.println("list 생성오류");
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int delete(newBrand newbrand) {
		int result = 0;
		try {
			result = newbrandDAO.delete(newbrand.getName() );
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return result;
	}
	




}
