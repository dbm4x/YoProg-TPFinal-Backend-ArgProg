package com.monarca.portafolio.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;



@Getter @Setter

@Entity
public class Experiencia {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)  
	public Long id;
	public String titulo;
	public String subtitulo;
	public String texto;
	public String logo;
	public String link;
	public String fecha_inicio;
	public String fecha_fin;
	public Long Persona_id;
}
