package com.spring.taxi.Service;

import com.spring.taxi.Dao.TaxiDao;
import com.spring.taxi.Model.TaxiClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceImpl implements com.spring.taxi.Service.Service {



    @Autowired
    private TaxiDao taxiDao;

    @Transactional
    public  List<TaxiClient> listContact() {

        return taxiDao.listContact();
    }

    @Transactional
    public void save(TaxiClient taxiClient) {
        taxiDao.save(taxiClient);
    }


    @Transactional
    public void removeContact(Long id){
        taxiDao.removeContact(id);
    }





}
