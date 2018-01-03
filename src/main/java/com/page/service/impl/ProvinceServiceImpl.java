package com.page.service.impl;

import java.util.List;

import com.page.dao.ProvinceDao;
import com.page.dao.impl.ProvinceDaoImpl;
import com.page.entity.Province;
import com.page.service.ProvinceService;


/**   
*    
* 项目名称：pagination   
* 类名称：ProvinceServiceImpl   
* 类描述：
* 创建人：jzhang  
* 创建时间：2018年1月3日 下午2:43:51   
* 联系方式：1104975916@qq.com 
*      
*/
public class ProvinceServiceImpl implements ProvinceService {
	private ProvinceDao provinceDao = new ProvinceDaoImpl();
	
	@Override
	public Integer getTotalPage(Integer pageCount) {
		Integer total = provinceDao.getTotalCount();
		return (total -1) / pageCount + 1;
	}

	@Override
	public List<Province> getProvinceByPage(Integer currentPage, Integer pageCount) {
		return provinceDao.getListByPage(currentPage, pageCount);
	}

}
