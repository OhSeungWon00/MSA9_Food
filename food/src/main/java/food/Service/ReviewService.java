package food.Service;

import java.util.List;

import food.DTO.Review;

public interface ReviewService {
	
	// 리뷰작성
	public int newreview(Review review);
	
	public List<Review> list();
}
