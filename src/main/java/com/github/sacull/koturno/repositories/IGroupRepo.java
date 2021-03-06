package com.github.sacull.koturno.repositories;

import com.github.sacull.koturno.entities.IGroup;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IGroupRepo extends JpaRepository<IGroup, Long> {

    IGroup findByName(String name);
}
