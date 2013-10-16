package com.jxnu.lab.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="t_news_tags")
public class News_Tags {

	private int id;
	private News news;
	private Tags tags;
	
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	@ManyToOne
	public Tags getTags() {
		return tags;
	}
	public void setTags(Tags tags) {
		this.tags = tags;
	}
	
	
}
