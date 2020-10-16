#Manage CIS Windows registry keys

class security::cisregkeys {

  #CIS Security Control 18.9.30.1 Turn off Data Execution Prevention for Explorer set to Disabled 
  registry_key {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer':
      ensure       => present,
      purge_values => true,
  }

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer\NoDataExecutionPrevention':
      type   => 'dword',
      data   => '0',
  }
  ################################################################################################

}
