package com.oaec.OnlineStore.dao;


import com.oaec.OnlineStore.entity.User;

import java.util.Map;


public interface UserDao {

	Map<String, Object> queryByTel(String tel);

	Integer doInsert(User user);

	Map<String, Object> findPassword(String account, String tel);
	/*List<User> allUser();

	User queryUserById(int userId);

	List<User> allUserBesidesSelf(User user);

	Map<String, Object> amendMessage(User user);

	void logout(User user);

	Map<String, Object> findPassword(String account, String tel);

	void Charge(double money, int uid);

	Double showBalance(int uid);*/
	Map<String,Object> queryByUserId(Integer userId);
}
