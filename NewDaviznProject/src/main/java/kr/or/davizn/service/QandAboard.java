package kr.or.davizn.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.davizn.model.dto.QandAboardDTO;
import kr.or.davizn.model.interfaces.QandAboardDAO;

@Service
public class QandAboard {
	
	@Autowired
	private SqlSession SqlSession;

	public List<QandAboardDTO> notices(String pg, String f, String q) throws ClassNotFoundException, SQLException {

		// 게시판 기본 설정(기본값 처리)/////////////
		int page = 1;
		String field = "TITLE";
		String query = "%%";
		//////////////////////////////////////
		if (pg != null && pg.equals("")) {
			page = Integer.parseInt(pg);
		}
		if (f != null && f.equals("")) {
			field = f;
		}
		if (q != null && q.equals("")) {
			query = q;
		}

		QandAboardDAO QandAboardDao = SqlSession.getMapper(QandAboardDAO.class);
		List<QandAboardDTO> list = QandAboardDao.getNotices(page, field, query);
		return list;
	}

	// 게시글 상세보기
	public QandAboardDTO noticeDetail(String boardseq) throws ClassNotFoundException, SQLException {

		QandAboardDAO QandAboardDao = SqlSession.getMapper(QandAboardDAO.class);
		QandAboardDTO notice = QandAboardDao.getNotice(boardseq);
		return notice;
	}

	// 게시글 등록
	public String noticeReg(QandAboardDTO n, HttpServletRequest request) throws Exception {
		QandAboardDAO QandAboardDao = SqlSession.getMapper(QandAboardDAO.class);
			
		QandAboardDao.insert(n);

		return "redirect:notice.htm";
	}

	// 게시글 삭제
	public String noticeDel(String boardseq) throws ClassNotFoundException, SQLException {

		QandAboardDAO QandAboardDao = SqlSession.getMapper(QandAboardDAO.class);
		QandAboardDao.delete(boardseq);

		return "redirect:notice.htm";
	}

	//게시글 수정
	public QandAboardDTO noticeEdit(String boardseq) throws ClassNotFoundException, SQLException {

		QandAboardDAO QandAboardDao = SqlSession.getMapper(QandAboardDAO.class);
		QandAboardDTO notice = QandAboardDao.getNotice(boardseq);

		return notice;
	}
	
	//게시글 수정 확인!
	public String noticeEdit(QandAboardDTO n, HttpServletRequest request)
			throws ClassNotFoundException, SQLException, IOException {

		// Mybatis 적용
		QandAboardDAO QandAboardDao = SqlSession.getMapper(QandAboardDAO.class);
		QandAboardDao.update(n);

		return "redirect:noticeDetail.htm?seq=" + n.getBoardseq();

	}
}
