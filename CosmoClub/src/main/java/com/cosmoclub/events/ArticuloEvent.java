package com.cosmoclub.events;

import org.springframework.context.ApplicationEvent;

public class ArticuloEvent extends ApplicationEvent{
	
	private static final long serialVersionUID = 1L;
	
	public ArticuloEvent(Object source) {
		
		
		super(source);
	
	}
	
}
