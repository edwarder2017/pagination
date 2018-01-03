package com.page.dao;

import java.util.List;

import com.page.entity.Province;

/**   
*    
* 项目名称：pagination   
* 类名称：ProvinceDao   
* 类描述：省份dao接口
* 创建人：jzhang  
* 创建时间：2018年1月3日 下午2:38:54   
* 联系方式：1104975916@qq.com 
*      
*/
public interface ProvinceDao {
	
	//获得总记录数
	public Integer getTotalCount();
	
	//根据当前页和每页记录数获取省份list
	public List<Province> getListByPage(Integer currentPage,Integer pageCount);
}
