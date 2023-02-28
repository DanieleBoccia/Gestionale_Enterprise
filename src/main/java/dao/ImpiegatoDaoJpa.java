package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.transaction.SystemException;
import javax.transaction.Transaction;

import model.Impiegato;

public class ImpiegatoDaoJpa {
	
	EntityManagerFactory emf;
	EntityManager em;
	public ImpiegatoDaoJpa() {
		
		emf = Persistence.createEntityManagerFactory("MyPersistenceUnit");
		em = emf.createEntityManager();
	}
	
	public void insert(Impiegato imp) {
		em.getTransaction().begin();
		
		em.persist(imp);
		
		em.getTransaction().commit();
	}
	
	public void update(Impiegato imp) {
		em.getTransaction().begin();
		
		em.merge(imp);
		
		em.getTransaction().commit();
	}
	
	public void delete(int matricola) {

	    em.getTransaction().begin();
	    Impiegato imp = em.find(Impiegato.class, matricola);
	    em.remove(imp);
	    em.getTransaction().commit();
	    
	
	}
     
	
	public Impiegato findCodiceFiscale(String codicefiscale) {
		em.getTransaction().begin();
		
		TypedQuery<Impiegato> query = em.createQuery("SELECT i FROM Impiegato i WHERE i.codicefiscale = :codicefiscale", Impiegato.class);
	    query.setParameter("codicefiscale", codicefiscale);

	    Impiegato imp = query.getSingleResult();

	    System.out.println("NOME : " + imp.getNome() + " " + "COGNOME : " + imp.getCognome() + "CODICE FISCALE : " + imp.getCodicefiscale() + "MATRICOLA : " + imp.getMatricola());
	    return imp;
		
	}
	
	public List<Impiegato> findCognome(String cognome) {
		em.getTransaction().begin();
		
		TypedQuery<Impiegato> query = em.createQuery("SELECT i FROM Impiegato i WHERE i.cognome = :cognome", Impiegato.class);
		query.setParameter("cognome", cognome);
		List<Impiegato> impiegato = query.getResultList();
		
		for (Impiegato imp : impiegato) {
			System.out.println("NOME : " + imp.getNome() + " " + "COGNOME : " + imp.getCognome() + "CODICE FISCALE : " + imp.getCodicefiscale() + "MATRICOLA : " + imp.getMatricola());
		}
		
		return impiegato;
	}
	

}
