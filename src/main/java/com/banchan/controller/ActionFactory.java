package com.banchan.controller;

import com.banchan.controller.action.Action;
import com.banchan.controller.action.CheckIdOkAction;
import com.banchan.controller.action.JoinAction;
import com.banchan.controller.action.JoinFormAction;
import com.banchan.controller.action.LoginAction;
import com.banchan.controller.action.LoginFormAction;
import com.banchan.controller.action.MemberUpdateAction;
import com.banchan.controller.action.MypageAction;

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
		
		switch (command) {
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
		}
		
		return action;
	}
}
