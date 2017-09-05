package br.com.ifpe.projeto.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class CidadeRiscoHibernateDao {

	private static final String PERSISTENCE_UNIT = "MareAlta";

	public void salvar(CidadeRisco cidaderisco) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(cidaderisco);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public void alterar(CidadeRisco cidaderisco) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(cidaderisco);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

	public boolean remover(int id) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		CidadeRisco cidaderisco = manager.find(CidadeRisco.class, id);
		manager.getTransaction().begin();
		manager.remove(cidaderisco);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
		return false;
	}

	public CidadeRisco buscarPorId(int id) {
		CidadeRisco obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(CidadeRisco.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public List<CidadeRisco> listar() {
		List<CidadeRisco> lista = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		lista = manager.createQuery("SELECT cd FROM CidadeRisco cd ORDER BY cd.nome").getResultList();
		manager.close();
		factory.close();
		return lista;
	}

	public List<CidadeRisco> pesquisar(String nome) {
		List<CidadeRisco> lista = null;
		Query query = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		if (!nome.equals("") ) {
		query = manager.createQuery("SELECT cd FROM CidadeRisco cd ORDER BY cd.nome");
		}
		lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
		}

}
