package IO;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class main {

	public static void main(String[] args) {
		
		try {
			String fileDir = "D:/Workpace/io.txt";
			String pasteDir = "D:/Workpace/io2.txt";
			
			FileInputStream fi = new FileInputStream(fileDir); // doc file
			FileOutputStream fo = new FileOutputStream(pasteDir); // ghi file
			
			int readByteNum;
			byte[] bytes = new byte[300];
			StringBuffer buffer = new StringBuffer();
			
			while ((readByteNum = fi.read(bytes)) != -1 ){ // khoang trang se  =   -1, fi.read(bytes) se doc den khi gap khoang trang se = -1
				fo.write(bytes,0,readByteNum);
				buffer.append(new String(bytes,0,readByteNum));
				
			}
			String str = buffer.toString();
			System.out.println("result: " + str);
			fo.flush();
			fo.close();
			fi.close();
			
		} catch (Exception e) {
			e.printStackTrace(); // Xuat loi stream
		}
		

	}

}
