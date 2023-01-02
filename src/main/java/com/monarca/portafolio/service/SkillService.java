package com.monarca.portafolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.monarca.portafolio.model.Skill;
import com.monarca.portafolio.repository.SkillRepository;

@Service
public class SkillService implements ISkillService {

	@Autowired
	private SkillRepository skillRepository;

	@Override
	public List<Skill> getSkill() {
		List<Skill> listaSkill = skillRepository.findAll();

		return listaSkill;
	}

	@Override
	public Skill guardarSkill(Skill skill) {
		return skillRepository.save(skill);

	}

	@Override
	public List<Skill> guardarDragSkill(List<Skill> skill) {
		return skillRepository.saveAll(skill);
	}

	@Override
	public void borrarSkill(Long id) {

		skillRepository.deleteById(id);

	}

	@Override
	public Skill buscarSkill(Long id) {
		Skill skill = skillRepository.findById(id).orElse(null);
		return skill;
	}

}
