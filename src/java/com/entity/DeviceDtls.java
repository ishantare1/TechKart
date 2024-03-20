/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;

/**
 *
 * @author Admin
 */
public class DeviceDtls {
    
    private int deviceId;
    private String deviceCategory;
    private String deviceName;
    private String price;
    private String status;
    private String photoName;
    private String email;      
    
    public DeviceDtls() {
        super(); 
    }
    public DeviceDtls(String deviceCategory, String deviceName, String price, String status, String photoName,String email) {
        
        this.deviceCategory= deviceCategory;
        this.deviceName=deviceName;
        this.price=price;
        this.status=status;
        this.photoName=photoName;
        this.email=email;
        
    } 
    
    
     
    @Override
public String toString()
{
    return "DeviceDtls [deviceId=" +  getDeviceId() + ", deviceCategory=" + getDeviceCategory()  + ", deviceName=" + getDeviceName() + ", price=" + getPrice() + ", status=" +  getStatus() + ", photoName=" +  getPhotoName() + ", email=" +  getEmail() + "]";                                                               
}

    /**
     * @return the deviceId
     */
    public int getDeviceId() {
        return deviceId;
    }

    /**
     * @param deviceId the deviceId to set
     */
    public void setDeviceId(int deviceId) {
        this.deviceId = deviceId;
    }

    /**
     * @return the deviceCategory
     */
    public String getDeviceCategory() {
        return deviceCategory;
    }

    /**
     * @param deviceCategory the deviceCategory to set
     */
    public void setDeviceCategory(String deviceCategory) {
        this.deviceCategory = deviceCategory;
    }

    /**
     * @return the deviceName
     */
    public String getDeviceName() {
        return deviceName;
    }

    /**
     * @param deviceName the deviceName to set
     */
    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    /**
     * @return the price
     */
    public String getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(String price) {
        this.price = price;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the photoName
     */
    public String getPhotoName() {
        return photoName;
    }

    /**
     * @param photoName the photoName to set
     */
    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }
}

