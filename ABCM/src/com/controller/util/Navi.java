package com.controller.util;

public class Navi {
	
	public static String getNavi(String view){
		String navi = "";
		String home = "<a href='main.do'>HOME</a>";
		switch(view){
			case "home":
				navi = home;
				break;
			case "join":
				navi = home + " > JOIN";
				break;
			case "joinresult":
				navi = home + " > JOIN";
				break;
			case "login":
				navi = home + " > LOGIN";
				break;
			case "loginresult":
				navi = home + " > LOGINSUCCESS";
				break;
			case "cust/register":
				navi = home + " > CUST > REGISTER";
				break;
			case "cust/list":
				navi = home + " > CUST > LIST";
				break;
			case "product/register":
				navi = home + " > PRODUCT > REGISTER";
				break;	
				
				
			default:
				navi = home;
				break;
		}
		
		return navi;
	}
	
	
}
