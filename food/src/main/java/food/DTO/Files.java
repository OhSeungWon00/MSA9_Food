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
public class Files {
	private long fileId;
	private String id;
	private String pTable;
	private long pNo;
	private String fileType;
	private String fileName;
	private String filePath;
	private long fileSize;
	private Timestamp createdAt;
	private Timestamp updatedAt;
}
