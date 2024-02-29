package productcrudapp.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.Dao.ProductDao;
import productcrudapp.Model.Product;

@Controller
public class HomeController {
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/")
	public String home(Model m)
	{
		List<Product> products=productDao.getAllProducts();
		System.out.println(products.get(0));
		m.addAttribute("products", products);

		return "index";
	}
	
	@RequestMapping("/add-product")
	public String addProduct(Model m)
	{
		m.addAttribute("title", "Add Product");
		return "add_product";
	}
	
	
	@RequestMapping(value="handle-post" ,method=RequestMethod.POST )
	public RedirectView handlePost(@ModelAttribute Product product,HttpServletRequest req) {
		System.out.println(product);
		this.productDao.createProduct(product);
		RedirectView r=new RedirectView();
		r.setUrl(req.getContextPath()+"/");
		return r;
	}
	
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deletePost(@PathVariable("productId") int productId,HttpServletRequest req) {
		this.productDao.deleteProduct(productId);
		RedirectView r=new RedirectView();
		r.setUrl(req.getContextPath()+"/");
		return r;
	}
	
	@RequestMapping("/update/{productId}")
	public String updatePost(@PathVariable("productId") int productId,Model m) {
		Product product=this.productDao.getProduct(productId);
		m.addAttribute("product", product);
		return "update";
	}
}
