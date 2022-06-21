package tech.codingclub.helix.controller;


import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by pallavi.
 */
public class BaseController {
    @ExceptionHandler
    public

    String defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
        return "alien";
    }
}
