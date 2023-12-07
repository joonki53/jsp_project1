package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {

		// dao : 데이터베이스 접근 객체의 약자

		private Connection conn; // connection:db에접근하게 해주는 객체

		private ResultSet rs;

		

		// mysql 처리부분
		public BbsDAO() {
			// 생성자를 만들어준다.

			try {

				String dbURL = "jdbc:mysql://localhost:3306/project_db?useUnicode=true&characterEncoding=utf8"; 
				String dbID = "root";
				String dbPassword = "qwer";
				//Class.forName("com.mysql.jdbc.Driver"); //예전버전
				Class.forName("com.mysql.cj.jdbc.Driver"); //최신버전

				conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

			} catch (Exception e) {

				e.printStackTrace();

			}

		}
		public int getCount() {
			String SQL = "select count(*) from bbs";
			try {
				PreparedStatement pstmt=conn.prepareStatement(SQL);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1);
				}			
			} catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
		}

		

		//현재의 시간을 가져오는 함수

		public String getDate() { 

			String SQL = "SELECT NOW()";

			try {

				PreparedStatement pstmt = conn.prepareStatement(SQL);

				rs = pstmt.executeQuery();

				if(rs.next()) {

					return rs.getString(1);

				}

			} catch (Exception e) {

				e.printStackTrace();

			}

			return ""; //데이터베이스 오류

		}

		

		//bbsID 게시글 번호 가져오는 함수

			public int getNext() { 

				String SQL = "SELECT bbsID FROM bbs ORDER BY bbsID DESC";

				try {

					PreparedStatement pstmt = conn.prepareStatement(SQL);

					rs = pstmt.executeQuery();

					if(rs.next()) {

						return rs.getInt(1) + 1;

					}

					return 1;//첫 번째 게시물인 경우

				} catch (Exception e) {

					e.printStackTrace();

				}

				return -1; //데이터베이스 오류

			}

			

			//실제로 글을 작성하는 함수

			public int write(String bbsTitle, String userID, String bbsContent, String bbsGame) {

				String SQL = "INSERT INTO bbs VALUES(?, ?, ?, ?, ?, ?,?)";
				try {
					PreparedStatement pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, getNext());
					pstmt.setString(2, bbsTitle);
					pstmt.setString(3, userID);
					pstmt.setString(4, getDate());
					pstmt.setString(5, bbsContent);
					pstmt.setInt(6,1);	
					pstmt.setString(7, bbsGame);
					return pstmt.executeUpdate();			

				} catch (Exception e) {
					e.printStackTrace();
				}

				return -1; //데이터베이스 오류

			}
			public boolean nextPage (int pageNumber) {
				String SQL = "SELECT * FROM bbs WHERE bbsID < ? and bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10";
				ArrayList<Bbs> list = new ArrayList<Bbs>();
				try {
					PreparedStatement pstmt = conn.prepareStatement(SQL);
					pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
					rs = pstmt.executeQuery();
					if (rs.next()) {
						return true;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}

				return false;

				}
				public ArrayList<Bbs> getList(int pageNumber){
					String SQL = "SELECT * FROM bbs WHERE bbsID < ? and bbsAvailable = 1 ORDER BY bbsID DESC LIMIT 10";
					ArrayList<Bbs> list = new ArrayList<Bbs>();
					try {
						PreparedStatement pstmt = conn.prepareStatement(SQL);
						pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
						rs = pstmt.executeQuery();
						while (rs.next()) {
							Bbs bbs = new Bbs();
							bbs.setBbsID(rs.getInt(1));
							bbs.setBbsTitle(rs.getString(2));
							bbs.setUserID(rs.getString(3));
							bbs.setBbsDate(rs.getString(4));
							bbs.setBbsContent(rs.getString(5));
							bbs.setBbsAvailable(rs.getInt(6));
							bbs.setBbsGame(rs.getString(7));
							list.add(bbs);
							}

					} catch (Exception e) {
						e.printStackTrace();
					}
					return list;

					}

				public Bbs getBbs(int bbsID) {
					String SQL = "SELECT * FROM bbs WHERE bbsID = ?";
					try {
						PreparedStatement pstmt = conn.prepareStatement(SQL);
						pstmt.setInt(1, bbsID);
						rs = pstmt.executeQuery();
						if (rs.next()) {
							Bbs bbs = new Bbs();
							bbs.setBbsID(rs.getInt(1));
							bbs.setBbsTitle(rs.getString(2));
							bbs.setUserID(rs.getString(3));
							bbs.setBbsDate(rs.getString(4));
							bbs.setBbsContent(rs.getString(5));
							bbs.setBbsAvailable(rs.getInt(6));
							bbs.setBbsGame(rs.getString(7));
							return bbs;
						}
					} catch (Exception e) {
					e.printStackTrace();
					}
					return null;
					}
				public ArrayList<Bbs> getSearch(String searchField, String searchText){//특정한 리스트를 받아서 반환
				      ArrayList<Bbs> list = new ArrayList<Bbs>();
				      String SQL ="select * from bbs WHERE "+searchField.trim();
				      try {
				            if(searchText != null && !searchText.equals("") ){//
				                SQL +=" LIKE '%"+searchText.trim()+"%' order by bbsID desc limit 10";
				            }
				            PreparedStatement pstmt=conn.prepareStatement(SQL);
							rs=pstmt.executeQuery();//select
				         while(rs.next()) {
				            Bbs bbs = new Bbs();
				            bbs.setBbsID(rs.getInt(1));
				            bbs.setBbsTitle(rs.getString(2));
				            bbs.setUserID(rs.getString(3));
				            bbs.setBbsDate(rs.getString(4));
				            bbs.setBbsContent(rs.getString(5));
				            bbs.setBbsAvailable(rs.getInt(6));
				            bbs.setBbsGame(rs.getString(7));
				            list.add(bbs);//list에 해당 인스턴스를 담는다.
				         }         
				      } catch(Exception e) {
				         e.printStackTrace();
				      }
				      return list;//ㄱㅔ시글 리스트 반환
				   }

				//수정 메서드

				public int update(int bbsID, String bbsTitle, String bbsContent) 
				{
					String SQL = "UPDATE bbs SET bbsTitle = ?, bbsContent = ? WHERE bbsID = ?";
					try {
							PreparedStatement pstmt = conn.prepareStatement(SQL);
							pstmt.setString(1, bbsTitle);
							pstmt.setString(2, bbsContent);
							pstmt.setInt(3, bbsID);
							return pstmt.executeUpdate();
					} catch (Exception e) {
						e.printStackTrace();
					}
					return -1; // 데이터베이스 오류
				}			
				//삭제 메서드
				public int delete(int bbsID) {
					//bbsAvailable 값을 0 으로 바꿔버린다. 추후 복구 할수도있으니...
					//사용자입장에서는 삭제된 상황으로 만들어 버린다.
					String SQL = "UPDATE bbs SET bbsAvailable = 0 WHERE bbsID = ?";
					try {
						PreparedStatement pstmt = conn.prepareStatement(SQL);
						pstmt.setInt(1, bbsID);
						return pstmt.executeUpdate();
					} catch (Exception e) {
						e.printStackTrace();
					}
					return -1; // 데이터베이스 오류
				}
	}

