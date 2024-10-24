package food.Service;

import food.DTO.newBrand;

public interface newBrandService {
	
	// 매장등록
	public int newbrand(newBrand newbrand);
	
	// 매장검색
	public newBrand search(newBrand newbrand);
	
	// 매장수정
	public int brandUpdate(newBrand newBrand);
	

}
