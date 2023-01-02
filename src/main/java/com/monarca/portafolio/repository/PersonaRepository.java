package com.monarca.portafolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.monarca.portafolio.model.Persona;

@Repository

public interface PersonaRepository extends JpaRepository <Persona, Long> {

}

