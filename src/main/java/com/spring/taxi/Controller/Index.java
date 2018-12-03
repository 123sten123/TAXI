package com.spring.taxi.Controller;

import com.spring.taxi.Model.TaxiClient;
import com.spring.taxi.Service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Index {

    @Autowired
    private Service service;

        @RequestMapping("/")
        public String home() {
            return "redirect:/index";
        }

        @RequestMapping(value = "/index", method = RequestMethod.GET)
        public ModelAndView main() {
            ModelAndView modelAndView = new ModelAndView();
            //НЕОБХОДИМО УКАЗЫВАТЬ ОБЪЕКТ, ЧТОБЫ БЫЛА ВОЗМОЖНОСТЬ ОБРАТЬТЬСЯ НА jsp
            modelAndView.addObject("taxiClient2", new TaxiClient());
            modelAndView.addObject("xzсhtoeto", service.listContact());
             modelAndView.addObject("taxiclientupdate", new TaxiClient());
            modelAndView.setViewName("index");
            return modelAndView;
        }


    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView addContact(@ModelAttribute(value = "taxiClient2") TaxiClient taxiClient) {

            ModelAndView modelAndView = new ModelAndView("redirect:/index");

        service.save(taxiClient);
        return modelAndView;
    }


    @RequestMapping("/delete/{contactId}")
    public String deleteContact(@PathVariable("contactId") Long contactId) {

        service.removeContact(contactId);

        return "redirect:/index";
    }


    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView upDate(@ModelAttribute(value = "taxiclientupdate") TaxiClient taxiClient) {

        ModelAndView modelAndView = new ModelAndView("redirect:/index");
       // modelAndView.addObject("taxiclientupdate", new TaxiClient());
        return modelAndView;
    }

 }

