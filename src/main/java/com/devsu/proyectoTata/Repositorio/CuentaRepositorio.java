/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.devsu.proyectoTata.Repositorio;

import com.devsu.proyectoTata.Modelo.Cuenta;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Jorge
 */
public interface CuentaRepositorio extends JpaRepository<Cuenta,Integer> {
    
}
