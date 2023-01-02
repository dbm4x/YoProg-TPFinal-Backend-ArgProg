package com.monarca.portafolio.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import lombok.Getter;
import lombok.Setter;



@Getter @Setter

@Entity
public class Acercade {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)  

	public Long id;
	public String titulo;
	public String subtitulo;
	public String texto;
	public Boolean visible;
	
	@OneToOne(cascade = CascadeType.ALL)
    private Acercade acercade;	
}
