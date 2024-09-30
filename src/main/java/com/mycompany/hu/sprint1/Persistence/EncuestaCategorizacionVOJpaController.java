/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.EncuestaCategorizacionVO;
import com.mycompany.hu.sprint1.Persistence.exceptions.NonexistentEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Nicolas
 */
public class EncuestaCategorizacionVOJpaController implements Serializable {
    
    public EncuestaCategorizacionVOJpaController(){
        emf = Persistence.createEntityManagerFactory("PersistencePU");
    }

    public EncuestaCategorizacionVOJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(EncuestaCategorizacionVO encuestaCategorizacionVO) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(encuestaCategorizacionVO);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(EncuestaCategorizacionVO encuestaCategorizacionVO) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            encuestaCategorizacionVO = em.merge(encuestaCategorizacionVO);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = encuestaCategorizacionVO.getId();
                if (findEncuestaCategorizacionVO(id) == null) {
                    throw new NonexistentEntityException("The encuestaCategorizacionVO with id " + id + " no longer exists.");
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
            EncuestaCategorizacionVO encuestaCategorizacionVO;
            try {
                encuestaCategorizacionVO = em.getReference(EncuestaCategorizacionVO.class, id);
                encuestaCategorizacionVO.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The encuestaCategorizacionVO with id " + id + " no longer exists.", enfe);
            }
            em.remove(encuestaCategorizacionVO);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<EncuestaCategorizacionVO> findEncuestaCategorizacionVOEntities() {
        return findEncuestaCategorizacionVOEntities(true, -1, -1);
    }

    public List<EncuestaCategorizacionVO> findEncuestaCategorizacionVOEntities(int maxResults, int firstResult) {
        return findEncuestaCategorizacionVOEntities(false, maxResults, firstResult);
    }

    private List<EncuestaCategorizacionVO> findEncuestaCategorizacionVOEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(EncuestaCategorizacionVO.class));
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

    public EncuestaCategorizacionVO findEncuestaCategorizacionVO(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(EncuestaCategorizacionVO.class, id);
        } finally {
            em.close();
        }
    }

    public int getEncuestaCategorizacionVOCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<EncuestaCategorizacionVO> rt = cq.from(EncuestaCategorizacionVO.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
