package spring.sts.car;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.mapper.QnaMapper;
import spring.model.notice.NoticeDTO;
import spring.model.qna.QnaDTO;
import spring.utility.car.Utility;

@Controller
public class QnaController {

	@Autowired
	private QnaMapper qna_mapper;
	
	@RequestMapping("/qna/listQna")
	public String list(HttpServletRequest request) {
		String word=Utility.checkNull(request.getParameter("word"));//검색어 입력시 받는 문자열 저장
		
		String col=Utility.checkNull(request.getParameter("col"));
		
		if(col.equals("total")){
			word="";
		}
		
		int nowPage=1; //보고있는 페이지 
		if(request.getParameter("nowPage")!=null){
			nowPage=Integer.parseInt(request.getParameter("nowPage"));
		}
		
		int recordPerPage=5;
		
		int sno=((nowPage-1)*recordPerPage)+1;
		int eno=nowPage*recordPerPage;  
				
		Map map=new HashMap();
		map.put("col", col);
		map.put("word", word);
		
		map.put("sno",sno);
		map.put("eno",eno);
		
		List<QnaDTO> list = qna_mapper.list(map);
		
		int total=qna_mapper.total(map);
		String paging=Utility.paging(total, nowPage, recordPerPage, col, word);
		
		request.setAttribute("list", list);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		request.setAttribute("paging", paging);
		request.setAttribute("qna_mapper", qna_mapper);
		
		return "/qna/listQna";
	}
	
	@GetMapping("/qna/readQna")
	public String read(int qnum, Model model) {
		qna_mapper.upViewcnt(qnum);
		QnaDTO dto=qna_mapper.read(qnum);
		model.addAttribute("dto", dto);
		//model객체를 이용해서 view로 데이터 전달
		
		String qcontent=dto.getQcontent().replaceAll("\r\n", "<br>");
		dto.setQcontent(qcontent);
		
		return "/qna/readQna";
	}
	
	@GetMapping("/qna/createQna")
	public String create() {
		return "/qna/createQna";
	}
	
	@PostMapping("/qna/createQna")
	public String create(QnaDTO dto, HttpServletRequest request, Model model) {
		String basePath=request.getRealPath("/storage/qna");
		int filesize = (int) dto.getQfnameMF().getSize();
		
		if(filesize>0) {
			dto.setQfname(Utility.saveFileSpring(dto.getQfnameMF(), basePath));
		}
		int flag=qna_mapper.create(dto);
		
		if(flag==1) {
			return "redirect:/qna/listQna";
		}else {
			model.addAttribute("str","error");
			return "/qna/preProcNotice";
		}
		
	}
	
	@GetMapping("/qna/updateQna")
	public String update(int qnum, Model model) {
		model.addAttribute("dto", qna_mapper.read(qnum));
		
		return "/qna/updateQna";
	}
	
	@PostMapping("/qna/updateQna")
	public String update(QnaDTO dto, HttpServletRequest request, Model model, String qoldfile) {
		String basePath=request.getRealPath("/storage/qna");
		
		Map<String, String> map=new HashMap<String, String>();
		map.put("qnum", String.valueOf(dto.getQnum()));
		map.put("qpasswd", dto.getQpasswd());
		
		int pflag=qna_mapper.passCheck(map);
		
		dto.setQfsize((int)dto.getQfnameMF().getSize());
		
		if(pflag==1) {
			if(dto.getQfsize()>0) {
				Utility.deleteFile(basePath, qoldfile);
				dto.setQfname(Utility.saveFileSpring(dto.getQfnameMF(), basePath));
			}
		}
		int flag=qna_mapper.update(dto);
		if(flag==1) {
			model.addAttribute("pflag", pflag);
			model.addAttribute("flag", flag);
			return "redirect:/qna/listQna";
		}else {
			model.addAttribute("str", "error");
			return "/qna/preProcQna";
		}
	}
	
	@GetMapping("/qna/replyQna")
	public String qna_reply(int qnum, Model model) {
		model.addAttribute("dto",qna_mapper.reply_read(qnum));
		
		return "/qna/replyQna";
	}
	
	@PostMapping("/qna/replyQna")
	public String qna_reply(QnaDTO dto, Model model, HttpServletRequest request) {
		String basePath=request.getRealPath("/storage/qna");
		dto.setQfsize((int)dto.getQfnameMF().getSize());
		
		if(dto.getQfsize()>0) {
			dto.setQfname(Utility.saveFileSpring(dto.getQfnameMF(), basePath));
		}
		Map map=new HashMap();
		map.put("qref", dto.getQref());
		map.put("qansnum", dto.getQansnum());
		
		System.out.println("ref : "+dto.getQref());
		System.out.println("ansnum : "+dto.getQansnum());
		
		qna_mapper.reply_ansnum(map);
		
		int flag=qna_mapper.reply_create(dto);
		
		if(flag==1) {
		
			model.addAttribute("col", request.getParameter("col"));
			model.addAttribute("word", request.getParameter("word"));
			model.addAttribute("nowPage", request.getParameter("nowPage"));
			
			return "redirect:/qna/listQna";//model을 쓰면 redirect 하는 곳까지 정보를 담아준다
		}else {
			model.addAttribute("str","error");
			return "/qna/preProcQna";
		}
	}
	
	@GetMapping("/qna/deleteQna")
	public String delete(int qnum, Model model) {
		int flag=qna_mapper.checkRef(qnum);
		model.addAttribute("flag", flag);
		
		return "/qna/deleteQna";
	}
	
	@PostMapping("/qna/deleteQna")
	public String delete(HttpServletRequest request, @RequestParam Map<String, String> map) {
		String basePath=request.getRealPath("/storage/qna");
		
		int pflag=qna_mapper.passCheck(map);
		int flag=0;
		
		if(pflag==1) {
			flag=qna_mapper.delete(Integer.parseInt(map.get("qnum")));
			Utility.deleteFile(basePath, request.getParameter("qoldfile"));
			
			request.setAttribute("pflag", pflag);
			request.setAttribute("flag", flag);
			request.setAttribute("col", request.getParameter("col"));
			request.setAttribute("word", request.getParameter("word"));
			request.setAttribute("nowPage", request.getParameter("nowPage"));
			
			return "redirect:/qna/listQna";
		}else {
			request.setAttribute("str", "error");
			return "/qna/preProcQna";
		}
	}	
	
}
