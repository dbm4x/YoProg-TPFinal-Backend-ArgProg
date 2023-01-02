package com.monarca.portafolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.monarca.portafolio.model.Persona;

import com.monarca.portafolio.repository.PersonaRepository;

@Service
public class PersonaService implements IPersonaService {

	@Autowired
	private PersonaRepository persoRepository;

	@Override
	public List<Persona> getPersonas() {
		List<Persona> listaPersonas = persoRepository.findAll();
		
		return listaPersonas;
	}

	@Override
	public Persona guardarPersona(Persona perso) {
		return persoRepository.save(perso);
		
	}

	@Override
	public void borrarPersona(Long  id) {
		
		persoRepository.deleteById(id);
		
	}

	@Override
	public Persona buscarPersona(Long  id) {
		Persona perso = persoRepository.findById(id).orElse(null);
		return perso;
	}
	
	
}
