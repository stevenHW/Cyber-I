package com.websearch;

public class WebSearchResults {
	private String title;
	private String url;
	private String content;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public WebSearchResults(String title, String url) {
		super();
		this.title = title;
		this.url = url;
	}
}
