package com.jxnu.lab.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_file")  
public class Data {
	
	private int id;
	private int style;
	private String file_name;
	private String postfix_name;
	private News news;
	private int downLoad;
	private boolean is_main;
	
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStyle() {
		return style;
	}
	public void setStyle(int style) {
		this.style = style;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String fileName) {
		file_name = fileName;
	}
	public String getPostfix_name() {
		return postfix_name;
	}
	public void setPostfix_name(String postfixName) {
		postfix_name = postfixName;
	}
	public int getDownLoad() {
		return downLoad;
	}
	public void setDownLoad(int downLoad) {
		this.downLoad = downLoad;
	}
	public boolean isIs_main() {
		return is_main;
	}
	public void setIs_main(boolean isMain) {
		is_main = isMain;
	}
	@ManyToOne
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	
	

	
	
	
	
	
	
	
}
