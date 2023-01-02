package com.monarca.portafolio.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.PrimaryKeyJoinColumn;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Getter @Setter

@Entity
public class Proyecto {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long id;
	public String titulo;
	public String subtitulo;
	public String texto;
	public String logo;
	public String link;
	public Long Persona_id;
	public String fecha_inicio;
	public String fecha_fin; 
	  
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "proyecto_id")
    @OrderBy("id")
    private Set<ProyectoLogo> proyectoLogos = new HashSet<>();


	   public Set<ProyectoLogo> getProyectoLogo() {
	        return proyectoLogos; 
	    }
 
	    public void setProyectoLogo(Set<ProyectoLogo> proyectoLogos) {

	        this.proyectoLogos = proyectoLogos;
	    }
	   
}
