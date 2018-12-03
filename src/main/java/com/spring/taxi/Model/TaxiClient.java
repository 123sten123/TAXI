package com.spring.taxi.Model;

import javax.persistence.*;

@Entity
@Table(name = "TAXICLIENT")
public class TaxiClient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private long id;

    @Column(name = "FIO", length = 255)
    private String fio;

    @Column(name = "PHONE", length = 30)
    private String phone;

    @Column(name = "DISABLED")
    private boolean disabled;

    @Column(name = "DESCRIPTION")
    @Lob
    private String description;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
