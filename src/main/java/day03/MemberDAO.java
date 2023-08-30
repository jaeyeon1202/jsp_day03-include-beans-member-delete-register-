package day03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	
	
	public MemberDAO() { //기본생성자 느낌
		con = DBConnect.getConnect();
		System.out.println("생성자 : "+con);
	}
	
	public ArrayList<MemberDTO> getList() {

		ArrayList<MemberDTO> list = new ArrayList<>();
		System.out.println("getList 호출");
		
		String sql = "select * from members";
		try {
			ps = con.prepareStatement(sql); //명령어(퀴리문) 전송
			rs = ps.executeQuery(); //쿼리문 결과 받기
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int delete(String id) {
		
		System.out.println("delete 호출");
		
		String sql = "delete from members where id='"+id+"'";
		//String sql = "delete from member where id=?";
		
		int result=0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
