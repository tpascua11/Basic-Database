package com.app.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.springframework.ui.Model;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    private static DataSource dataSource;
    private static JdbcTemplate jdbcTemplate;

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String goHome(ModelMap model) {
        return "/WEB-INF/index.jsp";
    }

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplate = new JdbcTemplate(dataSource);
        System.out.println("setting jdbc template");
    }

    public static JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    @RequestMapping(value = "/employee/name")
    public String listHotels(Model model){
        JdbcTemplate jdbcTemplate = MainController.getJdbcTemplate();
        //int rowCount = jdbcTemplate.queryForObject("select count(*) from employeeHarvest", Integer.class);
        System.out.println("DID I EVER HAPPEN");


        List<String> stringList = jdbcTemplate.query(
            "select * FROM har_employee",
            new RowMapper<String>() {
                public String mapRow(ResultSet rs, int rowNum) throws SQLException {
                    String str = new String(rs.getString("NAMEFIRST"));
                    return seeAndPut(str);
                }
        });

        model.addAttribute("name", stringList);
        System.out.println(stringList);
        return "jsonTemplate";
    }
    
    public String seeAndPut(String str){
      System.out.println("test" + str);
      return str;
    }


}
