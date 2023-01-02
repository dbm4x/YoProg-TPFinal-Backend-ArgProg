package com.monarca.portafolio.service;

import java.util.List;


import com.monarca.portafolio.model.Proyecto;

public interface IProyectoService {

public List<Proyecto> getProyecto();
public Proyecto guardarProyecto(Proyecto perso);
public void borrarProyecto(Long  id);
public Proyecto buscarProyecto(Long  Persona_id);
public List<Proyecto> guardarDragProyecto(List<Proyecto> proyecto);

}