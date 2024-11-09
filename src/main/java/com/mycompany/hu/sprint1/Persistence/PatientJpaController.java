/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.Patient;
import com.mycompany.hu.sprint1.Persistence.exceptions.NonexistentEntityException;
import com.mycompany.hu.sprint1.Persistence.exceptions.PreexistingEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Nicolas
 */
public class PatientJpaController implements Serializable {

	public PatientJpaController() {
		emf = Persistence.createEntityManagerFactory("PersistencePU");
	}

	public PatientJpaController(EntityManagerFactory emf) {
		this.emf = emf;
	}
	private EntityManagerFactory emf = null;

	public EntityManager getEntityManager() {
		return emf.createEntityManager();
	}

	public void create(Patient patient) throws PreexistingEntityException, Exception {
		EntityManager em = null;
		try {
			em = getEntityManager();
			em.getTransaction().begin();
			em.persist(patient);
			em.getTransaction().commit();
		} catch (Exception ex) {
			if (findPatient(patient.getIdentificationNumber()) != null) {
				throw new PreexistingEntityException("Patient " + patient + " already exists.", ex);
			}
			throw ex;
		} finally {
			if (em != null) {
				em.close();
			}
		}
	}

	public Patient getByCedula(String cedula) {
		EntityManager em = getEntityManager();
		try {
			Query query = em.createNativeQuery("SELECT * FROM patient WHERE identificationnumber = ?", Patient.class);
			query.setParameter(1, cedula);
			return (Patient) query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			em.close();
		}
	}

	public void edit(Patient patient) throws NonexistentEntityException, Exception {
		EntityManager em = null;
		try {
			em = getEntityManager();
			em.getTransaction().begin();
			patient = em.merge(patient);
			em.getTransaction().commit();
		} catch (Exception ex) {
			String msg = ex.getLocalizedMessage();
			if (msg == null || msg.length() == 0) {
				String id = patient.getIdentificationNumber();
				if (findPatient(id) == null) {
					throw new NonexistentEntityException("The patient with id " + id + " no longer exists.");
				}
			}
			throw ex;
		} finally {
			if (em != null) {
				em.close();
			}
		}
	}

	public void destroy(String id) throws NonexistentEntityException {
		EntityManager em = null;
		try {
			em = getEntityManager();
			em.getTransaction().begin();
			Patient patient;
			try {
				patient = em.getReference(Patient.class, id);
				patient.getIdentificationNumber();
			} catch (EntityNotFoundException enfe) {
				throw new NonexistentEntityException("The patient with id " + id + " no longer exists.", enfe);
			}
			em.remove(patient);
			em.getTransaction().commit();
		} finally {
			if (em != null) {
				em.close();
			}
		}
	}

	public List<Patient> findPatientEntities() {
		return findPatientEntities(true, -1, -1);
	}

	public List<Patient> findPatientEntities(int maxResults, int firstResult) {
		return findPatientEntities(false, maxResults, firstResult);
	}

	private List<Patient> findPatientEntities(boolean all, int maxResults, int firstResult) {
		EntityManager em = getEntityManager();
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			cq.select(cq.from(Patient.class));
			Query q = em.createQuery(cq);
			if (!all) {
				q.setMaxResults(maxResults);
				q.setFirstResult(firstResult);
			}
			return q.getResultList();
		} finally {
			em.close();
		}
	}

	public Patient getByEmail(String email) {
		EntityManager em = getEntityManager();
		try {
			Query query = em.createNativeQuery("SELECT * FROM patient WHERE email = ?", Patient.class);
			query.setParameter(1, email);
			return (Patient) query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		} finally {
			em.close();
		}
	}

	public Patient findPatient(String id) {
		EntityManager em = getEntityManager();
		try {
			return em.find(Patient.class, id);
		} finally {
			em.close();
		}
	}

	public int getPatientCount() {
		EntityManager em = getEntityManager();
		try {
			CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
			Root<Patient> rt = cq.from(Patient.class);
			cq.select(em.getCriteriaBuilder().count(rt));
			Query q = em.createQuery(cq);
			return ((Long) q.getSingleResult()).intValue();
		} finally {
			em.close();
		}
	}

}
