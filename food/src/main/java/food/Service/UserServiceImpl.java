package food.Service;

import java.util.List;
import com.alohaclass.jdbc.dto.Page;
import com.alohaclass.jdbc.dto.PageInfo;
import food.DAO.UserAuthDAO;
import food.DAO.UserDAO;
import food.DTO.User;
import food.utils.PasswordUtils;

public class UserServiceImpl implements UserService {

    UserDAO userDAO = new UserDAO();
    UserAuthDAO userAuthDAO = new UserAuthDAO();

    @Override
    public int signup(User user) {
        int result = 0;

        String encodedPassword = PasswordUtils.encoded(user.getPassword());
        user.setPassword(encodedPassword);

        try {
            result = userDAO.insert(user, "userId", "password", "name", "email", "phone", "birth");
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (result == 0) {
            return 0;
        }

        return result;
    }

    @Override
    public User login(User user) {
        String userId = user.getUserId();
        User selectedUser = null;
        System.out.println("userId : " + userId);
        try {
            selectedUser = userDAO.select(userId);
            System.out.println(userDAO.select(userId));
            System.out.println(userId);
            System.out.println(selectedUser);
            System.out.println("강사님 지원요청");
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 회원 가입이 안 된 아이디
        if (selectedUser == null)
            return null;

        // 비밀번호 일치 여부 확인
        String password = selectedUser.getPassword(); // 가입된 비밀번호 (암호화)
        String loginPassword = user.getPassword(); // 로그인 시도한 비밀번호

        boolean check = PasswordUtils.check(loginPassword, password);

        // 비밀번호 불일치
        if (!check)
            return null;

        // 로그인 성공
        return selectedUser;
    }

    @Override
    public int delete(User user) {
        int result = 0;
        try {
            result = userDAO.delete(user.getUserId());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    // 여러 사용자 삭제 메서드 추가
    public int deleteUsers(String[] userIds) {
        int totalDeleted = 0;
        for (String userId : userIds) {
            User user = User.builder().userId(userId).build();
            totalDeleted += delete(user); // 각 사용자 삭제 시도
        }
        return totalDeleted; // 삭제된 사용자 수 반환
    }

    @Override
    public List<User> list() {
        List<User> list = null;
        try {
            list = userDAO.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public User select(String userId) {
        User user = null;
        try {
            user = userDAO.select(userId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override 
    public int update(User user) {
    	System.out.println("user : " + user);
    	
        int result = 0;
        try {
            result = userDAO.update(user,"name","email","phone","birth");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    
    // 회원 삭제 리스트 페이징
    @Override
    public PageInfo<User> page(int page) {
        Page pageObj = new Page();
        pageObj.setPage(page);
        System.out.println("------------------------------");
        System.out.println(pageObj);
        PageInfo<User> pageInfo = null;
        try {
            pageInfo = userDAO.page(pageObj);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pageInfo;
    }

}
    
    

    
    
    
    
    
   
    
    
    
    

