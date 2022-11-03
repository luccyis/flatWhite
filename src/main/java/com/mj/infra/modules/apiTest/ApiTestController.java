package com.mj.infra.modules.apiTest;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class ApiTestController {
	
	@RequestMapping(value="/test/publicCorona1List")
	public String publicCorona1List (Model model) throws Exception {
	
		  String apiUrl= "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=j9josmOZmbBD%2BfSI71mNz9aDK4JUxAsVQIB7%2FtO7AYi1doSXACcrriF274yadzT8vTX4FVdpHbcvXJ6vno1%2FXw%3D%3D&numOfRows=3&pageNo=1&type=json";
		 
		  URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				System.out.println("line: " + line);
				stringBuilder.append(line);
			}
	
			bufferedReader.close();
			httpURLConnection.disconnect();
	
			System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
			
	//		json object + array string -> java map
			
	      ObjectMapper objectMapper = new ObjectMapper();
	      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
	      
	      System.out.println("######## Map");
			for (String key : map.keySet()) {
				String value = String.valueOf(map.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
			Map<String, Object> header = new HashMap<String, Object>();
			header = (Map<String, Object>) map.get("header");
			
			System.out.println("######## Header");
			for (String key : header.keySet()) {
				String value = String.valueOf(header.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			
	//		String aaa = (String) header.get("resultCode");
			
	//		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
	//		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
			
			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>) map.get("body");
			
			List<ApiTest> items = new ArrayList<ApiTest>();
			items = (List<ApiTest>) body.get("items");
			
			
			System.out.println("items.size(): " + items.size());
			
	//		for(Home item : items) {
	//			System.out.println(item.getMM());
	//		}
			
			model.addAllAttributes(header);
			model.addAllAttributes(body);
			
			return "infra/apiTest/apiTest";
		}

}


