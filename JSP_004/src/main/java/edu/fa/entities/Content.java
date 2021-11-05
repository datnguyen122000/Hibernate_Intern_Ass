package edu.fa.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Content {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String brief;
	private String content;
	private Date createdDate;
	@Transient
	private String timeView;

	public Content() {
	}

	public Content(String title, String brief, String content, Date createdDate) {
		this.title = title;
		this.brief = brief;
		this.content = content;
		this.createdDate = createdDate;
	}

	public Content(int id, String title, String brief, String content, Date createdDate, String timeView) {
		this.id = id;
		this.title = title;
		this.brief = brief;
		this.content = content;
		this.createdDate = createdDate;
		this.timeView = timeView;
	}

	public String getTimeView() {
		return timeView;
	}

	public void setTimeView(String timeView) {
		this.timeView = timeView;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "Content [id=" + id + ", title=" + title + ", brief=" + brief + ", content=" + content + ", createdDate="
				+ createdDate + ", timeView=" + timeView + "]";
	}

}
