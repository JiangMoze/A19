package com.weikun.control;


import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2016/11/19.
 */
@WebServlet(name="/userControl",urlPatterns = {"*.do"})
public class UserControl extends HttpServlet{
    private Configuration cfg=null;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path=req.getServletPath();
        String p=path.substring(1,path.lastIndexOf("."));

        Template tmp=cfg.getTemplate(p+".ftl");

        Map<String,Object> map=new HashMap<String,Object>();
        map.put("user","<b>weikun</b>");
        map.put("list", Arrays.asList("张三","李四","王二麻子"));


        resp.setContentType("text/html");
        resp.setCharacterEncoding("utf-8");
        PrintWriter out=resp.getWriter();
        try {
            tmp.process(map,out);
        } catch (TemplateException e) {
            e.printStackTrace();
        }


    }

    @Override
    public void init() throws ServletException {
        cfg = new Configuration(Configuration.VERSION_2_3_23);



        cfg.setServletContextForTemplateLoading(this.getServletContext(),"temp");
        cfg.setDefaultEncoding("UTF-8");


        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);

        cfg.setLogTemplateExceptions(false);




    }
}
