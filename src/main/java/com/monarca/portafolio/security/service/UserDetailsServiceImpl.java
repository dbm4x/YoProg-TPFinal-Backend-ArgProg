package com.monarca.portafolio.security.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.monarca.portafolio.model.Usuario;
import com.monarca.portafolio.repository.UsuarioRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
  @Autowired
  UsuarioRepository userRepository;

  @Override
  @Transactional
  public UserDetails loadUserByUsername(String usuario) throws UsernameNotFoundException {
    Usuario user = userRepository.findByUsuario(usuario)
        .orElseThrow(() -> new UsernameNotFoundException("User Not Found with username: " + usuario));
    return UserDetailsImpl.build(user);
  }

}
