package com.page.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.page.dao.ProvinceDao;
import com.page.entity.Province;
import com.page.template.JdbcTemplate;
import com.page.template.interf.SqlQuerier;
import com.page.util.JdbcUtil;

public class ProvinceDaoImpl implements ProvinceDao {


	@Override
	public Integer getTotalCount() {
		JdbcTemplate<Integer> jdbcTemplate = new JdbcTemplate<>();
		return jdbcTemplate.query(new SqlQuerier<Integer>() {

			@Override
			public Integer execute(Connection con) throws SQLException {
				Integer i = 0;
				String sql = "select count(*) from province";
				PreparedStatement pst = null;
				ResultSet rs = null;
				try {
					pst = con.prepareStatement(sql);
					rs = pst.executeQuery();
					if(rs.next()) {
						i = rs.getInt(1);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					JdbcUtil.close(rs, pst, null);
				}
				return i;
			}
		});
	}

	@Override
	public List<Province> getListByPage(Integer currentPage, Integer pageCount) {
		JdbcTemplate<List<Province>> jdbcTemplate = new JdbcTemplate<>();
		return jdbcTemplate.query(new SqlQuerier<List<Province>>() {
			
			@Override
			public List<Province> execute(Connection con) throws SQLException {
				String sql = "select * from (select inner_.*,rownum rn from province inner_ where "
						+ "ROWNUM <= " + (currentPage * pageCount) + ") outter_ "
						+ "where OUTTER_.rn > " + (currentPage -1) * pageCount;
				PreparedStatement pst = null;
				ResultSet rs = null;
				List<Province> list = null;
				try {
					pst = con.prepareStatement(sql);
					rs = pst.executeQuery();
					list = new ArrayList<>();
					while (rs.next()) {
						
						Province province = new Province();
						province.setId(rs.getInt("id"));
						province.setCode(rs.getString("code"));
						province.setName(rs.getString("name"));
						
						list.add(province);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					JdbcUtil.close(rs, pst, null);
				}
				return list;
			}
		});
	}

}
