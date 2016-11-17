package com.phn.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * @author Knight
 *
 */
@Table(name="message")
@Entity
public class MessageModel {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false, length = 9)
	private Long id;
	@Column(name = "name", length = 30)
	private String name;
	@Column(name = "email", length = 30)
	private String email;
	@Column(name = "mes", nullable = false, length = 100)
	private String mes;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	@Column(name = "createtime")
	private Date createTime;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMes() {
		return mes;
	}
	public void setMes(String mes) {
		this.mes = mes;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
