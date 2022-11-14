package com.mj.infra.modules.theater;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mj.infra.common.constants.Constants;
import com.mj.infra.common.util.UtilDateTime;
import com.mj.infra.modules.code.CodeServiceImpl;

@Controller
@RequestMapping(value ="/theater/")
public class TheaterController {
	
	@Autowired
	TheaterServiceImpl service;
	
	@RequestMapping(value="theaterList")
	public String theaterList(@ModelAttribute("vo") TheaterVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Theater> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/theater/xdmin/theaterList";
	}
	
	public void setSearchAndPaging(TheaterVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	
		vo.setParamsPaging(service.selectOneCount(vo));

	}

	@RequestMapping(value="theaterForm")
	public String theaterForm(@ModelAttribute("vo") TheaterVo vo, Model model) throws Exception {
		System.out.println("vo.getTdthSeq(): " + vo.getTdthSeq());
		Theater item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/theater/xdmin/theaterForm";
	}
	
	//insert 부터 
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "theaterInst")
	public String theaterInst(TheaterVo vo, Theater dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setTdthSeq(dto.getTdthSeq());
		redirectAttributes.addAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE==1) {
			return "redirect:/theater/theaterForm";
		} else {
			return "redirect:/theater/theaterList";
		}
	}
	
	@RequestMapping(value="theaterUpdt")
	public String theaterUpdt(TheaterVo vo, Theater dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setTdthSeq(dto.getTdthSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE==1) {
			return "redirect:/theater/theaterForm";
		} else {
			return "redirect:/theater/theaterList";
		}
	}
	
	@RequestMapping(value="theaterDele")
	public String theaterUpdt(TheaterVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/theater/theaterList";
	}
	
	@RequestMapping(value="theaterUele")
	public String theaterUele(Theater dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: "+ result);
		return "redirect:/theater/theaterList";
	}
	
	//엑셀 다운로드 
		@RequestMapping("excelDownload")
	    public void excelDownload(TheaterVo vo, HttpServletResponse httpServletResponse) throws Exception {
			
			// setSearch(vo); 
			vo.setParamsPaging(service.selectOneCount(vo));

			if (vo.getTotalRows() > 0) {
				List<Theater> list = service.selectList(vo);
				
//				Workbook workbook = new HSSFWorkbook();	// for xls
		        Workbook workbook = new XSSFWorkbook();
		        Sheet sheet = workbook.createSheet("Sheet1");
		        CellStyle cellStyle = workbook.createCellStyle();        
		        Row row = null;
		        Cell cell = null;
		        int rowNum = 0;
				
//		        each column width setting	        
		        sheet.setColumnWidth(0, 2100);
		        sheet.setColumnWidth(1, 3100);

//		        Header
		        String[] tableHeader = {"Seq", "지역", "지점", "지점 (영어)", "주소", "사용여부", "삭제여부"};

		        row = sheet.createRow(rowNum++);
		        
				for(int i=0; i<tableHeader.length; i++) {
					cell = row.createCell(i);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
					cell.setCellValue(tableHeader[i]);
				}

//		        Body
		        for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
//		            String type: null 전달 되어도 ok
//		            int, date type: null 시 오류 발생 하므로 null check
//		            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
		            
		            cell = row.createCell(0);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		            cell.setCellValue(Integer.parseInt(list.get(i).getTdthSeq()));
		            
		            cell = row.createCell(1);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            if(list.get(i).getTdthRegion() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getTdthRegion()));
		            
		        	
		            cell = row.createCell(2);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getTdthBranch());
		        	
		        	cell = row.createCell(3);
		        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
		        	cell.setCellStyle(cellStyle);
		        	cell.setCellValue(list.get(i).getTdthBranchEng());
		            cell = row.createCell(4);
		            
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getTdthAddress());
		            
		            cell = row.createCell(5);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getTdthUseNy());
		            
		            cell = row.createCell(6);
		            cellStyle.setAlignment(HorizontalAlignment.CENTER);
		            cell.setCellStyle(cellStyle);
		            cell.setCellValue(list.get(i).getTdthDelNy());    
		            
		       
		        }

		        httpServletResponse.setContentType("ms-vnd/excel");
//		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
		        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

		        workbook.write(httpServletResponse.getOutputStream());
		        workbook.close();
			}
		}
	
	
	
	

	
}
