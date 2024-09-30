/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.hu.sprint1.Persistence;

import com.mycompany.hu.sprint1.Entities.EncuestaDiariaVO;
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
public class EncuestaDiariaVOJpaController implements Serializable {

    public EncuestaDiariaVOJpaController() {
        emf = Persistence.createEntityManagerFactory("PersistencePU");
    }

    public EncuestaDiariaVOJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(EncuestaDiariaVO encuestaDiariaVO) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(encuestaDiariaVO);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(EncuestaDiariaVO encuestaDiariaVO) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            encuestaDiariaVO = em.merge(encuestaDiariaVO);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = encuestaDiariaVO.getId();
                if (findEncuestaDiariaVO(id) == null) {
                    throw new NonexistentEntityException("The encuestaDiariaVO with id " + id + " no longer exists.");
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
            EncuestaDiariaVO encuestaDiariaVO;
            try {
                encuestaDiariaVO = em.getReference(EncuestaDiariaVO.class, id);
                encuestaDiariaVO.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The encuestaDiariaVO with id " + id + " no longer exists.", enfe);
            }
            em.remove(encuestaDiariaVO);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<EncuestaDiariaVO> findEncuestaDiariaVOEntities() {
        return findEncuestaDiariaVOEntities(true, -1, -1);
    }

    public List<EncuestaDiariaVO> findEncuestaDiariaVOEntities(int maxResults, int firstResult) {
        return findEncuestaDiariaVOEntities(false, maxResults, firstResult);
    }

    private List<EncuestaDiariaVO> findEncuestaDiariaVOEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(EncuestaDiariaVO.class));
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

    public EncuestaDiariaVO findEncuestaDiariaVO(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(EncuestaDiariaVO.class, id);
        } finally {
            em.close();
        }
    }

    public int getEncuestaDiariaVOCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<EncuestaDiariaVO> rt = cq.from(EncuestaDiariaVO.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }

}
