package com.page.service;

import java.util.List;

import com.page.entity.Province;

/**   
*    
* 项目名称：pagination   
* 类名称：ProvinceService   
* 类描述：
* 创建人：jzhang  
* 创建时间：2018年1月3日 下午2:42:06   
* 联系方式：1104975916@qq.com 
*      
*/
public interface ProvinceService {
	
	/**
	 * 获取总页数
	 * @param pageCount
	 * @return
	 */
	public Integer getTotalPage(Integer pageCount);
	
	/**
	 * 获取列表
	 * @param currentPage
	 * @param pageCount
	 * @return
	 */
	public List<Province> getProvinceByPage(Integer currentPage, Integer pageCount);
	
}
