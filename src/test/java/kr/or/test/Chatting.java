package kr.or.test;
public class Chatting {
	public static void main(String[] args) {	
		Chatting chat = new Chatting();//add
		chat.startChat("홍길동");//add
	}
	void startChat(String chatId) {
		final String nickName = chatId;
		Chat chat = new Chat() {
			@Override
			public void start() {
				while(true) {
					String inputData = "채팅방 입장을 환영합니다!";
					String message = "[" + nickName + "]님 " + inputData;
					sendMessage(message);
					break;//add
				}//end while
			}//end start()
		};//end Chat()
		chat.start();
	}//end startChat()
	class Chat {
		void start() {}
		void sendMessage(String message) {
			 System.out.println(message);//add
		}
	}
}
