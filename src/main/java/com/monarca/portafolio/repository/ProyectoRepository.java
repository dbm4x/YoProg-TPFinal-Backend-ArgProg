package com.monarca.portafolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.monarca.portafolio.model.Proyecto;

@Repository

public interface ProyectoRepository extends JpaRepository <Proyecto, Long> {

}
