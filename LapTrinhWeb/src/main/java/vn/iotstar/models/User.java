package vn.iotstar.models;

import java.io.Serializable;
import java.sql.Date;

public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String username;
	private String email;
	private String fullname;
	private String images;
	private String password;
	private String phone;
	private int roleid;
	private Date createdate;

	public User() {
		super();
	}

	public User(String username, String email, String fullname, String images, String password, String phone, Date createdate) {
		super();
		this.username = username;
		this.email = email;
		this.fullname = fullname;
		this.images = images;
		this.password = password;
		this.phone = phone;
		this.createdate = createdate;
	}

	public User(int id, String username, String email, String fullname, String images, String password, String phone,
			int roleid, Date createdate) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.fullname = fullname;
		this.images = images;
		this.password = password;
		this.phone = phone;
		this.roleid = roleid;
		this.createdate = createdate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getRoleid() {
		return roleid;
	}

	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", email=" + email + ", fullname=" + fullname + ", images="
				+ images + ", password=" + password + ", phone=" + phone + ", roleid=" + roleid + ", createdate="
				+ createdate + "]";
	}

}
