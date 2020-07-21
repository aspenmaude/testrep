package Thread;

public class main {

	public static void main(String[] args) {
		ThreadRun tr1 = new ThreadRun();
		ThreadRun tr2 = new ThreadRun();
		Thread thread1 = new Thread(tr1);
		Thread thread2 = new Thread(tr2);
		thread1.start();
		thread2.start();
//		try {
//			for (int i = 0; i < 10; i++)
//			{
//				thread.sleep(300);  // run 0.3s
//				System.out.println("main thread run ");
//			}
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
	}

}
