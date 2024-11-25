package com.appAlumnos.controlador;

import com.appAlumnos.dao.AlumnoDAO;
import com.appAlumnos.modelo.Alumno;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/alumnos")
public class AlumnoControlador {

    @Autowired
    private AlumnoDAO alumnoDAO;

    @GetMapping("/listar")
    public String listarAlumnos(Model model) {
        List<Alumno> alumnos = alumnoDAO.findAll();
        model.addAttribute("alumnos", alumnos);
        return "alumnosList"; 
    }
    

    @GetMapping("/formulario")
    public String mostrarFormulario(Model model) {
        model.addAttribute("alumno", new Alumno());
        return "formulario";
    }

    @PostMapping("/guardar")
    public String guardarAlumno(@ModelAttribute Alumno alumno) {
        alumnoDAO.saveOrUpdate(alumno);
        return "redirect:/alumnos/listar";
    }
    @GetMapping("/editar/{id}")
    public String editarAlumno(@PathVariable Long id, Model model) {
        Alumno alumno = alumnoDAO.findById(id);
        model.addAttribute("alumno", alumno);
        return "formulario";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarAlumno(@PathVariable Long id) {
        alumnoDAO.delete(id);
        return "redirect:/alumnos/listar"; 
    }
}
