package com.monarca.portafolio.service;

import java.util.List;


import com.monarca.portafolio.model.Persona;

public interface IPersonaService {

public List<Persona> getPersonas();
public Persona guardarPersona(Persona perso);
public void borrarPersona(Long  id);
public Persona buscarPersona(Long  id);

}
