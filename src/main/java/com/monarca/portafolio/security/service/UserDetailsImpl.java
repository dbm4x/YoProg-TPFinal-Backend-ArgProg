package com.monarca.portafolio.security.service;

import java.util.Collection;

import java.util.Objects;


import org.springframework.security.core.GrantedAuthority;

import org.springframework.security.core.userdetails.UserDetails;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.monarca.portafolio.model.Usuario;

public class UserDetailsImpl implements UserDetails {
  private static final long serialVersionUID = 1L;

  private Long id;

  private String usuario;


  @JsonIgnore
  private String password;


  public UserDetailsImpl(Long id, String usuario, String password) {
    this.id = id;
    this.usuario = usuario;
    this.password = password;
  }

  public static UserDetailsImpl build(Usuario user) {
  
    return new UserDetailsImpl(
    	      user.id, 
    	      user.usuario, 
    	      user.password
        );
  }


  public Long getId() {
    return id;
  }


  @Override
  public String getPassword() {
    return password;
  }

  @Override
  public String getUsername() {
    return usuario;
  }

  @Override
  public boolean isAccountNonExpired() {
    return true;
  }

  @Override
  public boolean isAccountNonLocked() {
    return true;
  }

  @Override
  public boolean isCredentialsNonExpired() {
    return true;
  }

  @Override
  public boolean isEnabled() {
    return true;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o)
      return true;
    if (o == null || getClass() != o.getClass())
      return false;
    UserDetailsImpl user = (UserDetailsImpl) o;
    return Objects.equals(id, user.id);
  }

@Override
public Collection<? extends GrantedAuthority> getAuthorities() {
	// TODO Auto-generated method stub
	return null;
}

}
