/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Matricula;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Jose Luis Aguirre
 * @author Angelica Arroyave
 * @author Sofia Navas
 * @author Alejandro Castaño
 * @author Santiago Gaviria
 * @author Alejandro Marin
 */
@Local
public interface MatriculaFacadeLocal {

    void create(Matricula matricula);

    void edit(Matricula matricula);

    void remove(Matricula matricula);

    Matricula find(Object id);

    List<Matricula> findAll();

    List<Matricula> findRange(int[] range);
    
    List<Matricula> findByIdEstudiante(int id_estudiante);

    int count();
    
}
