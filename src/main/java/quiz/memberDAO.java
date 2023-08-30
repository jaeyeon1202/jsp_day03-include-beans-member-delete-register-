package quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

public class memberDAO {
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public memberDAO() {
		con = DBConnect.getConnect();
		System.out.println("quiz 생성자: "+con);
	}
	
	public int loginCheck(String id, String pwd) {
		System.out.println("logincheck 호출");
		
		String sql = "select * from members where id='"+id+"'";
		 
		int result=0; //아이디 없음
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) { //아이디가 있어야 while문으로 들어올수 있음.
				if(pwd.equals(rs.getString("pwd"))) {
					result=1; //로그인 성공
				}else {	
					result=2; //비밀번호 틀림
				}	
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}//loginCheck
	
	public ArrayList<memberDTO> getList(){
		
		ArrayList<memberDTO> list = new ArrayList<>();
		System.out.println("getList 호출");
		
		String sql = "select * from members";
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				memberDTO dto = new memberDTO();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}//getList
	
	public memberDTO getInfo(String id){
		memberDTO dto = new memberDTO();
		System.out.println("getInfo 호출");
		String sql = "select * from members where id='"+id+"'";
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}//getInfo
	
	public int register(String id, String pwd, String name, String addr, String tel) {
		System.out.println("register 호출");
		
		String sql = "insert into members values(?, ?, ? ,?, ?)";
		int result =0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, pwd);
			ps.setString(3, name);
			ps.setString(4, addr);
			ps.setString(5, tel);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}//register
	
	public int modify(String id, String name, String addr, String tel) {
		System.out.println("modify 호출");
		System.out.println(id);
		String sql = "update members set name='"+name+"', addr='"+addr+"', tel='"+tel+"' where id='"+id+"'";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}//modify
	
	public int delete(String id) {
		System.out.println("delete 실행");
		
		String sql = "delete from members where id='"+id+"'";
		int result = 0;
		
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}










































































