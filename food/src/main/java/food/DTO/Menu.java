package food.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Menu {
	private Long menuId;
	private String name;
	private String price;
	private String comment;
	private String brandId;
	private String fileId;
}
