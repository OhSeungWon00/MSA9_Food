package food.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class newBrand {
	private Long brandId;
	private String name;
	private String location;
	private String phone;
	private String content;
}