package com.github.sacull.koturno.repositories;

import com.github.sacull.koturno.entities.Host;
import com.github.sacull.koturno.entities.Inaccessibility;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface InaccessibilityRepo extends JpaRepository<Inaccessibility, Long> {

    Inaccessibility findByHostAndActiveIsTrueOrderByEndDesc(Host host);

    List<Inaccessibility> findAllByHostOrderByStartDesc(Host host);

    List<Inaccessibility> findAllByActiveIsTrue();

    List<Inaccessibility> findAllByOrderByStartDesc();

    List<Inaccessibility> findAllByActiveIsTrueOrderByStartDesc();

    List<Inaccessibility> findAllByHost(Host host);
}
