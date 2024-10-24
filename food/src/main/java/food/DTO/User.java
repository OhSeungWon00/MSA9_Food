package food.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
	private String user_id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String birth;
	private String intro;
	
}