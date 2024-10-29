package food.Service;

import java.util.List;

import food.DAO.ReviewDAO;
import food.DTO.Review;

public class ReviewServiceImpl implements ReviewService{
	
	ReviewDAO reviewDAO = new ReviewDAO();

	@Override
	public int newreview(Review review) {
		int result = 0;
		
		try {
			result = reviewDAO.insert(review, "rating","content","reg_date","userId","name");
		} catch (Exception e) {
			System.out.println("작성오류");
			e.printStackTrace();
		}
		if(result == 0) {
			return 0;
		}
		// TODO Auto-generated method stub
		return result;
	}

	@Override
	public List<Review> list() {
		List<Review> list = null;
		
		try {
			list = reviewDAO.list();
		} catch (Exception e) {
			System.out.println("list 생성오류");
			e.printStackTrace();
		}
		return list;
	}

}
