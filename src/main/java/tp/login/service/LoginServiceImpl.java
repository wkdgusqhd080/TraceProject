package tp.login.service;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tp.domain.Email_Auth;
import tp.domain.Member;
import tp.login.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginMapper loginMapper;
	
	
	public int loginCheck(String mem_email, String mem_pwd) {
		Member m = loginMapper.selectMember(mem_email);
		
		if(m == null) {
			return LoginSet.NO_ID; // 이메일 없음
		}else {
			String pwdDb = m.getMem_pwd();
			if(pwdDb != null) pwdDb = pwdDb.trim();
			boolean hashPwd = BCrypt.checkpw(mem_pwd, m.getMem_pwd());
			if(hashPwd == false) {
				return LoginSet.NO_PWD; //비밀번호 불일치
			}else {
				return LoginSet.PASS; //로그인 성공
			}	
		}
	}
	public Member getMemberInfo(String mem_email) {
		return loginMapper.selectMember(mem_email);
	}
	@Override
	public boolean getKakaoMemberExist(String mem_email) {
		String exist = loginMapper.selectKakaoMember(mem_email);
		if(exist != null) {//존재 할시
			return true; 
		}else {//존재 안할시
			return false;
		}
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
	@Override
	public int emailAuthCheck(String mem_email) {
		Member m = loginMapper.selectMember(mem_email);
		int mem_state = (int)m.getMem_state();
		if(mem_state == LoginSet.NO_EMAIL_AUTH_MEM_STATE) {//mem_state 체크
			int email_uuid = loginMapper.selectEmailUuid(mem_email);
			return email_uuid;
		}else {//mem_state != 3
			return LoginSet.OK_EMAIL_AUTH;
		}
	}
	
}
