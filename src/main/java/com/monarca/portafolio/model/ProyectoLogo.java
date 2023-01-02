package com.monarca.portafolio.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;




@Entity
 
public class ProyectoLogo {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
	public Long id;
	public String logo;

}
