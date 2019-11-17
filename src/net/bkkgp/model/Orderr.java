package net.bkkgp.model;

import java.io.Serializable;

/**
 * JavaBean class used in jsp action tags.
 * @author Ramesh Fadatare
 */
public class Orderr implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String idCustomer;
    private String namecustomer;
    private String surcustomer;
    private String dateSend;
    private String idTire;
    private String numTire;
    private String brand2;
    private String price2;
    private String total;

    public String getIdCustomer() {

        return idCustomer;
    }
    public void setIdCustomer(String idCustomer) {

        this.idCustomer = idCustomer;
    }
    public String getNameCustomer() {

        return namecustomer;
    }
    public void setNameCustomer(String namecustomer) {

        this.namecustomer = namecustomer;
    }
    public String getSurCustomer() {

        return surcustomer;
    }
    public void setSurCustomer(String surcustomer) {

        this.surcustomer = surcustomer;
    }
    public String getDateSend() {

        return dateSend;
    }
    public void setDateSend(String dateSend) {

        this.dateSend = dateSend;
    }
    public String getIdTire() {
        return idTire;
    }
    public void setIdTire(String idTire) {
        this.idTire = idTire;
    }
    public String getNumTire() {
        return numTire;
    }
    public void setNumTire(String numTire) {
        this.numTire = numTire;
    }
    public String getBrand2() {
        return brand2;
    }
    public void setBrand2(String brand2) {
        this.brand2 = brand2;
    }
    public String getPrice2() {
        return price2;
    }
    public void setPrice2(String price2) {
        this.price2 = price2;
    }
    public String getTotal() {
        return total;
    }
    public void setTotal(String total) {
        this.total = total;
    }

}
