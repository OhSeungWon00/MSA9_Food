package food.Service;

import java.util.List;

import com.alohaclass.jdbc.dto.PageInfo;

import food.DTO.Review;

public interface ReviewService {
	
	// 리뷰작성
	public int newreview(Review review);
	// 전체리뷰 리스트
	public List<Review> list();
	// 페이징
	public PageInfo<Review> page(int page);
	// 리뷰삭제
	public int delete(Review review);
}
