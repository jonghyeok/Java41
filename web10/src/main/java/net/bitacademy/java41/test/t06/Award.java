package net.bitacademy.java41.test.t06;

import org.springframework.stereotype.Component;

@Component
public class Award {
	String title;
	String producer;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	
	
}
