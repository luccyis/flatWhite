package com.mj.infra.modules.movie;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mj.infra.common.constants.Constants;
import com.mj.infra.common.util.UtilDateTime;
import com.mj.infra.modules.code.CodeServiceImpl;

@Controller
@RequestMapping(value="/movie/")
public class MovieController {
	
	@Autowired
	MovieServiceImpl service; 
	
	public void setSearchAndPaging(MovieVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	//user
	@RequestMapping(value="main")
	public String MovieMain(@ModelAttribute("vo") MovieVo vo, Movie dto, Model model) throws Exception{
		List<Movie> list = service.selectListMoviePage(vo);
		model.addAttribute("list", list);
		
		return "infra/movie/user/movieMain";
	}

	@RequestMapping(value="view")
	public String MovieView(Movie dto, MovieVo vo, Model model) throws Exception {
		Movie result = service.selectOne(vo);
		model.addAttribute("result", result);
		
		dto.setPseq(vo.getTdmvSeq());
		Movie item = service.selectMovieImage(dto);
		model.addAttribute("item", item);
		
		
		List<Movie> review = service.selectListMovieComment(vo);
		model.addAttribute("review", review);
		
		return "infra/movie/user/movieView";
	}
	
	@ResponseBody
	@RequestMapping(value="MovieComment")
	public Map<String, Object> MovieComment(Movie dto) throws Exception {
		Map<String, Object> review = new HashMap<String, Object>();
		 
		service.insertMovieComment(dto);
		return review;
	}
	
	//ajax로 리스트 
	@RequestMapping(value="movieAjaxList")
	public String movieAjaxList(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		
		return "infra/movie/user/movieAjaxList";
	}

	@RequestMapping(value="movieAjaxLita")
	public String movieAjaxLita(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception {
			
			List<Movie> list = service.selectListMoviePage(vo);
			model.addAttribute("list", list);
		
		return "infra/movie/user/movieAjaxLita";
	}
	
	


	
	//xdmin
	@RequestMapping(value="movieList")
	public String movieList(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception{
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Movie> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/movie/xdmin/movieList";
	}
	
	@RequestMapping(value="movieForm")
	public String movieForm(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception{
		
		System.out.println("vo.getCgSeq(): " + vo.getTdmvSeq());
		Movie item =service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/movie/xdmin/movieForm";
	}
	
	@RequestMapping(value="movieUpdt")
	public String movieUpdt(Movie dto, MovieVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setTdmvSeq(dto.getTdmvSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/movie/movieForm";
		} else {
			return "redirect:/movie/movieList";
		}
		
	}
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value="movieInst")
	public String movieInst(MovieVo vo, Movie dto, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println(dto.getMultipartFile().length);
		
		service.insert(dto);
		vo.setTdmvSeq(dto.getTdmvAge());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE ==1) {
			return "infra/movie/xdmin/movieForm";
		} else {
			return "infra/movie/xdmin/movieList";
		}
	
	}
	
	@RequestMapping(value="movieDele")
	public String movieDele(MovieVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/movie/movieList";
	}
	
	@RequestMapping(value="movieUele")
	public String movieUele(Movie dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: " + result);
		return "redirect:/movie/movieList";
	}
	
	
	//엑셀 다운로드 
	@RequestMapping("excelDownload")
	public void excelDownload(MovieVo vo, HttpServletResponse httpServletResponse) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<Movie> list = service.selectList(vo);
			
			Workbook workbook = new XSSFWorkbook();
			Sheet sheet = workbook.createSheet("Sheet1");
			CellStyle cellStyle = workbook.createCellStyle();
			Row row = null;
			Cell cell = null;
			int rowNum = 0;
			
			sheet.setColumnWidth(0, 2100);
			sheet.setColumnWidth(1, 3100);
			
			String[] tableHeader = {"Seq", "제목", "영어제목", "관람객 평점", "예매순위", "주요정보", "상영타입", "감독", "출연진", "장르", "상영시간", "등급", "개봉일자", "누적관객수", "예고편", "좋아요 수", "등록일", "수정일", "삭제여부", "사용여부"};
			
			row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}
			
			// Body

			 for (int i=0; i<list.size(); i++) {
		            row = sheet.createRow(rowNum++);
		            
		        cell = row.createCell(0);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getTdmvSeq()));
	            
	            cell = row.createCell(1);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvMovieTitle());
	            
	            cell = row.createCell(2);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvTitleEng());
	            
	            cell = row.createCell(3);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvAudienceScore());
	            
	            cell = row.createCell(4);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvRank());
	            
	            cell = row.createCell(5);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvStory());
	            
	            cell = row.createCell(6);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvShowType());
	            
	            cell = row.createCell(7);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvDirector());
	            
	            cell = row.createCell(8);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvCast());
	            
	            cell = row.createCell(9);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvGenres());
	            
	            cell = row.createCell(10);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvRunningTime());
	            
	            cell = row.createCell(11);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
		     	if(list.get(i).getTdmvAge() != null) cell.setCellValue(list.get(i).getTdmvAge());;
	           
	            cell = row.createCell(12);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvCast());
	            
	            cell = row.createCell(13);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvReleaseDate());
	            
	            cell = row.createCell(14);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvAudienceNumber());
	            
	            cell = row.createCell(15);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvTrailer());
	            
	            cell = row.createCell(16);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvLiked());
	            
	            cell = row.createCell(17);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvRegDate());
	            
	            cell = row.createCell(18);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvModDate());
	            
	            cell = row.createCell(19);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvDelNy());
	            
	            cell = row.createCell(20);
		        cellStyle.setAlignment(HorizontalAlignment.CENTER);
		     	cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTdmvUseNy());
	            
		}
		
		httpServletResponse.setContentType("ms-vnd/excel");
	    httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
			 
	}
	
	
}
