package com.francisco.pontointeligente.api.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordUtils {

	public static final Logger log = LoggerFactory.getLogger(PasswordUtils.class);
	
	/**
	 * Gera um hash utilizando o BCrypt.
	 * 
	 * @param senha
	 * @return String
	 */
	
	public static 	String gerarBcrypt(String senha) {
		if(senha==null) {
			return senha;
		}
		
		log.info("Gerando senha com BCrypt.");
		BCryptPasswordEncoder bCryptEncoder =  new BCryptPasswordEncoder();
		return bCryptEncoder.encode(senha);
	}
}
