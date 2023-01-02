package com.monarca.portafolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.monarca.portafolio.model.Estudio;
import com.monarca.portafolio.repository.EstudioRepository;

@Service
public class EstudioService implements IEstudioService {

	@Autowired
	private EstudioRepository estudioRepository;

	@Override
	public List<Estudio> getEstudio() {
		List<Estudio> listaExp = estudioRepository.findAll();
		
		return listaExp;
	}

	@Override
	public Estudio guardarEstudio(Estudio perso) {
		return estudioRepository.save(perso);	
	}

	@Override
	public void borrarEstudio(Long  id) {
		
		estudioRepository.deleteById(id);
		
	}

	@Override
	public Estudio buscarEstudio(Long  id) {
		Estudio exp = estudioRepository.findById(id).orElse(null);
		return exp;
	}
	
	@Override
	public List<Estudio> guardarDragEstudio(List<Estudio> estudio) {
		return estudioRepository.saveAll(estudio);
	}
	
	
	
}
