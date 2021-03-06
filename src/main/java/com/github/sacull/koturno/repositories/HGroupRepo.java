package com.github.sacull.koturno.repositories;

import com.github.sacull.koturno.entities.HGroup;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HGroupRepo extends JpaRepository<HGroup, Long> {

    HGroup findByName(String name);
}
