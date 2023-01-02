package com.monarca.portafolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.monarca.portafolio.model.Experiencia;
import com.monarca.portafolio.repository.ExperienciaRepository;

@Service
public class ExperienciaService implements IExpService {

	@Autowired
	private ExperienciaRepository expRepository;
	
	@Override
	public List<Experiencia> getExp() {
		List<Experiencia> listaExp = expRepository.findAll();
		
		return listaExp;
	}

	@Override
	public Experiencia guardarExp(Experiencia perso) {
		return expRepository.save(perso);
		
	}
	
	@Override
	public List<Experiencia> guardarDragExp(List<Experiencia> perso) {
		return expRepository.saveAll(perso);
	}
	
	@Override
	public void borrarExp(Long  id) {
		
		expRepository.deleteById(id);
		
	}

	@Override
	public Experiencia buscarExp(Long  id) {
		Experiencia exp = expRepository.findById(id).orElse(null);
		return exp;
	}
	
	
}
