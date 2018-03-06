/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Estudiante;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Jose Luis Aguirre
 * @author Angelica Arroyave
 * @author Sofia Navas
 * @author Alejandro Castaño
 * @author Santiago Gaviria
 * @author Alejandro Marin
 */
@Stateless
public class EstudianteFacade extends AbstractFacade<Estudiante> implements EstudianteFacadeLocal {

    @PersistenceContext(unitName = "Matriculas_LabPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EstudianteFacade() {
        super(Estudiante.class);
    }

    @Override
    public boolean checkLog(String usuario, String contrasena) {
        String query = "SELECT e FROM Estudiante e WHERE e.usuario = :usuario AND e.contrase\u00f1a = :contrase\u00f1a";
        Query q = em.createQuery(query);
        //em.createNamedQuery(query)
        q.setParameter("usuario", usuario);
        q.setParameter("contrase\u00f1a", contrasena);
        return q.getResultList().size()>0;
    }

    @Override
    public Estudiante findByUsuario(String usuario) {
       
        Query q = em.createNamedQuery("Estudiante.findByUsuario");
        q.setParameter("usuario", usuario);
        return (Estudiante) q.getSingleResult();
    }
    
}
