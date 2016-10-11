package com.dataligence.autoremit.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
 
@Entity
@Table(name="APP_USER")
@Inheritance(strategy = InheritanceType.JOINED)
public class User extends BaseModel{
 
    @Column(name="USERNAME", unique=true, nullable=false)
    private String username;
   
	@Column(name="PASSWORD", nullable=false)
    private String password;
    
    @Column(name="EMAIL", unique=true, nullable=false)
    private String email;
 
    @Column(name="STATE", nullable=false)
    private String state=State.ACTIVE.getState();
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="DATEREGISTERED", nullable=false)
    private Date dateRegistered;
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="DATEUPDATED")
    private Date dateUpdated;
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="LASTLOGINDATE")
    private Date lastLoginDate;
 
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "APP_USER_USER_PROFILE", 
             joinColumns = { @JoinColumn(name = "USER_ID") }, 
             inverseJoinColumns = { @JoinColumn(name = "USER_PROFILE_ID") })
    private Set<UserProfile> userProfiles = new HashSet<UserProfile>();
 
   public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public String getState() {
        return state;
    }
 
    public void setState(String state) {
        this.state = state;
    }
 
    public Set<UserProfile> getUserProfiles() {
        return userProfiles;
    }
 
    public void setUserProfiles(Set<UserProfile> userProfiles) {
        this.userProfiles = userProfiles;
    }
        
    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

 
    public Date getDateRegistered() {
		return dateRegistered;
	}

	public void setDateRegistered(Date dateRegistered) {
		this.dateRegistered = dateRegistered;
	}

	public Date getDateUpdated() {
		return dateUpdated;
	}

	public void setDateUpdated(Date dateUpdated) {
		this.dateUpdated = dateUpdated;
	}

	public Date getLastLoginDate() {
		return lastLoginDate;
	}

	public void setLastLoginDate(Date lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}

	@Override
    public String toString() {
        return "User [id=" + this.getId() + ", username=" + username + ", password=" + password
                + ", email=" + email + ", state=" + state + ", userProfiles=" + userProfiles +"]";
    }  
    
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + this.getId();
        result = prime * result + ((username == null) ? 0 : username.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof User))
            return false;
        User other = (User) obj;
        if (this.getId() != other.getId())
            return false;
        if (username == null) {
            if (other.username != null)
                return false;
        } else if (!username.equals(other.username))
            return false;
        return true;
    }
}
