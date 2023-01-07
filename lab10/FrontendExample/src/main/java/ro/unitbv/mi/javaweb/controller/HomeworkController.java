package ro.unitbv.mi.javaweb.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.List;

class Dish {
    String name;
    Integer price;

    public Dish(String name, Integer price) {
        this.name = name;
        this.price = price;
    }

    public Dish() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }
}

class Order {
    public String name;
    public String email;
    public String phone;
    public String address;
    public List<Dish> dish;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Dish> getDish() {
        return dish;
    }

    public void setDish(List<Dish> dish) {
        this.dish = dish;
    }

    @Override
    public String toString() {
        return "Order{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

@Controller
public class HomeworkController {

    @RequestMapping(value = "/dishes")
    public @ResponseBody List<Dish> listDishes() {
        Dish[] array = {
                new Dish("Quattro Formaggi Pizza", 15),
                new Dish("California Pizza", 18),
                new Dish("Mexican Pizza", 14),
                new Dish("Pepperoni Pizza", 16),
                new Dish("Spagetti Bolognese", 22)
        };

        return Arrays.asList(array);
    }

    // TODO: Asta a fost incercarea, nu cred ca exista solutie!
//    @RequestMapping(value = "/form-homework", method = RequestMethod.POST)
//    public ModelAndView submitHomeworkForm(@RequestBody Order order, ModelAndView model) {
//        System.out.println(order);
//        model.setViewName("confirmation-order");
//
//        model.addObject("totalPrice", order.getDish().stream().map(elem -> elem.getPrice()).reduce(0, Integer::sum));
//        return model;
//    }

        @RequestMapping(value = "/form-homework", method = RequestMethod.POST)
    public @ResponseBody Order submitHomeworkForm(@RequestBody Order order) {
        System.out.println(order);
//        if (order.name == "Alejandro" && order.getDish().stream().m.contains()) {
//
//        }
        return order;
    }



    @RequestMapping(value = "/something-else", method = RequestMethod.POST)
    public @ResponseBody String somethingElse() {
        return "saliut";
    }
}
