package food.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alohaclass.jdbc.dto.Page;
import com.alohaclass.jdbc.dto.PageInfo;

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

	@Override
	public PageInfo<Review> page(int page) {
		Page pageObj = new Page();
		pageObj.setPage(page);
		pageObj.setSize(7);
		PageInfo<Review> pageInfo = null;
		try {
			pageInfo = reviewDAO.page(pageObj);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pageInfo;
	}

	@Override
	public int delete(Review review) {
		int result = 0;
		try {
			result = reviewDAO.delete(review.getReview_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List<Review> list2(Review review) {
		String name = review.getName();
		List<Review> listby = null;
		System.out.println("name : " + name);
		System.out.println("listby : " + listby);
		
		try {
			Map<Object, Object> where = new HashMap<Object, Object>();
			where.put("name", name);
			listby = reviewDAO.listBy(where);
		} catch (Exception e) {
			System.out.println("리스트오류");
			e.printStackTrace();
		}
		return listby;
	}

}
