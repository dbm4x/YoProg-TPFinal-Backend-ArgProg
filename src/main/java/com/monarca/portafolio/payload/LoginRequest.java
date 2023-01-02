package com.monarca.portafolio.payload;

import javax.validation.constraints.NotBlank;

public class LoginRequest {
	@NotBlank
  private String usuario;

	@NotBlank
	private String password;

	public String getEmail() {
		return usuario;
	}

	public void setEmail(String usuario) {
		this.usuario = usuario;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}