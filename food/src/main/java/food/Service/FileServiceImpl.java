package food.Service;

import food.DAO.FileDAO;
import food.DTO.Files;

public class FileServiceImpl implements FileService {
	
	FileDAO fileDAO = new FileDAO();

	@Override
	public int upload(Files file) {
		int result = 0;
		
		try {
			result = fileDAO.insert(file);
			System.out.println("DB 파일 데이터 등록 성공!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	

}
