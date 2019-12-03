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

import spring.model.car.CarDTO;
import spring.model.mapper.CarMapper;
import spring.utility.car.Utility;


@Controller
public class CarController {
	
	@Autowired
	private CarMapper car_mapper;
	
	@RequestMapping("/car/listCar")
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
		
		//List<CarDTO> list = car_mapper.list(map);
		
		//int total=car_mapper.total(map);
		//String paging=Utility.paging(total, nowPage, recordPerPage, col, word);
		
		//request.setAttribute("list", list);
		request.setAttribute("col", col);
		request.setAttribute("word", word);
		request.setAttribute("nowPage", nowPage);
		//request.setAttribute("paging", paging);
		request.setAttribute("car_mapper", car_mapper);
		
		return "/notice/listNotice";
	}
	

	
}
