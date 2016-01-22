package com.controller.util;

/*import java.io.File;*/
import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;

import org.springframework.web.multipart.MultipartFile;

public class MyUtil {
	public static void saveFile(MultipartFile file, String dir, int id)
			throws Exception{
		if(file !=null){
			byte[] data = file.getBytes();
			FileOutputStream out =
					//유틸 모바일시 id빼기!!! new FileOutputStream(dir+id+"_"+file.getOriginalFilename());
					new FileOutputStream(dir+file.getOriginalFilename());
			out.write(data);
			out.close();
		}
	}
	
	public static void deleteFile(String file, String dir, int id)
			throws Exception{
		
		File file1 = new File(dir+id+"_"+file);
        
        if(file1.exists()){
            file1.delete();
        }
        
	}
	
	public static String convert(String str){
		String result =null;
		try {
			result = new String(str.getBytes("8859_1"),"KSC5601");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return result;
	}
	public static void saveFile(MultipartFile file, String dir) throws Exception{
		if(file !=null)
		{
			byte[] data= file.getBytes();
			FileOutputStream out = new FileOutputStream(dir+file.getOriginalFilename());
			out.write(data);
			out.close();
			
		}
	}
	
	
}
