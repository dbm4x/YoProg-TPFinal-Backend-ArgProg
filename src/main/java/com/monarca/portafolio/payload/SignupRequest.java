package com.monarca.portafolio.payload;

import javax.validation.constraints.*;

public class SignupRequest {
  @NotBlank
  @Size(min = 3, max = 20)
  private String usuario;

  @NotBlank
  @Size(max = 50)

  @NotBlank
  @Size(min = 6, max = 40)
  private String password;

  public String getUsuario() {
    return usuario;
  }

  public void setUsuario(String usuario) {
    this.usuario = usuario;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  
}
