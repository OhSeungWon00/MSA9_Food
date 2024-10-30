package food.Service;

import java.util.List;

import com.alohaclass.jdbc.dto.PageInfo;

import food.DTO.newBrand;


public interface newBrandService {
	
	// 매장등록
	public int newbrand(newBrand newbrand);
	
	// 매장검색
	public newBrand search(newBrand newbrand);
	
	// 매장검색
	public newBrand idsearch(newBrand newbrand);
	
	// 매장수정
	public int brandUpdate(newBrand newBrand);

	// 매장 조회
	public List<newBrand> list();
	
	// 매장 삭제
	public int delete(newBrand newBrand);
	

	public PageInfo<newBrand> page(int page);
}
