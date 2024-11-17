package com.mycompany.hu.sprint1.Entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EncuestaCategorizacionVO implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)

	private int id;

	@Basic
	private int estadoAnimo;
	private int situacionEstresante;
	private int relacionComida;
	private int patronSueno;
	private int ninguna;
	private String categoriaPaciente[] = new String[2];
	private int respuestas[] = new int[4];
	private String descripcionTrastorno;

	public EncuestaCategorizacionVO() {
	}

	public EncuestaCategorizacionVO(int id, int estadoAnimo, int situacionEstresante, int relacionComida, int patronSueno, int ninguna, String descripcionTrastorno) {
		this.id = id;
		this.estadoAnimo = estadoAnimo;
		this.situacionEstresante = situacionEstresante;
		this.relacionComida = relacionComida;
		this.patronSueno = patronSueno;
		this.ninguna = ninguna;
		this.descripcionTrastorno = descripcionTrastorno;
	}

	public EncuestaCategorizacionVO(int estadoAnimo, int situacionEstresante, int relacionComida, int patronSueno, int ninguna, String descripcionTrastorno) {
		this.estadoAnimo = estadoAnimo;
		this.situacionEstresante = situacionEstresante;
		this.relacionComida = relacionComida;
		this.patronSueno = patronSueno;
		this.ninguna = ninguna;
		this.descripcionTrastorno = descripcionTrastorno;
	}

	public String[] getCategoriaPaciente() {
		return categoriaPaciente;
	}

	public void setCategoriaPaciente(String[] categoriaPaciente) {
		this.categoriaPaciente = categoriaPaciente;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEstadoAnimo() {
		return estadoAnimo;
	}

	public void setEstadoAnimo(int estadoAnimo) {
		this.estadoAnimo = estadoAnimo;
	}

	public int getNinguna() {
		return ninguna;
	}

	public void setNinguna(int ninguna) {
		this.ninguna = ninguna;
	}

	public int[] getRespuestas() {
		return respuestas;
	}

	public void setRespuestas(int[] respuestas) {
		this.respuestas = respuestas;
	}

	public int getEstadoEmocional() {
		return estadoAnimo;
	}

	public void setEstadoEmocional(int estadoEmocional) {
		this.estadoAnimo = estadoEmocional;
	}

	public int getSituacionEstresante() {
		return situacionEstresante;
	}

	public void setSituacionEstresante(int situacionEstresante) {
		this.situacionEstresante = situacionEstresante;
	}

	public int getRelacionComida() {
		return relacionComida;
	}

	public void setRelacionComida(int relacionComida) {
		this.relacionComida = relacionComida;
	}

	public int getPatronSueno() {
		return patronSueno;
	}

	public void setPatronSueno(int patronSueno) {
		this.patronSueno = patronSueno;
	}

	public String getDescripcionTrastorno() {
		return descripcionTrastorno;
	}

	public void setDescripcionTrastorno(String descripcionTrastorno) {
		this.descripcionTrastorno = descripcionTrastorno;
	}

	public void conteoRespuestas() {
		estadoAnimo = 0;
		situacionEstresante = 0;
		relacionComida = 0;
		patronSueno = 0;
		ninguna = 0;
		for (int i = 0; i < respuestas.length; i++) {
			if (respuestas[i] == 1) {
				estadoAnimo++;
			} else if (respuestas[i] == 2) {
				situacionEstresante++;
			} else if (respuestas[i] == 3) {
				relacionComida++;
			} else if (respuestas[i] == 4) {
				patronSueno++;
			} else if (respuestas[i] == 5) {
				ninguna++;
			}
		}
		/*
        System.out.println("estado animo " + estadoAnimo);
        System.out.println("Situacion estresante " + situacionEstresante);
        System.out.println("Relacion comida " + relacionComida);
        System.out.println("Patron sueno " + patronSueno);
        System.out.println("ninguna " + ninguna);
        System.out.println(" ");*/
	}

	/*Categoria paciente es una arreglo de tamaño 2, en la primera posicion se guardara
    siempre la categoria del paciente con la que se buscara al profesional para asignarlo,
    en la segunda posicion se guardara la categoria para mostrar, es decir la combinacion*/
	public void categorizarArea() {

		if (estadoAnimo >= 2) {
			categoriaPaciente[0] = "Trastornos del Estado de Animo";
			categoriaPaciente[1] = "Trastornos del Estado de Animo";
			descripcionTrastorno = "El paciente presenta síntomas de cambios significativos en el estado de ánimo, como tristeza o irritabilidad persistentes que afectan su bienestar diario.";
		}

		if (situacionEstresante >= 2) {
			categoriaPaciente[0] = "Trastornos de Ansiedad";
			categoriaPaciente[1] = "Trastornos de Ansiedad";
			descripcionTrastorno = "El paciente experimenta altos niveles de ansiedad o estrés, dificultando su capacidad de afrontamiento en situaciones diarias y afectando su salud mental.";
		}

		if (relacionComida >= 2) {
			categoriaPaciente[0] = "Trastornos Alimentarios";
			categoriaPaciente[1] = "Trastornos Alimentarios";
			descripcionTrastorno = "Hay indicios de una relación disfuncional con la alimentación, incluyendo hábitos alimenticios irregulares o preocupación excesiva por el peso y la imagen corporal.";
		}

		if (patronSueno >= 2) {
			categoriaPaciente[0] = "Trastornos del Sueño";
			categoriaPaciente[1] = "Trastornos del Sueño";
			descripcionTrastorno = "El paciente manifiesta problemas relacionados con el sueño, como insomnio o falta de descanso adecuado, afectando su energía y concentración.";
		}

		if (ninguna >= 2) {
			categoriaPaciente[0] = "Ninguna";
			categoriaPaciente[1] = "Ninguna";
			descripcionTrastorno = "El paciente no presenta síntomas significativos en las áreas de estado de ánimo, ansiedad, alimentación o sueño que indiquen un trastorno específico.";
		}

// Combinaciones de Trastornos del Estado de Ánimo
		if (estadoAnimo == 2 && situacionEstresante == 2) {
			categoriaPaciente[0] = "Trastornos del Estado de Animo";
			categoriaPaciente[1] = "Trastornos del estado de ánimo y Trastornos de Ansiedad";

			descripcionTrastorno = "Síntomas de cambios en el estado de ánimo acompañados de altos niveles de ansiedad, lo que afecta la estabilidad emocional y la capacidad de afrontar el estrés.";
		}

		if (estadoAnimo == 2 && relacionComida == 2) {
			categoriaPaciente[0] = "Trastornos Alimentarios";
			categoriaPaciente[1] = "Trastornos del estado de ánimo y Trastornos Alimentarios";
			descripcionTrastorno = "El paciente muestra alteraciones en el estado de ánimo y en su relación con la alimentación, lo que podría incluir comportamientos compulsivos o restrictivos.";
		}

		if (estadoAnimo == 2 && patronSueno == 2) {
			categoriaPaciente[0] = "Trastornos del Sueño";
			categoriaPaciente[1] = "Trastornos del estado de ánimo y Trastornos del Sueño";
			descripcionTrastorno = "Cambios en el estado de ánimo acompañados de problemas en el sueño, afectando el descanso y aumentando los síntomas de cansancio o irritabilidad.";
		}

		if (estadoAnimo == 2 && ninguna == 2) {
			categoriaPaciente[0] = "Trastornos del Estado de Animo";
			categoriaPaciente[1] = "Trastornos del Estado de Animo";
			descripcionTrastorno = "El paciente presenta síntomas en su estado de ánimo, sin signos significativos de ansiedad, alimentación o problemas de sueño.";
		}

// Combinaciones de Trastornos de Ansiedad
		if (situacionEstresante == 2 && relacionComida == 2) {
			categoriaPaciente[0] = "Trastornos de Ansiedad";
			categoriaPaciente[1] = "Trastornos de Ansiedad y Trastornos Alimentarios";
			descripcionTrastorno = "El paciente experimenta altos niveles de ansiedad que se ven reflejados en su relación con la alimentación, generando posibles conductas alimenticias no saludables.";
		}

		if (situacionEstresante == 2 && patronSueno == 2) {
			categoriaPaciente[0] = "Trastornos de Ansiedad";
			categoriaPaciente[1] = "Trastornos de Ansiedad y Trastornos del Sueño";
			descripcionTrastorno = "La ansiedad elevada se combina con dificultades para conciliar el sueño o mantenerlo, impactando el bienestar general del paciente.";
		}

		if (situacionEstresante == 2 && ninguna == 2) {
			categoriaPaciente[0] = "Trastornos de Ansiedad";
			categoriaPaciente[1] = "Trastornos de Ansiedad";
			descripcionTrastorno = "El paciente presenta síntomas de ansiedad sin complicaciones significativas en la alimentación, estado de ánimo o sueño.";
		}

// Combinaciones de Trastornos Alimentarios
		if (relacionComida == 2 && patronSueno == 2) {
			categoriaPaciente[0] = "Trastornos del Sueño";
			categoriaPaciente[1] = "Trastornos Alimentarios y Trastornos del Sueño";
			descripcionTrastorno = "El paciente muestra patrones alimenticios inestables y problemas de sueño, lo que puede llevar a efectos negativos en la salud física y mental.";
		}

		if (relacionComida == 2 && ninguna == 2) {
			categoriaPaciente[0] = "Trastornos Alimentarios";
			categoriaPaciente[1] = "Trastornos Alimentarios";
			descripcionTrastorno = "Indicios de una relación disfuncional con la comida, sin problemas significativos de sueño, estado de ánimo o ansiedad.";
		}

// Combinaciones de Trastornos del Sueño
		if (patronSueno == 2 && ninguna == 2) {
			categoriaPaciente[0] = "Trastornos del Sueño";
			categoriaPaciente[1] = "Trastornos del Sueño";
			descripcionTrastorno = "El paciente presenta dificultades para mantener un patrón de sueño saludable, sin otros síntomas significativos en alimentación, estado de ánimo o ansiedad.";
		}

		System.out.println("Categoria Asignar profesional: " + categoriaPaciente[0]);
		System.out.println("Categoria mostrar: " + categoriaPaciente[1]);
		System.out.println("-------------------------------");

	}

}
