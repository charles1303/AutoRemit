package com.dataligence.autoremit.config.mvc;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

@ControllerAdvice
public class JsonPConfiguration extends AbstractJsonpResponseBodyAdvice {
	
	public JsonPConfiguration() {
        super("callback");
    }

}
