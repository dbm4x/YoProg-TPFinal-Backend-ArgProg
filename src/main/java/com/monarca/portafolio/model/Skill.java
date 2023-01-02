package com.monarca.portafolio.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;



@Getter @Setter

@Entity
public class Skill {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)  
	public Long id;
	public String nombre;
	public String porcentaje;
	public String color;
	public String texto;
	public String logo;
	public Long Persona_id;
}
