package com.monarca.portafolio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.monarca.portafolio.model.Proyecto;
import com.monarca.portafolio.repository.ProyectoRepository;

@Service
public class ProyectoService implements IProyectoService {

	@Autowired
	private ProyectoRepository proyectoRepository;

	@Override
	public List<Proyecto> getProyecto() {
		List<Proyecto> listaProyecto = proyectoRepository.findAll();

		return listaProyecto;
	}

	@Override
	public Proyecto guardarProyecto(Proyecto proyecto) {
		return proyectoRepository.save(proyecto);

	}

	@Override
	public List<Proyecto> guardarDragProyecto(List<Proyecto> proyecto) {
		return proyectoRepository.saveAll(proyecto);
	}

	@Override
	public void borrarProyecto(Long id) {

		proyectoRepository.deleteById(id);

	}

	@Override
	public Proyecto buscarProyecto(Long id) {
		Proyecto proyecto = proyectoRepository.findById(id).orElse(null);
		return proyecto;
	}

}
