package com.spring.taxi.Service;

import com.spring.taxi.Model.TaxiClient;

import java.util.List;

public interface Service {

    public List<TaxiClient> listContact();
    public void save(TaxiClient taxiClient);
    public void removeContact(Long id);

}
