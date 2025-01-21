package com.dao;

import com.entity.DingdanqianshouEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DingdanqianshouVO;
import com.entity.view.DingdanqianshouView;


/**
 * 订单签收
 * 
 * @author 
 * @email 
 * @date 2022-03-05 21:46:11
 */
public interface DingdanqianshouDao extends BaseMapper<DingdanqianshouEntity> {
	
	List<DingdanqianshouVO> selectListVO(@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);
	
	DingdanqianshouVO selectVO(@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);
	
	List<DingdanqianshouView> selectListView(@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);

	List<DingdanqianshouView> selectListView(Pagination page,@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);
	
	DingdanqianshouView selectView(@Param("ew") Wrapper<DingdanqianshouEntity> wrapper);
	

}
