package com.hi.spring02;

import java.util.Random;

public class randomtest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Random r = new Random();
		
		for(int i=0; i<5; i++) {
//			System.out.println(r.nextInt(900)+100 );
			
			System.out.println(r.nextInt(81)+10);
		}
		
		
	}	

}
