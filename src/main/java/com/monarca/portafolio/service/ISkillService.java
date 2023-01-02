package com.monarca.portafolio.service;

import java.util.List;


import com.monarca.portafolio.model.Skill;

public interface ISkillService {

public List<Skill> getSkill();
public Skill guardarSkill(Skill perso);
public void borrarSkill(Long  id);
public Skill buscarSkill(Long  Persona_id);
public List<Skill> guardarDragSkill(List<Skill> skill);

}