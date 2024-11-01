/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.Professional;
import com.mycompany.hu.sprint1.Persistence.exceptions.NonexistentEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Nicolas
 */
public class ProfessionalJpaController implements Serializable {

    public ProfessionalJpaController() {
        emf = Persistence.createEntityManagerFactory("PersistencePU");
    }

    public ProfessionalJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Professional professional) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(professional);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Professional professional) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            professional = em.merge(professional);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = professional.getId();
                if (findProfessional(id) == null) {
                    throw new NonexistentEntityException("The professional with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Professional professional;
            try {
                professional = em.getReference(Professional.class, id);
                professional.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The professional with id " + id + " no longer exists.", enfe);
            }
            em.remove(professional);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Professional> findProfessionalEntities() {
        return findProfessionalEntities(true, -1, -1);
    }

    public List<Professional> findProfessionalEntities(int maxResults, int firstResult) {
        return findProfessionalEntities(false, maxResults, firstResult);
    }

    private List<Professional> findProfessionalEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Professional.class));
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

    public Professional findProfessional(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Professional.class, id);
        } finally {
            em.close();
        }
    }

    public Professional getByEmail(String email) {
        EntityManager em = getEntityManager();
        try {
            Query query = em.createNativeQuery("SELECT * FROM professional WHERE email = ?", Professional.class);
            query.setParameter(1, email);
            return (Professional) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }
    
    public Professional getByCedula(String cedula) {
        EntityManager em = getEntityManager();
        try {
            Query query = em.createNativeQuery("SELECT * FROM professional WHERE identificationnumber = ?", Professional.class);
            query.setParameter(1, cedula);
            return (Professional) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        } finally {
            em.close();
        }
    }

    public int getProfessionalCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Professional> rt = cq.from(Professional.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }

}
