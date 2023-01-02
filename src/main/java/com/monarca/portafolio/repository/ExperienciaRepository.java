package com.monarca.portafolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.monarca.portafolio.model.Experiencia;

@Repository

public interface ExperienciaRepository extends JpaRepository <Experiencia, Long> {

}
