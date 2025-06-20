package com.banchan.controller;

import com.banchan.controller.action.Action;
import com.banchan.controller.memberAction.*;
import com.banchan.controllercom.productAction.*;
import com.banchan.controller.action.MainAction;
import com.banchan.controller.boardAction.*;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		
		if (command == null) {
			action = new MainAction();
		} else {
			switch (command) {
				// 사용자
				case "loginForm":
					action = new LoginFormAction();
					break;
				case "login":
					action = new LoginAction();
					break;
				case "joinForm":
					action = new JoinFormAction();
					break;
				case "checkIdOk":
					action = new CheckIdOkAction();
					break;
				case "join":
					action = new JoinAction();
					break;
				case "mypage":
					action = new MypageAction();
					break;
				case "memberUpdate":
					action = new MemberUpdateAction();
					break;
				case "logout":
					action = new LogoutAction();
					break;
				// 상품
				case "productList":
					action = new ProductListAction();
					break;
				case "productWriteForm":
					action = new ProductWriteFormAction();
					break;
				case "productWrite":
					action = new ProductWriteAction();
					break;
				case "productView":
					action = new ProductViewAction();
					break;
				case "productUpdateForm":
					action = new ProductUpdateFormAction();
					break;
				case "productUpdate":
					action = new ProductUpdateAction();
					break;
				case "productPassCheck":
					action = new ProductPassCheckAction();
					break;
				case "productDelete":
					action = new ProductDeleteAction();
					break;
				// board
				case "boardList":
					action = new BoardListAction();
					break;
				case "boardWriteForm":
					action = new BoardWriteFormAction();
					break;
				case "boardWrite":
					action = new BoardWriteAction();
					break;
				case "boardView":
					action = new BoardViewAction();
					break;
				case "boardUpdateForm":
					action = new BoardUpdateFormAction();
					break;
				case "boardUpdate":
					action = new BoardUpdateAction();
					break;
				case "boardDelete":
					action = new BoardDeleteAction();
					break;
				default:
					action = new MainAction();
					break;
			}
		}

		return action;
	}
}
