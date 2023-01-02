package com.monarca.portafolio.service;

import java.util.List;


import com.monarca.portafolio.model.Experiencia;

public interface IExpService {

public List<Experiencia> getExp();
public Experiencia guardarExp(Experiencia perso);
public void borrarExp(Long  id);
public Experiencia buscarExp(Long  Persona_id);
public List<Experiencia> guardarDragExp(List<Experiencia> perso);

}