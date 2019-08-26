package com.zhg.javakc.modules.system.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.authc.credential.PasswordMatcher;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.system.user.dao.UserDao;
import com.zhg.javakc.modules.system.user.entity.UserEntity;

/**
 * 基础用户信息模块逻辑层实现
 * @author zhou
 * @version 0.1
 */
@Service
@Transactional(readOnly = true)
public class UserService extends BaseService<UserDao, UserEntity>{
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private JdbcRealm jdbcRealm;
	
	/**
	 * 分页查询符合条件用户信息
	 * @param page
	 * @param entity
	 * @return
	 */
	public Page<UserEntity> findUser(Page<UserEntity> page, UserEntity entity) {
		// 设置分页参数
		entity.setPage(page);
		// 执行分页查询
		page.setList(userDao.findList(entity));
		return page;
	}
	
	/**
	 * 添加用户, 绑定角色信息
	 * @param entity
	 * @param roleIds
	 */
	@Transactional(readOnly = false)
	public void save(UserEntity entity, String[] roleIds)
	{
		String userId = CommonUtil.uuid();
		entity.setUserId( userId );
		
		PasswordMatcher passwordMatcher = (PasswordMatcher)jdbcRealm.getCredentialsMatcher();
		String encryptPassword = passwordMatcher.getPasswordService().encryptPassword(entity.getLoginPass());
		entity.setLoginPass(encryptPassword);
		
		userDao.insert(entity);
		
		for(String roleId:roleIds)
		{
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("userId", userId);
			data.put("roleId", roleId);
			userDao.insertRelation(data);
		}
	}
	
	/**
	 * 修改用户, 绑定角色信息
	 * @param entity
	 * @param roleIds
	 */
	@Transactional(readOnly = false)
	public void update(UserEntity entity, String[] roleIds)
	{
		userDao.update(entity);
		
		userDao.deleteRelation(entity.getUserId());
		
		for(String roleId:roleIds)
		{
			Map<String, Object> data = new HashMap<String, Object>();
			data.put("userId", entity.getUserId());
			data.put("roleId", roleId);
			userDao.insertRelation(data);
		}
	}
	
	/**
	 * 删除用户及相关信息
	 */
	@Transactional(readOnly = false)
	public void delete(String[] id) {
		for(String userId: id)
		{
			userDao.deleteRelation(userId);
		}
		dao.delete(id);
	}
	
	/**
	 * 查询用户密码
	 * @param loginName
	 * @return
	 */
	public String login(String loginName)
	{
		return userDao.login(loginName);
	}
	
	/**
	 * 根据登陆名称获取登陆人相关信息
	 * @param loginName
	 * @return
	 */
	public UserEntity findByName(String loginName)
	{
		return userDao.findByName(loginName);
	}
	
	
	public List<Map<String,Object>> queryCharts(){
		List<Map<String,Object>> list = new ArrayList<>();
		
		Map<String,Object> map1 = new HashMap<>();
		map1.put("name", "北京");
		map1.put("data", new double[] {12.1,222,33,44,55,66,77,88,99,10,11,12});
		
		Map<String,Object> map2 = new HashMap<>();
		map2.put("name", "上海");
		map2.put("data", new double[] {80,222,33,44,55,600,77,88,99,10,11,12});
		
		Map<String,Object> map3 = new HashMap<>();
		map3.put("name", "广州");
		map3.put("data", new double[] {400,222,33,44,55,1000,77,88,99,10,11,12});
		
		list.add(map1);
		list.add(map2);
		list.add(map3);
		
		return list;
	}
	
	
	
	
	
}
