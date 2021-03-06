package com.dataligence.autoremit.model;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Table;
 
@Entity
@Table(name="USER_PROFILE")
public class UserProfile extends BaseModel{
 
    
    @Column(name="TYPE", length=15, unique=true, nullable=false)
    private String type = UserProfileType.USER.getUserProfileType();
     
     
    public String getType() {
        return type;
    }
 
    public void setType(String type) {
        this.type = type;
    }
 
 
        
 
}
