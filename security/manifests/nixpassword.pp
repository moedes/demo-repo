class security::nixpassword {
  
  class {'os_hardening':
     
    pe_environment    => true,
    login_retries     => 2,
    password_max_age  => 75,
    
  }
}
