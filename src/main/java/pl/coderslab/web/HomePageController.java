package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/index")
public class HomePageController {

    @GetMapping("")
    public String getIndexPage(){
        return "homePage";
    }

    // odtąd to co potrzebne do killowania sesji
    @GetMapping("/session")
    @ResponseBody
    public String getJSESSIONID(HttpServletRequest request){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        return "jSessionId: " + jSessionId.getValue();
    }

//    tak zadziała !!!
    @GetMapping("/session/kill")
    public String killJSESSIONID(HttpServletRequest request, HttpServletResponse response){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        jSessionId.setValue(null);
        jSessionId.setMaxAge(0);
        jSessionId.setPath("/");
        response.addCookie(jSessionId);
        return "redirect:/index";
    }
}
