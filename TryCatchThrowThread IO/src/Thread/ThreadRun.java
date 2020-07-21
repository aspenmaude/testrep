package Thread;

public class ThreadRun implements Runnable {
	@Override
	public void run() {
		try {
			for (int i = 0; i < 10; i++){	
				Thread.sleep(3000); // run 3s
				System.out.println("Run thread: !!"); 
				Thread thread = Thread.currentThread();
				System.out.println("main thread: " + thread.getName());
//				System.out.println("run Thread !!");
//				method();
			}
			
		} catch (Exception e) {
			
		}
		
		
	}
	public synchronized void method() { // synchronized dong bo thread, chay xong thread 1 se chay thread tiep theo
		Thread thread = Thread.currentThread(); // Neu ko co synchronized thi Thread se chay xong xong
		try {
			Thread.sleep(1000);
			System.out.println("do2: " + thread.getName());
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
