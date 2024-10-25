package food.DTO;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Review {
	private long reviewId; // review_id에 대응
	private int rating; // rating에 대응
	private String content; // content에 대응
	private Timestamp regDate; // reg_date에 대응
	private Timestamp updDate; // upd_date에 대응
	private long brandId; // brand_id에 대응
	private long userId; // userId에 대응
	private long fileId;
}