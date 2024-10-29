package food.DAO;

import java.sql.ResultSet;

import com.alohaclass.jdbc.dao.BaseDAOImpl;

import food.DTO.Review;

public class ReviewDAO extends BaseDAOImpl<Review>{

	@Override
	public Review map(ResultSet arg0) throws Exception {
		Review review = new Review();
		review.setReview_id(rs.getLong("review_id"));
		review.setRating(rs.getInt("rating"));
		review.setContent(rs.getString("content"));
		review.setRegdate(rs.getDate("reg_date"));
		review.setUserId(rs.getString("userId"));
		review.setName(rs.getString("name"));
		return review;
	}

	@Override
	public String pk() {
		return "review_id";
	}

	@Override
	public String table() {
		// TODO Auto-generated method stub
		return "review";
	}

}
