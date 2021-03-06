package com.github.sacull.koturno.services;

import com.github.sacull.koturno.entities.HGroup;
import com.github.sacull.koturno.entities.Host;
import com.github.sacull.koturno.entities.User;
import com.github.sacull.koturno.repositories.HostRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HostService {

    private HostRepo hostRepo;

    @Autowired
    public HostService(HostRepo hostRepo) {
        this.hostRepo = hostRepo;
    }

    public List<Host> getAllHosts() {
        return hostRepo.findAll();
    }

    public Host save(Host host) {
        return hostRepo.save(host);
    }

    public List<Host> findAllByHostGroup(HGroup hGroup) {
        return hostRepo.findAllByHostGroup(hGroup);
    }

    public Host getHostById(Long id) {
        return hostRepo.getOne(id);
    }

    public void delete(Host host) {
        hostRepo.delete(host);
    }

    public Host getHostByAddress(String address) {
        return hostRepo.findByAddress(address);
    }

    public List<Host> findAllByName() {
        return hostRepo.findAllByOrderByName();
    }

    public Long countAllByHostGroup(HGroup group) {
        return hostRepo.countAllByHostGroup(group);
    }
}
