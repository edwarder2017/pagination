package com.page.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.page.entity.Province;
import com.page.service.ProvinceService;
import com.page.service.impl.ProvinceServiceImpl;


/**   
*    
* 项目名称：pagination   
* 类名称：ProvinceAction   
* 类描述：分页action
* 创建人：jzhang  
* 创建时间：2018年1月3日 下午2:45:00   
* 联系方式：1104975916@qq.com 
*      
*/
@WebServlet("/province/*")
public class ProvinceAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProvinceService provinceService = new ProvinceServiceImpl();
    		
    public ProvinceAction() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码
		response.setCharacterEncoding("utf-8");
		
		//获得path
		String path = request.getPathInfo();
		
		//设置默认当前页
		int currentPage = 1;
		//每页显示记录数
		int pageCount= 5;
		
		//获取前台页码
		String page = request.getParameter("page");
		if(null != page) {
			currentPage = Integer.valueOf(page);
		}
		
		//总页数
		int totalPage = provinceService.getTotalPage(pageCount);
		//对于页码的所有list数据
		List<Province> provinces =  provinceService.getProvinceByPage(currentPage, pageCount);
		
		request.setAttribute("provinces", provinces);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("currentPage", currentPage);
		
		if("/getPage".equals(path)){
			request.getRequestDispatcher("/WEB-INF/page/page.jsp").forward(request, response);
		}else if("/getFixedPage".equals(path)) {
			request.getRequestDispatcher("/WEB-INF/page/fixedPage.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
