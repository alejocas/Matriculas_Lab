/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.ejb;

import com.udea.entity.Materia;
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
public interface MateriaFacadeLocal {

    void create(Materia materia);

    void edit(Materia materia);

    void remove(Materia materia);

    Materia find(Object id);

    List<Materia> findAll();

    List<Materia> findRange(int[] range);

    int count();
    
}
