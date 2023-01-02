package com.monarca.portafolio.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;



@Getter @Setter

@Entity
public class Estudio {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)  
	public Long id;
	public String fecha_inicio;
	public String fecha_fin;
	public String texto;
	public String logo;
	public String titulo;
	public Long Persona_id;
}
