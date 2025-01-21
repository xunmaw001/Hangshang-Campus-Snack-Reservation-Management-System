package com.entity.view;

import com.entity.PeisongyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 配送员
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-03-05 21:46:10
 */
@TableName("peisongyuan")
public class PeisongyuanView  extends PeisongyuanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public PeisongyuanView(){
	}
 
 	public PeisongyuanView(PeisongyuanEntity peisongyuanEntity){
 	try {
			BeanUtils.copyProperties(this, peisongyuanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
