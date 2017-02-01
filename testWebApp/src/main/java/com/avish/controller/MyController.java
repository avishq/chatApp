package com.avish.controller;

import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avish.email.dao.EmailDAO;
import com.avish.facebook.FBConnection;
import com.avish.facebook.FBGraph;
import com.avish.model.Email;

@Controller
public class MyController {
	@Autowired
	private EmailDAO emailDAO;
	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = 
		    Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

	@RequestMapping("/")
	public String hi(HttpServletRequest request) {
		System.out.println(request.getRemoteAddr());
		return "index";
	}
	
	@RequestMapping("/facebook")
	public String facebookRedirect(HttpServletRequest request) {
		String code = request.getParameter("code");
		System.out.println(request.getParameter("code"));
		FBConnection fbConnection = new FBConnection();
		String accessToken = fbConnection.getAccessToken(code);
		System.out.println(accessToken);
		FBGraph fbGraph = new FBGraph(accessToken);
		String graph = fbGraph.getFBGraph();
		System.out.println(graph);
		Map<String, String> fbProfileData = fbGraph.getGraphData(graph);
		for ( String key : fbProfileData.keySet())
			System.out.println(key +" : "+fbProfileData.get(key) );
		return "fbResponce";
	}

	@RequestMapping(value = "/insertEmail/{email:.+}", method = RequestMethod.POST)
	@ResponseBody
	public String insertEmail(HttpServletRequest request,
			@PathVariable("email") String emailAddr) {
		System.out.println("insertEmail");
		JSONObject object = new JSONObject();
		if (isValidEmailAddress(emailAddr)) {
			System.out.println(emailAddr);
			Email email = new Email();
			email.setEmail(emailAddr);
			System.out.println(request.getRemoteAddr());
			Long nofEmail = emailDAO.countByEmail(email.getEmail());
			System.out.println(nofEmail);
			if (nofEmail == 0) {
				emailDAO.add(email);
				object.put("sucess", true);
				object.put("responce", "Thank You for registring!!");
			} else {
				System.out.println("duplicate Email");
				object.put("sucess", false);
				object.put("responce", "Already Registered!!");
			}
		} else {
			object.put("sucess", false);
			object.put("responce", "Invalid Input!!");
		}
		return object.toString();
	}

	private boolean isValidEmailAddress(String emailAddr) {
		if(emailAddr!=null) {
			Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailAddr);
	        return matcher.find();
		}
		return false;
	}
}
