package com.oaec.OnlineStore.dao.impl;



import com.oaec.OnlineStore.dao.UserDao;
import com.oaec.OnlineStore.entity.User;
import com.oaec.OnlineStore.util.CommonDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;


public class UserDaoImpl extends CommonDao implements UserDao, CommonDao.GetBean<User> {




	@Override
	public Map<String, Object> login(String account, String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		String sql = "SELECT * FROM user1 WHERE username = ?";
		Map<String, Object> map2 = query4Map(sql, account);
		if(map2 == null) {
			map.put("error", "用户不存在，登录失败！");
			return map;
		}
		String sql1 = "SELECT * FROM user1 WHERE username = ? AND password = ?";
		User user2 = query4Bean(sql1, this, account, password);
		if(user2 != null) {
			map.put("succ", user2);
			return map;
		}else {
			map.put("error", "密码错误，登录失败！");
			return map;
		}
	}
	@Override
	public Map<String, Object> register(User user, String password2) {

		String account = user.getUserName();
		String password = user.getPassword();
		boolean f1 = false, f2 = false;
		Map<String, Object> map = new HashMap<String, Object>();
		String sql = "SELECT * FROM user1 WHERE username = ?";
		User user3 = query4Bean(sql, this, account);
		if(user3 != null) {
			map.put("error", "注册失败，用户名已存在！");
			return map;
		}

		if(password.length() != 6) {
			map.put("error", "注册失败，密码长度错误！");
			return map;
		}
		for(int i = 0; i < password.length(); i++) {
			char charAt = password.charAt(i);
			if(charAt >= 48 && charAt <= 57) {
				f1 = true;
			}else if(charAt >= 65 && charAt <= 90 || charAt >= 97 && charAt <= 122) {
				f2 = true;
			}else {
				map.put("error", "注册失败，含有非法字符！");
				return map;
			}
		}
		if(f1) {
			if(f2) {
				if(password.equals(password2)) {
					String sql1 = "INSERT INTO user1 (uid1, username, password, tel) VALUES (seq_user1.nextval, ?, ?, ?)";
					int i = executeUpdate(sql1, account, password, user.getTel());
					if(i == 1) {
						map.put("succ", user);
						return map;
					}else {
						map.put("error", "注册失败！");
						return map;
					}
				}else {
					map.put("error", "注册失败，两次密码不一致！");
					return map;
				}
			}else {
				map.put("error", "注册失败，密码缺少字母！");
				return map;
			}
		}else {
			map.put("error", "注册失败，密码缺少数字！");
			return map;
		}
	}

	@Override
	public User getBeanFromResultSet(ResultSet rs) throws SQLException {
		User user = new User();
		user.setUserId(rs.getInt("user_id"));
		user.setUserName(rs.getString("user_name"));
		user.setPassword(rs.getString("password"));
		user.setIsDelete(rs.getInt("is_delete"));
		user.setIntegral(rs.getInt("integral"));
		user.setIsMember(rs.getInt("is_member"));
		user.setBalance(rs.getInt("balance"));
		user.setGender(rs.getString("gender"));
		user.setBirth(rs.getDate("birth"));
		user.setRegisterTime(rs.getDate("register_time"));
		user.setPayPassword(rs.getInt("pay_password"));
		user.setTel(rs.getString("tel"));
		user.setCheckIn(rs.getInt("check_in"));
		return user;
	}
	/*@Override
	public List<User> allUser() {
		String sql = "SELECT * FROM user1";
		List<User> list = query4BeanList(sql, this);
		return list;
	}
	@Override
	public User queryUserById(int userId) {
		String sql = "SELECT * FROM user1 WHERE uid1 = ?";
		User user2 = query4Bean(sql, this, userId);
		return user2;
	}
	@Override
	public List<User> allUserBesidesSelf(User user) {
		Integer userId = user.getUserId();
		String sql = "SELECT * FROM user1 WHERE uid1 != ?";
		List<User> list2 = query4BeanList(sql, this, userId);
		return list2;
	}
	@Override
	public Map<String, Object> amendMessage(User user) {
		Map<String, Object> map = new HashMap<String, Object>();
		String account = user.getUserName();
		Integer userId = user.getUserId();
		String sql = "SELECT * FROM user1 WHERE username = ? AND uid1 != ?";
		User user3 = query4Bean(sql, this, account, userId);
		if(user3 != null) {
			map.put("error", "修改失败，用户名已存在！");
			return map;
		}
		String password = user.getPassword();
		Integer age = user.getAge();
		String gender = user.getGender();
		String email = user.getEmail();
		String sql1 = "UPDATE user1 SET username = ?, password = ?, age = ?, gender = ?, email = ? WHERE uid1 = ?";
		int i = executeUpdate(sql1, account, password, age, gender, email, userId);
		if(i == 1) {
			map.put("succ", user);
			return map;
		}else {
			map.put("error", "修改失败");
			return map;
		}
	}
	@Override
	public void logout(User user) {
		Integer userId = user.getUserId();
		String sql = "DELETE FROM user1 WHERE uid1 = ?";
		executeUpdate(sql, userId);
		return ;
	}
	@Override
	public User getBeanFromResultSet(ResultSet rs) throws SQLException {
		User user = new User();
		user.setUserId(rs.getInt("uid1"));
		user.setAccount(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setIsAdmin(rs.getInt("is_admin") == 1);
		user.setBalance(rs.getDouble("balance"));
		user.setEmail(rs.getString("email"));
		user.setGender(rs.getString("gender"));
		user.setAge(rs.getInt("age"));
		user.setTel(rs.getString("tel"));
		return user;
	}
	@Override
	public Map<String, Object> findPassword(String account, String tel) {
		Map<String, Object> map = new HashMap<>();
		String sql = "SELECT * FROM user1 WHERE username = ?";
		User user2 = query4Bean(sql, this, account);
		if(user2 == null) {
			map.put("error", "账户不存在！");
			return map;
		}
		String tel2 = "";
		if(user2 != null) {
			tel2 = user2.getTel();
		}

		if(tel2 == null) {
			map.put("error", "此账户手机号为空！");
			return map;
		}

		if(!tel2.equals(tel)) {
			map.put("error", "手机号不匹配！");
			return map;
		}
		String password2 = user2.getPassword();
		map.put("succ", password2);
		return map;
	}

	@Override
	public void Charge(double money, int uid) {
		String sql = "UPDATE user1 SET balance = ? WHERE uid1 = ?";
		executeUpdate(sql, money, uid);
	}

	@Override
	public Double showBalance(int uid) {
		String sql = "SELECT * FROM user1 WHERE uid1 = ?";
		User user2 = query4Bean(sql, this, uid);
		return user2.getBalance();
	}*/
}
