package com.example.demo.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Repository.AdminRepository;
import com.example.demo.Repository.ContactRepository;
import com.example.demo.Repository.KidsProductRepo;
import com.example.demo.Repository.MensProductRepo;
import com.example.demo.Repository.RegisterRepository;
import com.example.demo.Repository.WomansProductRepo;
import com.example.demo.model.MensProducts;
import com.example.demo.exception.DataNotStored;
import com.example.demo.exception.LoginValidationException;
import com.example.demo.model.RegisterForm;
import com.example.demo.model.WomansProduct;
import com.example.demo.report.ExportPdf;
import com.example.demo.report.ExportPdfKids;
import com.example.demo.model.Admin;
import com.example.demo.model.ContactUs;
import com.example.demo.model.KidsProduct;

@Controller
public class ShoesController {

	@Autowired
	RegisterRepository repo;
	
	@Autowired
	AdminRepository adminRepo;
	
	@Autowired
	MensProductRepo mensRepo;
	
	@Autowired
	WomansProductRepo womansRepo;
	
	@Autowired
	KidsProductRepo kidsRepo;
	
	@Autowired
	ContactRepository contactRepo;
	
	
	Optional<MensProducts> list;
	
	Optional<KidsProduct> listKids;	
	Optional<MensProducts> listMens;	
	Optional<WomansProduct> listWomens;
	
	ArrayList<KidsProduct> kidsShoesList = new ArrayList<>();
	ArrayList<MensProducts> mensShoesList = new ArrayList<>();
	
	@RequestMapping("/")
	public String index()
	{
		return "Login.jsp";
	}
	
	@RequestMapping("MensShoes")
	public String mensShoes(Model model,MensProducts mensShoes,HttpServletRequest request) {
		String userName = request.getParameter("username");
		model.addAttribute("message",userName);
		model.addAttribute("mensShoes",mensRepo.findAll());
		return "MensShoes.jsp";
	}
	
	@RequestMapping("womansShoes")
	public String womansShoes(Model model,HttpServletRequest request) {
		String userName = request.getParameter("username");
		model.addAttribute("message",userName);
		model.addAttribute("womensShoes",womansRepo.findAll());
		return "womansShoes.jsp";
	}
	
	@RequestMapping("kidsShoes")
	public String kidsShoes(Model model,HttpServletRequest request ) {
		String userName = request.getParameter("username");
		model.addAttribute("message",userName);
		model.addAttribute("kidsShoes",kidsRepo.findAll());
		return "kidsShoes.jsp";
	}
	
	@RequestMapping("login")
	public String Login(Model model,RegisterForm register) {
		
		model.addAttribute("register",register);
		return "Login.jsp";
	}
	
	@RequestMapping("Success")
	public String success(Model model,RegisterForm register) {
		
    	repo.save(register);
		model.addAttribute("message",register.getUserName());
		return "index.jsp";
	}
	
	@RequestMapping("logout")
	public String logout() {
		
		return "logout.jsp";
	}
	
	String userName = " ";
	@RequestMapping("successLogin")
	public String successLogin(HttpServletRequest request,RegisterForm res,Model model)throws DataNotStored,LoginValidationException 
	{
	userName = request.getParameter("username");
	String password = request.getParameter("pswd");

	
	List<RegisterForm> list = repo.loginCheck(userName, password);

	if (list.size() > 0) {
		model.addAttribute("message", userName);
		return "index.jsp";
	} else {
		throw new LoginValidationException();
	}	
}
	@RequestMapping("admin")
	public String administratorLogin(Admin admin,Model model)
	{
		model.addAttribute("admin",admin);
		return "admin.jsp";
	}
	
	@RequestMapping("adminSuccess")
	public String successAdmin(HttpServletRequest request,Admin admin,Model model) 
	{
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		List<Admin> list = adminRepo.adminLoginCheck(userName, password);
		
		if(list.size()>=1)
		{
			
			return "addProduct.jsp";
		}
		else
		{
			model.addAttribute("fail", "Wrong Username or Password");
			return "admin.jsp";
		}

	}
		
	@RequestMapping("home")
	public String home(Admin admin,Model model)
	{

		return "index.jsp";
	}
	@RequestMapping("AllMensShoes")
	public String addMensShoes(MensProducts mensShoes,Model model)
	{
		model.addAttribute("mensShoes",mensShoes);
		return "AddMenShoes.jsp";
	}
	
	@RequestMapping("mensProducts")
	public String mensProducts(MensProducts mensShoes,Model model)
	{
	    mensRepo.save(mensShoes);
		model.addAttribute("mensShoes",mensRepo.findAll());
		return "AllMensShoes.jsp";
	}
	
	@RequestMapping("mensShoes")
	public String mensShoes(MensProducts mensShoes,Model model)
	{
		model.addAttribute("mensShoes",mensRepo.findAll());
		return "AllMensShoes.jsp";
	}
	@RequestMapping("womansAllShoes")
	public String addWomansShoes(WomansProduct womanShoes,Model model)
	{
		model.addAttribute("womensShoes",womansRepo.findAll());
		return "AllWomansShoes.jsp";
	}
	
	@RequestMapping("womansProducts")
	public String womansProducts(WomansProduct womansShoes,Model model)
	{
	    womansRepo.save(womansShoes);
		model.addAttribute("womensShoes",womansRepo.findAll());
		return "AllWomansShoes.jsp";
	}

	@RequestMapping("kidsAllShoes")
	public String kidsShoes(KidsProduct kidsShoes,Model model)
	{
		model.addAttribute("kidsShoes",kidsRepo.findAll());
		return "AllKidsShoes.jsp";
	}
	@RequestMapping("addkidsShoes")
	public String addKidsShoes(KidsProduct kidsShoes,Model model)
	{
		model.addAttribute("kidsShoes",kidsShoes);
		return "AddKidsShoes.jsp";
	}
	
	@RequestMapping("addWomensShoes")
	public String addWomensShoes(WomansProduct womansShoes,Model model)
	{
		model.addAttribute("womensShoes",womansShoes);
		return "addWomansShoes.jsp";
	}
	@RequestMapping("updateMensShoes{id}")
	public String UpdateMensShoes(@PathVariable(name = "id") int id,Model model,MensProducts mensShoes)
	{
        listMens = mensRepo.findById(id);
        mensShoes = listMens.get();
        model.addAttribute("list",mensShoes);
		return "updateMensShoes.jsp";
	}

	@RequestMapping("updateKidsShoes{id}")
	public String UpdateKidsShoes(@PathVariable(name = "id") int id,Model model,KidsProduct kidsShoes)
	{
        listKids = kidsRepo.findById(id);
        kidsShoes = listKids.get();
        model.addAttribute("list",kidsShoes);
		return "updateKidsShoes.jsp";
	}
	
	@RequestMapping("updateWomensShoes{id}")
	public String UpdateWomensShoes(@PathVariable(name = "id") int id,Model model,WomansProduct womansShoes)
	{
        listWomens = womansRepo.findById(id);
        womansShoes = listWomens.get();
        model.addAttribute("list",womansShoes);
		return "UpdateWomensShoes.jsp";
	}
	@RequestMapping("kidsProducts")
	public String kidsProducts(KidsProduct kidsShoes,Model model)
	{
	    kidsRepo.save(kidsShoes);
		model.addAttribute("kidsShoes",kidsRepo.findAll());
		return "AllKidsShoes.jsp";
	}

	@RequestMapping("deleteKids")
	public String showKidsId()
	{
		return "DeleteKidsShoes.jsp";
	}
	
	@RequestMapping("deleteKidsShoes")
	public String KidsShoeDelete(@RequestParam int id,Model model)
	{
		kidsRepo.deleteById(id);
		model.addAttribute("kidsShoes",kidsRepo.findAll());
		return "AllKidsShoes.jsp";
	}
	
	@RequestMapping("deleteMensShoes")
	public String successDelete(@RequestParam int id,Model model)
	{
		mensRepo.deleteById(id);
		model.addAttribute("mensShoes",mensRepo.findAll());
		return "AllMensShoes.jsp";
	}
	
	@RequestMapping("deleteMensShoes{id}")
	public String DeleteMens(@PathVariable(name = "id") int id,Model model)
	{
		mensRepo.deleteById(id);
		model.addAttribute("mensShoes",mensRepo.findAll());
		return "AllMensShoes.jsp";
	}
	
	@RequestMapping("deleteKidsShoes{id}")
	public String DeleteKidsShoes(@PathVariable(name = "id") int id,Model model)
	{
		kidsRepo.deleteById(id);
		model.addAttribute("kidsShoes",kidsRepo.findAll());
		return "AllKidsShoes.jsp";
	}
	
	@RequestMapping("deleteWomensShoes{id}")
	public String DeleteWomens(@PathVariable(name = "id") int id,Model model)
	{
		womansRepo.deleteById(id);
		model.addAttribute("womensShoes",womansRepo.findAll());
		return "AllWomansShoes.jsp";
	}
	@RequestMapping("add{id}")
	public String add(@PathVariable(name = "id") int id,KidsProduct kidsShoes,Model model) {
	    System.out.println("Id" +id);
	    listKids = kidsRepo.findById(id);
	    kidsShoes = listKids.get();
		kidsShoesList.add(kidsShoes);
		model.addAttribute("kidsShoes",kidsRepo.findAll());
		model.addAttribute("size",kidsShoesList.size());
		return "kidsShoes.jsp";      
  	   }
	@RequestMapping("KidsShoesAddCart")
	public String addToCartKids(Model model)
	{
		model.addAttribute("listKids",kidsShoesList); 
		return"KidsAddToCart.jsp";
		 
	}
	
	@RequestMapping("removeKidsShoes{id}")
	public String RemoveCartKids(Model model ,@PathVariable(name = "id") int id,KidsProduct kidsShoes)
	{
		System.out.println("kids"+kidsShoesList);
	    for(int i=0; i<kidsShoesList.size(); i++)
	    {
	    	if(kidsShoesList.get(i).getId()==id)
	    	{
	    		kidsShoesList.remove(i);
	    	}
	    }
	    	
		model.addAttribute("listKids",kidsShoesList);
		return"KidsAddToCart.jsp";
	}
	
	float amt = 0;
	@RequestMapping("calculateKidsShoes")
	public String calculateKidsShoes(Model model,HttpServletRequest request)
	{
		amt = 0;
		String qua = request.getParameter("quantity");
		System.out.println(qua);

        for(int i=0; i<kidsShoesList.size(); i++)
        {

        	String amount = kidsShoesList.get(i).getPrice();
        	amt += Float.parseFloat(amount);
        	
        }
    	System.out.println(amt);
    	model.addAttribute("amount",amt);
		model.addAttribute("listKids",kidsShoesList);
        return "CalculationKidsShoes.jsp";
	}
	@RequestMapping("payment")
	public String payment()
	{
		return "paymentShoes.jsp";
	}
	@RequestMapping("paymentSuccess1")
	public String paymentSucess()
	{
		return "paymentSuccess1.jsp";
	}
	@RequestMapping("addMeshShoes{id}")
	public String mensAddCart(@PathVariable(name = "id") int id,MensProducts mensShoes,Model model) {
	    System.out.println("Id" +id);
	    listMens = mensRepo.findById(id);
	    mensShoes = listMens.get();
		mensShoesList.add(mensShoes);
		model.addAttribute("mensShoes",mensRepo.findAll());
		System.out.println("list" +mensShoesList.size());
		model.addAttribute("size",mensShoesList.size());
		return "MensShoes.jsp";      
  	  }
	@RequestMapping("mensShoesAddCart")
	public String addToCartMens(Model model)
	{
		model.addAttribute("listKids",mensShoesList); 
		return"MensAddToCart.jsp";
		 
	}
	@RequestMapping("removeMenssShoes{id}")
	public String RemoveCartMens(Model model ,@PathVariable(name = "id") int id,KidsProduct kidsShoes)
	{
	    for(int i=0; i<mensShoesList.size(); i++)
	    {
	    	if(mensShoesList.get(i).getId()==id)
	    	{
	    		mensShoesList.remove(i);
	    	}
	    }
	    	
		model.addAttribute("listKids",mensShoesList);
		return"MensAddToCart.jsp";
	}
	
	@RequestMapping("calculateMensShoes")
	public String calculateMensShoes(Model model,HttpServletRequest request)
	{
		amt = 0;
		String qua = request.getParameter("quantity");
		System.out.println(qua);

        for(int i=0; i<mensShoesList.size(); i++)
        {

        	String amount = mensShoesList.get(i).getPrice();
        	amt += Float.parseFloat(amount);
        	
        }
    	System.out.println(amt);
    	model.addAttribute("amount",amt);
		model.addAttribute("listKids",mensShoesList);
        return "CalculationMensShoes.jsp";
	}
	
	@RequestMapping("quantity")
	public String quantity(Model model,HttpServletRequest request)
	{
		String qua = request.getParameter("quantity");
		System.out.println(qua);
		return"MensAddToCart.jsp";
		 
	}
	@RequestMapping(value = "/exportpdf", produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> productReport() throws IOException {

		ByteArrayInputStream bis = ExportPdf.productReport(mensShoesList,amt,userName);
		
		System.out.println(mensShoesList);
    	System.out.println("amt"+amt);

		HttpHeaders headers = new HttpHeaders();

		headers.add("Content-Disposition", "attachment;filename=productreceipt.pdf");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bis));
	}	
	
	@RequestMapping(value = "/exportpdfKids", produces = MediaType.APPLICATION_PDF_VALUE)
	public ResponseEntity<InputStreamResource> productReportKids() throws IOException {

		ByteArrayInputStream bis = ExportPdfKids.productReport(kidsShoesList,amt,userName);
		
		System.out.println(mensShoesList);
    	System.out.println("amt"+amt);

		HttpHeaders headers = new HttpHeaders();

		headers.add("Content-Disposition", "attachment;filename=productreceipt.pdf");

		return ResponseEntity.ok().headers(headers).contentType(MediaType.APPLICATION_PDF)
				.body(new InputStreamResource(bis));
	}	
	
	@RequestMapping("contact")
	public String contactPage(Model model,ContactUs contactPage)
	{

		model.addAttribute("contactPage",contactPage);
		
		System.out.println("enter");
		return"Contact.jsp";
		 
	}
	
	@RequestMapping("contactSuccess")
	public String contactPageSuccess(Model model,ContactUs contactPage)
	{

		contactRepo.save(contactPage);
		return"index.jsp";
		 
	}

	@RequestMapping("queries")
	public String queriesPage(Model model,ContactUs contactPage)
	{
		System.out.println("enters");
		model.addAttribute("queries",contactRepo.findAll());
 		return"Queries.jsp";
		 
	}

}
