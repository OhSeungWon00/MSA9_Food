package food.DAO;

import java.sql.ResultSet;

import com.alohaclass.jdbc.dao.BaseDAOImpl;

import food.DTO.Files;
import food.DTO.Menu;

public class FileDAO extends BaseDAOImpl<Files> {

	@Override
	public Files map(ResultSet rs) throws Exception {
	    Files file = new Files();
	    file.setFileId(rs.getLong("file_id")); // fileId
	    file.setId(rs.getString("id")); // id
	    file.setPTable(rs.getString("p_table")); // pTable
	    file.setPNo(rs.getLong("p_no")); // pNo
	    file.setFileType(rs.getString("file_type")); // fileType
	    file.setFileName(rs.getString("file_name")); // fileName
	    file.setFilePath(rs.getString("file_path")); // filePath
	    file.setFileSize(rs.getLong("file_size")); // fileSize
	    file.setCreatedAt(rs.getTimestamp("created_at")); // createdAt
	    file.setUpdatedAt(rs.getTimestamp("updated_at")); // updatedAt
	    return file;
	}
	@Override
	public String pk() {
		return "file_id";
	}

	@Override
	public String table() {
		return "files";
	}
	
}
