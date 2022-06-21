package tech.codingclub.helix.controller;

import com.google.gson.Gson;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.codingclub.helix.database.GenericDB;
import tech.codingclub.helix.entity.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;


@Controller
    @RequestMapping("/login")
    public class LocalController extends BaseController {

        private static Logger logger = Logger.getLogger(tech.codingclub.helix.controller.MainController.class);

        @RequestMapping(method = RequestMethod.GET, value = "/admin")
        public String adminlogin(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
            return "adminlogin";
        }
        //Making Api to return Json response
    //whenever we want to return direct string we write @ResponseBody
        @RequestMapping(method = RequestMethod.GET, value = "/api/time")
        public @ResponseBody
        String getTime(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
            TimeApi timeApi=new TimeApi(new Date().toString(),new Date().getTime());
            return new Gson().toJson(timeApi);
        }
        //we are getting wiki result here and showing it as json to user
//    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki/time")
//    public @ResponseBody
//    String getResultJson(ModelMap modelMap, @RequestParam("country") String country, HttpServletResponse response, HttpServletRequest request) {
//       WikiPediaDownloader wikiPediaDownloader=new WikiPediaDownloader(country);
//        WikiResult x=wikiPediaDownloader.getResult();
//        return new Gson().toJson(x);
//    }
//    //here we are using html to show result to user
//    @RequestMapping(method = RequestMethod.GET, value = "/api/wiki/html")
//    public String getResultHtml(ModelMap modelMap, @RequestParam("country") String country, HttpServletResponse response, HttpServletRequest request) {
//        WikiPediaDownloader wikiPediaDownloader=new WikiPediaDownloader(country);
//        WikiResult x=wikiPediaDownloader.getResult();
//        modelMap.addAttribute("IMAGE",x.getImg_url());
//        modelMap.addAttribute("DESCRIPTION",x.getText_result());
//        return "wikiapi";
//    }
        @RequestMapping(method = RequestMethod.GET, value = "/user")
        public String userlogin(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
            return "userlogin";
        }
        // the get request for next page after login
    @RequestMapping(method = RequestMethod.GET, value = "/welcome")
    public String welcomeLogin(ModelMap modelMap, HttpServletResponse response, HttpServletRequest request) {
        return "welcomelogin";
    }
    //To show the after login page through post request
    //verifies the id and email sent request to /wecome functio in main contoller
    //then that calls welome jsp
    @RequestMapping(method = RequestMethod.POST, value = "/welcome")
    public
    @ResponseBody
    LoginResponse handlelogin(@RequestBody Member member, HttpServletRequest request, HttpServletResponse response) {
            List<Member> x= (List<Member>) GenericDB.getRows(tech.codingclub.helix.tables.Member.MEMBER,Member.class,
                    tech.codingclub.helix.tables.Member.MEMBER.EMAIL.eq(member.email).and(tech.codingclub.helix.tables.Member.MEMBER.PASSWORD
                            .eq(member.password)),1);
            if(x!=null && x.size()>0){
                //email and password are correct
                Member member1= x.get(0);
                member1.role="cm";
                ControllerUtils.setUserSession(request,member1);
                return new LoginResponse(member1.id,"Successfully logined",true);

            }
            else{
                //wrong combination
                return new LoginResponse(null,"Wrong combination",false);
            }
        //return new LoginResponse();
    }
    }

