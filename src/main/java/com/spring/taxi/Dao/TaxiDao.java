package com.spring.taxi.Dao;

import com.spring.taxi.Model.TaxiClient;

import java.util.List;

public interface TaxiDao {
    public List<TaxiClient> listContact();
    public void save(TaxiClient taxiClient);
    public void removeContact(Long id);
}
