package com.entity.view;

import com.entity.DingdanqianshouEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 订单签收
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-05 21:46:11
 */
@TableName("dingdanqianshou")
public class DingdanqianshouView  extends DingdanqianshouEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DingdanqianshouView(){
	}
 
 	public DingdanqianshouView(DingdanqianshouEntity dingdanqianshouEntity){
 	try {
			BeanUtils.copyProperties(this, dingdanqianshouEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
