package com.monarca.portafolio.service;

import java.util.List;


import com.monarca.portafolio.model.Estudio;

public interface IEstudioService {

public List<Estudio> getEstudio();
public Estudio guardarEstudio(Estudio estudio);
public void borrarEstudio(Long  id);
public Estudio buscarEstudio(Long  Persona_id);
public List<Estudio> guardarDragEstudio(List<Estudio> estudio);


}