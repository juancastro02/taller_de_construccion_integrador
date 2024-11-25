package com.appAlumnos.dao;

import com.appAlumnos.modelo.Alumno;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;


import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class AlumnoDAO {

    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    public void save(Alumno alumno) {
        entityManager.persist(alumno);
    }

    @Transactional(readOnly = true)
    public List<Alumno> findAll() {
        List<Alumno> alumnos = entityManager.createQuery("FROM Alumno", Alumno.class).getResultList();
        return alumnos;
    }
    
    @Transactional
    public Alumno findById(Long id) {
        return entityManager.find(Alumno.class, id);
    }

    @Transactional
    public void update(Alumno alumno) {
        entityManager.merge(alumno);
    }

    @Transactional
    public void saveOrUpdate(Alumno alumno) {
        if (alumno.getId() == null) {
            entityManager.persist(alumno); 
        } else {
            entityManager.merge(alumno); 
        }
    }

    @Transactional
    public void delete(Long id) {
        Alumno alumno = findById(id);
        if (alumno != null) {
            entityManager.remove(alumno);
        }
    }
}
