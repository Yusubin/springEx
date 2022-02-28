package com.hi.springEx;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StockService {
	@Autowired 
	StockDAO dao;
	
	
	public void crawl(String code) {
		//크롤링을 해서 db에 집어넣음
		//dao.insert(vo);
		String url="https://finance.naver.com/item/main.naver?code="+code;
		try {
			Document doc=Jsoup.connect(url).get();

			Elements name =doc.select("#middle > div.h_company > div.wrap_company > h2 > a");
			if(name.size() != 0) {
				String company=name.get(0).text();
				Elements list1 =doc.select("#chart_area > div.rate_info > table > tbody > tr:nth-child(1) > td.first span.blind");
				Elements list2 =doc.select("table > tbody > tr:nth-child(1) > td:nth-child(2) span.blind");
	
				String today =list1.get(0).text();
				String[] s = today.split(",");
				String today2=String.join("",s);
				int today3=Integer.parseInt(today2); //오늘
			
				
				String yesterday =list2.get(0).text();
				String[] s1 = yesterday.split(",");
				String yesterday2=String.join("",s1);
				int yesterday3=Integer.parseInt(yesterday2);//어제
				
				Elements list4 = doc.select("td.first span.blind");
		
				String high = list4.get(0).text();
				String[] h = high.split(","); //{"95","000"}
				String high2 = String.join("", s); //"95000"
				int high3 = Integer.parseInt(high2);
				
				StockVO vo =new StockVO();
				vo.setCode(code);
				vo.setCompany(company);
				vo.setHigh(high3);
				vo.setToday(today3);
				vo.setYesterday(yesterday3);
				System.out.println(vo);
				
				dao.insert(vo);
				}
			//1. 크롤링한 5개의 값을 주면서 insert를 요청.
			
		
		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("크롤링하는 중 에러발생..........");
			e.printStackTrace();
		}
		
		
	}

}
