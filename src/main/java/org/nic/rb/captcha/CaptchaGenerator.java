package org.nic.rb.captcha;

import org.springframework.stereotype.Component;

import nl.captcha.Captcha;
import nl.captcha.backgrounds.TransparentBackgroundProducer;
import nl.captcha.noise.CurvedLineNoiseProducer;
import nl.captcha.text.producer.DefaultTextProducer;
import nl.captcha.text.renderer.DefaultWordRenderer;

@Component
public class CaptchaGenerator {

	public Captcha createCaptcha(int width, int height) {
		return new Captcha.Builder(width, height).addBackground(new TransparentBackgroundProducer()).addText(new DefaultTextProducer(), new DefaultWordRenderer())
				.addNoise(new CurvedLineNoiseProducer()).build();
	}
}
