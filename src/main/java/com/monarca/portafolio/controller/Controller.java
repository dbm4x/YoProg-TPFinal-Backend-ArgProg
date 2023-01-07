package com.monarca.portafolio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.monarca.portafolio.model.Estudio;
import com.monarca.portafolio.model.Experiencia;
import com.monarca.portafolio.model.Persona;
import com.monarca.portafolio.model.Skill;
import com.monarca.portafolio.model.Proyecto;

import com.monarca.portafolio.service.IEstudioService;
import com.monarca.portafolio.service.IExpService;
import com.monarca.portafolio.service.IPersonaService;
import com.monarca.portafolio.service.ISkillService;
import com.monarca.portafolio.service.IProyectoService;

@RestController
@CrossOrigin(origins = "https://angular-70dcf.firebaseapp.com", maxAge = 3600)

@RequestMapping("/api/")

public class Controller {
	@Autowired
	private IPersonaService interPersona;
	@Autowired
	private IExpService interExp;
	@Autowired
	private IEstudioService interEstudio;
	@Autowired
	private ISkillService interSkill;
	@Autowired
	private IProyectoService interProyecto;
	///////Experiencia
	
	@GetMapping(value = "/ver/exp",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Experiencia> buscarExp() {
		return interExp.getExp();
	}
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/exp/editar",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Experiencia editarExp(@RequestBody Experiencia experiencia) {
		
		try {
			return interExp.guardarExp(experiencia);
	} catch (Exception e) {
		return null;
	}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/exp/editar/drag",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Experiencia> dragExp(@RequestBody List<Experiencia> experiencia) {
		try {
	    	return interExp.guardarDragExp(experiencia);
		} catch (Exception e) {
			return null;
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@DeleteMapping(value = "/exp/eliminar/{id}")
	public ResponseEntity eliminarExp(@PathVariable Long id) {
		
		try {
	    	interExp.borrarExp(id);
	        return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value="/exp/crear/{id}",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Experiencia crearExp(@PathVariable Long id, @RequestBody Experiencia experiencia) {
		
		try {
		Experiencia editar = experiencia;
    	editar.Persona_id = id;
    	return interExp.guardarExp(editar);
	} catch (Exception e) {
		return null;
	}
	}

	
	/////////////////////////////PERSONA
	
	@GetMapping(value = "/ver/persona",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Persona buscarPersonas() {
		return interPersona.buscarPersona((long) 1);
	}
	
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/persona/editar",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Persona editarPersona(@RequestBody Persona persona) {
		try {
			return interPersona.guardarPersona(persona);
	} catch (Exception e) {
		return null;
	}
	}
	
	/////////ESTUDIO
	
	
	@GetMapping(value = "/ver/educacion",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Estudio> buscarEstudio() {
		return interEstudio.getEstudio();
	}
	
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/educacion/editar",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Estudio editarEstudio(@RequestBody Estudio estudio) {
		try {
			return interEstudio.guardarEstudio(estudio);
	} catch (Exception e) {
		return null;
	}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value="/educacion/crear/{id}",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Estudio crearEstudio(@PathVariable Long id, @RequestBody Estudio estudio) {
		
		try {
		Estudio editar = estudio;
    	editar.Persona_id = id;
    	return interEstudio.guardarEstudio(editar);
	} catch (Exception e) {
		return null;
	}
	}
	
	@PreAuthorize("isAuthenticated()")
	@DeleteMapping(value = "/educacion/eliminar/{id}")
	public ResponseEntity eliminarEstudio(@PathVariable Long id) {
		
		try {
			interEstudio.borrarEstudio(id);
	        return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/educacion/editar/drag",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Estudio> dragEstudio(@RequestBody List<Estudio> estudio) {
		try {
	    	return interEstudio.guardarDragEstudio(estudio);
		} catch (Exception e) {
			return null;
		}
	}
	
	
	
///////Skill
	
	@GetMapping(value = "/ver/skills",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Skill> buscarSkill() {
		return interSkill.getSkill();
	}
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/skills/editar",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Skill editarSkill(@RequestBody Skill skill) {
		
		try {
			return interSkill.guardarSkill(skill);
	} catch (Exception e) {
		return null;
	}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/skills/editar/drag",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Skill> dragSkill(@RequestBody List<Skill> skill) {
		try {
	    	return interSkill.guardarDragSkill(skill);
		} catch (Exception e) {
			return null;
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@DeleteMapping(value = "/skills/eliminar/{id}")
	public ResponseEntity eliminarSkill(@PathVariable Long id) {
		
		try {
	    	interSkill.borrarSkill(id);
	        return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value="/skills/crear/{id}",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Skill crearSkill(@PathVariable Long id, @RequestBody Skill skill) {
		
		try {
			Skill editar = skill;
  	editar.Persona_id = id;
  	return interSkill.guardarSkill(editar);
	} catch (Exception e) {
		return null;
	}
	}

///////Proyectos
	
	@GetMapping(value = "/ver/proyectos")
	public @ResponseBody List<Proyecto> buscarProyecto() {
		return interProyecto.getProyecto();
	}
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/proyectos/editar",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Proyecto editarProyecto(@RequestBody Proyecto proyecto) {
		
		try {
			return interProyecto.guardarProyecto(proyecto);
	} catch (Exception e) {
		return null;
	}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PutMapping(value = "/proyectos/editar/drag",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<Proyecto> dragProyecto(@RequestBody List<Proyecto> proyecto) {
		try {
	    	return interProyecto.guardarDragProyecto(proyecto);
		} catch (Exception e) {
			return null;
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@DeleteMapping(value = "/proyectos/eliminar/{id}")
	public ResponseEntity eliminarProyecto(@PathVariable Long id) {
		
		try {
			interProyecto.borrarProyecto(id);
	        return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value="/proyectos/crear/{id}",produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Proyecto crearProyecto(@PathVariable Long id, @RequestBody Proyecto proyecto) {
		
		try {
			Proyecto editar = proyecto;
	editar.Persona_id = id;
	return interProyecto.guardarProyecto(editar);
	} catch (Exception e) {
		return null;
	}
	}

	
	
}
