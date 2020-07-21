package TryCatchThrow;

public class main {

	public static void main(String[] args) {
		  try {
			  int num[] = {3,4,7,8};
			  System.out.println("message " + num[10]);
		  } catch (Exception e){
		  		System.out.println("error: " + e.getMessage());
		  		System.out.println("error: " + e.getCause());
		  		System.out.println("error: " + e.getStackTrace());	
		  	}
		  exam1();
	}
	
	public static void exam1 (){
		try{
			exam2();
		}
		catch (Exception e){
			System.out.println("run error 1111: " + e.getMessage());
			System.out.println("run error 111: " + e.getCause());
		}
	}
	public static void exam2()  throws Exception {
		try{
			throw new Exception("error exam2");
		}
		catch (ArrayIndexOutOfBoundsException e){ // Loi trang mang,
			System.out.println("run error 2222: " + e.getCause()); // co loi~ trang mang moi in ra dc
		}
		
	}

}
