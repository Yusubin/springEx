package com.hi.springEx;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlTest {

	public static void main(String[] args) {
		//1.사이트연결http요청
		//2.html문서받아오기http응답 7000줄
		//3. 조건. 추출하고자하는 위치를 찾아서 해당노드를 가지고온다
		//   결과는 .... ArrayList 자료구조 사용..기능을 더 붙여놓은 Elements(상속해서 만들)
		String url="https://finance.naver.com/item/main.naver?code=008525";
		try {
			Document doc=Jsoup.connect(url).get();
//			System.out.println(doc);
			Elements list =doc.select("span.code");
			
			
			
			/*
			 * 없는주소를 넣었을때 
			 * ArrayList로 반환하는 경우 
			 * 1) 리스트에 넣을것이 하나도 없는 경우 list를 null로 반환(X)
			 * 2) list는 만들고 그안에 요소를 하나도 안넣음(O)
			 * ]
			 * 크롤링한 결과값이 있을때만 vo만들고 db에 넣자
			 * 
			 * */
			
			if(list.size() != 0) {
//				System.out.println(list.size());
//				System.out.println(list.get(0).text());
				String code=list.get(0).text();
				System.out.println(code);
				Elements name =doc.select("#middle > div.h_company > div.wrap_company > h2 > a");
				
				
				
				String company=name.get(0).text();
//				System.out.println(company);
//				Elements list1 =doc.select("div.today > p> em>span");
//				Elements list1 =doc.select("#chart_area > div.rate_info > div span.blind");
				Elements list1 =doc.select("#chart_area > div.rate_info > table > tbody > tr:nth-child(1) > td.first span.blind");
//				Elements list2 =doc.select("#chart_area > div.rate_info > table > tbody > tr:nth-child(1) > td.first");
//				System.out.println(list1);
//				System.out.println(list1.get(0));
				Elements list2 =doc.select("table > tbody > tr:nth-child(1) > td:nth-child(2) span.blind");

				String today =list1.get(0).text();
				String[] s = today.split(",");
				String today2=String.join("",s);
				int today3=Integer.parseInt(today2); //오늘
//				System.out.println(today3);
			
				
				String yesterday =list2.get(0).text();
				String[] s1 = yesterday.split(",");
				String yesterday2=String.join("",s1);
				int yesterday3=Integer.parseInt(yesterday2);//어제
//				System.out.println(yesterday3);
				
				
				Elements list4 = doc.select("td.first span.blind");
		
				String high = list4.get(0).text();
				String[] h = high.split(","); //{"95","000"}
				String high2 = String.join("", s); //"95000"
				int high3 = Integer.parseInt(high2);
//				System.out.println(high3);
				
				
				
				StockVO vo =new StockVO();
				vo.setCode(code);
				vo.setCompany(company);
				vo.setHigh(high3);
				vo.setToday(today3);
				vo.setYesterday(yesterday3);
				//1. 크롤링한 5개의 값을 주면서 insert를 요청.
				
				
			}else {
				System.out.println("0");
			}

		
		} catch (IOException e) {
			// TODO Auto-generated catch block
			System.out.println("크롤링하는 중 에러발생..........");
			e.printStackTrace();
		}
		
		

	}

}
