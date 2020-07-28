package home.computer;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import home.computer.repository.CustomerRepository;
import home.computer.repository.CustomerRepositoryImpl;
import home.computer.repository.orderDetailRepository;
import home.computer.repository.orderDetailRepositoryImpl;
import home.computer.repository.productRepository;
import home.computer.repository.productRepositoryImpl;
import home.computer.repository.userRepository;
import home.computer.repository.userRepositoryImpl;
import home.computer.entity.CustomerEntity;
import home.computer.entity.productEntity;


public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		userRepository userRepo = new userRepositoryImpl();
		productRepository productRepo = new productRepositoryImpl();
		orderDetailRepository orderDetailRepo = new orderDetailRepositoryImpl();
		CustomerRepository customerRepo = new CustomerRepositoryImpl();
		
		boolean checklog = false;
		System.out.println("Welcome Computer Shop");
		
		while (checklog == false)
		{
			System.out.println("--------------------------------------");
			System.out.println("1.Sign in");
			System.out.println("2.Sign Up");
			System.out.println("Choose 1 or 2 or any key to exit ");
			System.out.println("--------------------------------------");
			int log = sc.nextInt();
			switch (log) {
			case 1:
				{
					System.out.println("------------Sign in--------- ");
					System.out.print("Input user: ");
					String user = sc.next();
					System.out.print("Input password: ");
					String password = sc.next();
					if (user.equals("admin"))		// login admin
					{
						checklog = userRepo.signInUser(user, password); // Trả về false nếu sai mật khẩu
						
						if (checklog == true){
							int choose = 1;
							while(choose != 0)
							{
								System.out.println("------admin---------");
								System.out.println("----Table Product-----");
								System.out.println("1.Insert Product ");
								System.out.println("2.Update Product ");
								System.out.println("3.Delete Product ");
								System.out.println("4.Print Revenue ");
								System.out.println("5.View Table Product ");
								System.out.println("0.Exit");
								System.out.println("----------------------");
								System.out.print("Choose 1, 2, 3, 4, 5 or 0 to exit: ");
								choose = sc.nextInt();
								
								
								switch (choose) {
								case 1:
									productRepo.insert();
									break;
								case 2:
									
									productRepo.update();
									break;
								case 3:
									productRepo.delete();
									break;
								case 4:
									orderDetailRepo.printRevenue();
									break;
								case 5:
									productRepo.select();
									break;
								case 0:
									System.out.println("Bye (^o|o^)");
									break;
								default:
									System.out.println("Key not in menu");
									break;
								}
							}
							
						}
						else{System.out.println("user or password is not correct. ");}
						
					}
						
					else				// login user
					{
						checklog = userRepo.signInUser(user, password);
						if (checklog == true)
						{
							System.out.println(" Computer Shop .");
							int choose = 1;
							while(choose != 0)
							{
								System.out.println("----------------------------");
								System.out.println("1.View Product ");
								System.out.println("2.Find Product ");
								System.out.println("3.Choose product ");
								System.out.println("0. Exit ");
								System.out.println("----------------------------");
								int money = customerRepo.SelectMoney(user);
								System.out.println("You have Money: " + money + "$ ");
								System.out.print("Choose 1, 2, 3, 0 to exit: ");
								choose = sc.nextInt();
								switch (choose) {
								case 1:
									productRepo.menu();
									break;
								case 2:
									productRepo.findProduct();
									break;
								case 3:
									System.out.print("Input idProduct: ");
									int chooseProduct = sc.nextInt();
									int price = productRepo.chooseProduct(chooseProduct).getUnitPrice();
									int amount = productRepo.chooseProduct(chooseProduct).getUnitInStock();
									String namePro = productRepo.chooseProduct(chooseProduct).getProductName();
									System.out.print(namePro);
									System.out.print(": " + price);
									System.out.println("$ | amount: " + amount);
									if (amount > 0)
									{
										System.out.print("Input change money: ");
										int moneyInput = sc.nextInt();
										moneyInput  += money;
										customerRepo.UpdateMoney(user,moneyInput);
										if (moneyInput >= price)
										{
											moneyInput -= price;
											amount -= 1;
											productRepo.updateUnitInStock(amount, chooseProduct);
											customerRepo.UpdateMoney(user, moneyInput);
											System.out.println("Your product: " + namePro + " | Money left: " + moneyInput + "$ ");
										}
										
										else
										{
											System.out.println("Not enough Money. ");
										}
										
									}
									else 
										System.out.println("Out of stock");
									break;
								case 0:
									System.out.println("Bye (^o|o^)");
									break;
								default:
									break;
								}
							}
							
						}
						else{System.out.println("user or password is not correct. ");}
					}
				}
				break;
			case 2:
				
				System.out.println("------------Sign Up--------- ");
				System.out.print("Input user: ");
				String user = sc.next();
				System.out.print("Input password: ");
				String password = sc.next();
				userRepo.signUpUser(user, password);
				break;
	
			default:
				System.out.println("Bye (^o|o^)");
				checklog = true;
				break;
			}
		}

	}

}
