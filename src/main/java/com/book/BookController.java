package com.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BookController {
    @Autowired
    BookDAO bookDAO;

    //목록보기
    @RequestMapping(value="/book/list", method= RequestMethod.GET)
    public String booklist(Model model){
        System.out.println("hello");
        model.addAttribute("list", bookDAO.getBookList());
        return "posts";
    }

    @RequestMapping(value="/book/add", method = RequestMethod.GET)
    public String addPost(){
        return "addform";
    }

    @RequestMapping(value="/book/addok", method = RequestMethod.POST)
    public String addPostOK(BookVO vo){
        int i = bookDAO.insertBook(vo);
        if(i==0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="/book/editpost/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model){
        BookVO bookVO = bookDAO.getBook(id);
        model.addAttribute("bookVO", bookVO);
        return "editform";
    }
    @RequestMapping(value="/book/editok", method = RequestMethod.POST)
    public String editPostOk(@ModelAttribute("bookVO") BookVO vo){
        int i = bookDAO.updateBook(vo);
        if(i==0)
            System.out.println("데이터 수정 실패");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value="/book/delete/{id}", method=RequestMethod.GET)
    public String deletePostOk(@PathVariable("id")int id){
        int i = bookDAO.deleteBook(id);
        if(i==0)
            System.out.println("데이터 삭제 실패");
        else
            System.out.println("데이터 삭제 성공!!!");
        return "redirect:../list";
    }
}
