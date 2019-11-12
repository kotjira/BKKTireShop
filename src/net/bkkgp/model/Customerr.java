package net.bkkgp.model;

import java.io.Serializable;

/**
 * JavaBean class used in jsp action tags.
 * @author Ramesh Fadatare
 */
public class Customerr implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    private String firstName1;
    private String lastName1;
    private String sex1;
    private String nationality1;
    private String homeID1;
    private String post1;
    private String phoneMe1;
    private String email1;

    public String getFirstName1() {

        return firstName1;
    }
    public void setFirstName1(String firstName1) {

        this.firstName1 = firstName1;
    }
    public String getLastName1() {
        return lastName1;
    }
    public void setLastName1(String lastName1) {
        this.lastName1 = lastName1;
    }
    public String getSex1() {
        return sex1;
    }
    public void setSex1(String sex1) {
        this.sex1 = sex1;
    }
    public String getNationality1() {
        return nationality1;
    }
    public void setNationality1(String nationality1) {
        this.nationality1 = nationality1;
    }
    public String getHomeID1() {
        return homeID1;
    }
    public void setHomeID1(String homeID1) {
        this.homeID1 = homeID1;
    }
    public String getPost1() {
        return post1;
    }
    public void setPost1(String post1) {
        this.post1 = post1;
    }
    public String getPhoneMe1() {
        return phoneMe1;
    }
    public void setPhoneMe1(String phoneMe1) {
        this.phoneMe1 = phoneMe1;
    }
    public String getEmail1() {
        return email1;
    }
    public void setEmail1(String email1) {
        this.email1 = email1;
    }
}
