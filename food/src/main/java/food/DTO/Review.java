package food.DTO;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Review {
	private Long review_id; //리뷰번호 : 오토인크리먼트(AI)
	private int rating; //평점
	private String content; // 내용
	private Date regdate; // 업로드시간
	private String userId; // 작성자 ID
	private String name; // 브랜드이름
}
