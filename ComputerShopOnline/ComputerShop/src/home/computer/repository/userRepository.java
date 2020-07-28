package home.computer.repository;

public interface userRepository {
	boolean signInUser(String u, String p);
	void signUpUser(String u, String p);
	
}
