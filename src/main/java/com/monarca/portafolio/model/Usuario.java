package com.monarca.portafolio.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;



@Getter @Setter

@Entity

public class Usuario {
	 public Usuario() {
	  }

	  public Usuario(String usuario, String password) {
	    this.usuario = usuario;
	    this.password = password;
	  }
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)  
	public Long id;
	public String usuario;
	public String password;
	public String nombre;
	public String email;
	public Boolean activo;
}

