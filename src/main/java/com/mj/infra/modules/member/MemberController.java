package com.mj.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mj.infra.common.constants.Constants;
import com.mj.infra.common.util.UtilDateTime;
import com.mj.infra.modules.code.CodeServiceImpl;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@Autowired
	CodeServiceImpl codeservice;
	
	public void setSearchAndPaging(MemberVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value="memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberForm";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="memberInst")
	public String MemberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE ==2) {
			return "redirect:/member/memberForm";
		} else {
			return "redirect:/member/memberList";
		}
	}

	@RequestMapping(value="memberUpdt")
	public String MemberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setIfmmSeq(dto.getIfmmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE ==1) {
			return "redirect:/member/memberForm";
		} else {
			return "redirect:/member/memberList";
		}
	}
	
	@RequestMapping(value="memberDele")
	public String MemberDele(MemberVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value="memberUele")
	public String MemberUele(Member dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: " + result);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value="login")
	public String login() throws Exception {
		return "infra/member/user/login";
	}
	
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getIfmmSeq());
				httpSession.setAttribute("sessId", rtMember2.getIfmmId());
				httpSession.setAttribute("sessName", rtMember2.getIfmmName());
				httpSession.setAttribute("sessGrade", rtMember2.getIfmmGrade());
				httpSession.setAttribute("sessPhone", rtMember2.getIfmmPhone());

				System.out.println(httpSession.getAttribute("sessName"));
				returnMap.put("rt", "success");
				}
			} else {
				dto.setIfmmSeq(rtMember.getIfmmSeq());
				returnMap.put("rt", "fail");
				
			}
		
		return returnMap;
		}
	
	@ResponseBody
	@RequestMapping(value = "kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.selectOneId(dto);
		
		 System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getIfmmSeq());    
	     httpSession.setAttribute("sessId", dto.getIfmmId());
	     httpSession.setAttribute("sessName", dto.getIfmmName());
	     httpSession.setAttribute("sessEmail", dto.getIfmmEmailAddress());
	     httpSession.setAttribute("sessImg", dto.getIfmmSnsImg());
	     httpSession.setAttribute("sessSns", dto.getIfmmSnsLogin());
	     httpSession.setAttribute("sessGrade", dto.getIfmmGrade());
	 }
	

	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

	
	//user
	
	@ResponseBody
	@RequestMapping(value="checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectOneIdCheck(dto);
		
		if(result>0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	
	@RequestMapping(value="joinAuth")
	public String joinAuth() throws Exception {
		return "infra/member/user/joinAuth";
	}
	
	@RequestMapping(value="joinForm")
	public String joinForm() throws Exception {
		return "infra/member/user/joinForm";
	}
	
	
	@RequestMapping(value="joinResult")
	public String joinResult(Member dto) throws Exception {
		service.insert(dto);
		return "infra/member/user/joinResult";
	}
	
	//엑셀 다운로드 
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		// setSearch(vo); 
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq", "이름", "아이디", "성별", "생일", "이메일", "모바일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getIfmmSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getIfmmName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getIfmmId());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getIfmmGender() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getIfmmGender()));
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfmmDob());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfmmEmailAddress());
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getIfmmPhone());    
	            
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }

}
