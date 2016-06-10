package kr.or.davizn.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.davizn.model.dto.QandAboardDTO;
import kr.or.davizn.service.QandAboard;

@Controller
public class QandAboardController {
	
	@Autowired
	private QandAboard QandAboardservice;
	
	//글목록보기
	@RequestMapping("QnA.dvn")
	public String notices(String pg , String f , String q , Model model) throws ClassNotFoundException , SQLException {
  	
		List<QandAboardDTO> list = QandAboardservice.notices(pg, f, q);
		model.addAttribute("list", list); 
		return "QnA.qna-list";
	}
    //글상세보기
	 @RequestMapping("Qnadetail.dvn")
    public String noticeDetail(String seq , Model model ) throws ClassNotFoundException, SQLException{

		 QandAboardDTO notice = QandAboardservice.noticeDetail(seq);
		 model.addAttribute("notice", notice);
		 return "QnA.qna-detail";
	
	 }

	// 글등록 화면 처리
	 @RequestMapping("qnaWrite.dvn")
	public String noticeReg() {
		 System.out.println("qna컨트롤");
		 return  "QnA.qna-write";
	   
	 }

	// 글등록 처리(실제 글등록 처리)
	 @RequestMapping(value = "QnaReg.dvn", method = RequestMethod.POST)
	public String noticeReg(QandAboardDTO n, HttpServletRequest request)
	   throws IOException, ClassNotFoundException, SQLException {
		 
		 String url = "redirect:qna-list";
		 try{
			 url = QandAboardservice.noticeReg(n, request);
		 }catch(Exception e){
			System.out.println(e.getMessage()); 
		 }
		 
		 return url;
		
	 }

	// 글삭제하기
	 @RequestMapping("QnaDel.dvn")
	public String noticeDel(String seq) throws ClassNotFoundException,
	   SQLException {
		 
		String url = QandAboardservice.noticeDel(seq);
		return url; 
	 }
     
	 //글수정하기 (두가지 처리 : 화면(select) , 처리(update))
	 //글수정하기 (수정하기 화면 , 수정처리)
	 //주소같고 처리(GET , POST) 처리
	 @RequestMapping(value = "QnAEdit.dvn", method = RequestMethod.GET)
	 public String noticeEdit(String boardseq, Model model)
	   throws ClassNotFoundException, SQLException {
	  
		 QandAboardDTO notice = QandAboardservice.noticeEdit(boardseq);
	    model.addAttribute("notice", notice);
	    return "null";
	 }

	 //게시판 실제 수정처리
	 @RequestMapping(value = "QnAEdit.dvn", method = RequestMethod.POST)
	 public String noticeEdit(QandAboardDTO n ,HttpServletRequest request) throws ClassNotFoundException,
	   SQLException, IOException {

		String url = QandAboardservice.noticeEdit(n, request);
		return url;
	 }

}
