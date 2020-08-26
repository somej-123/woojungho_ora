package kr.or.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Tire {
	public void run() { //메서드=함수=function()
		System.out.println("일반 타이어가 굴러갑니다.");
	}
}
class SnowTire extends Tire { //상속=extends=>부모
	public void run() {
		System.out.println("스노우 타이어가 굴러갑니다.");
	}
}
public class HelloWorld {

	public static void main(String[] args) {//[대괄호],{중괄호},(소괄호)
		//(page:jsp클릭변수 - 1) * perPageNum:페이지당보여줄개수;
		int startBno = (1 - 1) * 10; //1페이지
		System.out.println("쿼리변수 (1page - 1) * perPageNum = " + startBno);
		startBno = (2 - 1) * 10; //2페이지
		System.out.println("쿼리변수 (2page - 1) * perPageNum = " + startBno);
		startBno = (3 - 1) * 10; //3페이지
		System.out.println("퀴리변수 (3page - 1) * perPageNum = " + startBno);
		
		
		//천장함수 사용법 1페이지, 2페이지, 3페이지
		int endPage = (int)(Math.ceil(1/10.0)*10);
		System.out.println("Math.ceil(1page/10.0)*10 = " + endPage);
		endPage = (int)(Math.ceil(2/10.0)*10);
		System.out.println("Math.ceil(2page/10.0)*10 = " + endPage);
		endPage = (int)(Math.ceil(3/10.0)*10);
		System.out.println("Math.ceil(3page/10.0)*10 = " + endPage);
		endPage = (int)(Math.ceil(11/10.0)*10);
		System.out.println("Math.ceil(11page/10.0)*10 = " + endPage);
		
		List<String> files = new ArrayList<>();
		files.add("sample1.jpg");
		files.add("sample2.jpg");
		files.add("sample3.jpg");
		String[] filenames = new String[files.size()];
		int cnt = 0;
		for(String fileName : files) {
			filenames[cnt++] = fileName;
		}
		System.out.println(filenames[0] + filenames[1] + filenames[2]);
		//SnowTire클래스형 변수 snowTire 생성
		//new 키워드로 SnowTire() 매서드를 이용해서
		//snowTire인스턴스클래스(메모리공간할당) 실행된 상태(아래)
		SnowTire snowTire = new SnowTire();//생성자 메서드 실행
		Tire tire = snowTire;
		tire.run();//자식클래스의 run()
		Tire tire2 = new Tire();
		tire2.run();//부모클래스의 run()
		/*
		boolean run = true;
		int balance = 0;//은행예금통장금액
		Scanner scanner = new Scanner(System.in);//입출력정의-키보드
		while(run) {
			//~ln = line new = 엔터
			System.out.println("1.입금|2.출금|3.잔고|4.종료");
			System.out.print("위 번호를 입력해 주세요> ");
			int menuNum = scanner.nextInt();//키보드로 입력받은 숫자를 초기값으로 지정
			if(menuNum==1) {
				System.out.print("입금액을 입력 하세요> ");
				balance = balance + scanner.nextInt();//입금액 키보드입력
			}
			if(menuNum==2) {
				System.out.print("출금액을 입력 하세요> ");
				balance = balance - scanner.nextInt();//출금하고 남은 금액이 입력됨
			}
			if(menuNum==3) {
				System.out.println("잔액은 " + balance + " 원 입니다.");
			}
			if(menuNum==4) {
				System.out.print("프로그램이 종료되었습니다.");
				run = false;
				//break;//while문을 빠져나가는 명령
			}
			switch(menuNum) {
			case 1:
				System.out.print("입금액을 입력 하세요> ");
				balance = balance + scanner.nextInt();//입금액 키보드입력
				break;//switch문 빠져 나가기
			case 2:
				System.out.print("출금액을 입력 하세요> ");
				balance = balance - scanner.nextInt();//출금하고 남은 금액이 입력됨
				break;
			case 3:
				System.out.println("잔액은 " + balance + " 원 입니다.");
				break;
			case 4:
				System.out.print("프로그램이 종료되었습니다.");
				run = false;//while문을 빠져나가는 명령
				break;//switch문 빠져나가는 명령
			}//end switch문
		}//end while문
		*/
		
		
		
		
		
		
		
		
		
		/*int sum = 0; int cnt = 1;
		for(cnt=1;cnt<=500;cnt++) { //[cnt=cnt+1]=cnt++
			sum = sum + cnt;//sum은 누적변수, cnt는 증가변수
		}
		while(cnt<=100) {
			sum = sum + cnt;
			cnt=cnt+1;
		}
		System.out.println("1부터 "+ (cnt-1) +"까지의 합은 " + sum + " 입니다.");*/
		/*int x = 10;	int y = 5;
		boolean result1,result2,result3;//불린형 변수지정
		//true=1, false=0;
		result1 = (x>7)&&(y<=5);//비교구문 1 * 1 = 1
		result2 = (x<7)&&(y<=5);//false   0 * 1 = 0
		result3 = (x<7)||(y<=5);//true    0 + 1 = 1 
		System.out.println("1번:"+result1+"/2번:"+result2+"/3번:"+result3);*/
		/*int score = 85;
		String result;
		//result = (!(score>90))?"가":"나";//삼항조건 축약문 -?-:-
		if(!(score>90)) {
			result = "가";
		}else {
			result = "나";
		}
		System.out.println("조건에 맞는 답은 " + result + "입니다.");*/
		/*String name = "123";//문자열형
		char var3 = 'a';//단일문자형
		int num_name = Integer.parseInt(name);//변수형 변환
		System.out.println(num_name + "님 안녕하세요. 자바!");*/

	}

}
