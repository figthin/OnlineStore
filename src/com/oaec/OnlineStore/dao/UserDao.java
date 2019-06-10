package com.oaec.OnlineStore.dao;


import com.oaec.OnlineStore.entity.User;

import java.util.Map;


public interface UserDao {

	Map<String, Object> login(String account, String password);

	Map<String, Object> register(User user, String password2);

	/*List<User> allUser();

	User queryUserById(int userId);

	List<User> allUserBesidesSelf(User user);

	Map<String, Object> amendMessage(User user);

	void logout(User user);

	Map<String, Object> findPassword(String account, String tel);

	void Charge(double money, int uid);

	Double showBalance(int uid);*/
}
