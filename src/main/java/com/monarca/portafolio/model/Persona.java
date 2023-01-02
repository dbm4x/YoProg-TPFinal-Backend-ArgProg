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
public class Persona {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)  
	public Long id;
	public String nombre;
	public String apellido;
	public String localidad;
	public String titulo;
	public String foto_perfil_url;
	public String foto_portada;
	public Boolean canvas;
	public Boolean interactivo;
	public String velocidad;
	public String densidad;
	public String particula;
	
	@OneToOne(cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private Acercade acercade;	
	
    public void setAcercade(Acercade acercade)
    {
            this.acercade = acercade;
    }

    public Acercade getAcercade()
    {
            return acercade;
    }
}
