package com.spring.taxi.Dao;

import com.spring.taxi.Model.TaxiClient;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

public class TaxiDaoImpl implements TaxiDao {
    @Autowired
    private SessionFactory sessionFactory;

    public  List<TaxiClient> listContact()
    {

//        Session session = this.sessionFactory.getCurrentSession();
//        session.beginTransaction();
//        return session.c("SELECT * FROM TAXICLIENT;").list();
// тут не понимаю как это работает + jsp
       try {

       } catch (Exception e){

       }
        Session session = this.sessionFactory.getCurrentSession();
        session.beginTransaction();
        List<TaxiClient> taxiCl= session.createQuery("from TaxiClient").list();
        session.close();
        return taxiCl;


    }

    public void save(TaxiClient taxiClient) {
        Session session = this.sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.persist(taxiClient);
        tx.commit();
        session.close();
    }

    public void removeContact(Long id) {
//        TaxiClient taxiClient = (TaxiClient) this.sessionFactory.getCurrentSession().get(
//               TaxiClient.class, id);
//        if (null != taxiClient) {
  //          Session session2 = this.sessionFactory.getCurrentSession();
  //          Transaction tx = session2.beginTransaction();

   //         sessionFactory.getCurrentSession().delete(taxiClient);
//            session2.delete();
//            session2.close();


//            Session session = HibernateSessionFactoryUtil.getSessionFactory().openSession();
//            Transaction tx1 = session.beginTransaction();
//            session.delete(user);
//            tx1.commit();
//            session.close();

  //      }

        Session session ;
        TaxiClient myObject ;
        session = sessionFactory.getCurrentSession();
        Transaction tx = session.beginTransaction();
        myObject = (TaxiClient) session.load(TaxiClient.class,id);

        session.delete(myObject);
        //This makes the pending delete to be done
       // session.flush() ;
        tx.commit();
       // session.close();

    }


    public void setSessionFactory(SessionFactory sessionFactory) {

        this.sessionFactory = sessionFactory;
    }
}
