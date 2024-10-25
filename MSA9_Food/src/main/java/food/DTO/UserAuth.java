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
public class UserAuth {
	private Long id;
	private String userId;
	private String auth;
	private Timestamp createAt;
	private Timestamp updatedAt;
}
