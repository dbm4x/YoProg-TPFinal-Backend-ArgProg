package com.monarca.portafolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.monarca.portafolio.model.Estudio;

@Repository

public interface EstudioRepository extends JpaRepository <Estudio, Long> {

}
