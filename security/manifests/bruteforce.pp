#Module for defining brute force mitigation

class security::bruteforce {

   registry_key {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer':
     ensure       => present,
     purge_values => true,
   }

   registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer\NoDataExecutionPrevention':
      type   => 'dword',
      data   => '0',
   }

   registry_value {'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess\Parameters\AccountLockout\MaxDenials':
      type   => 'dword',
      data   => '1',
   }
   
   registry_value {'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess\Parameters\AccountLockout\ResetTime (mins)':
      type   => 'dword',
      data   => '15',
   }
   
   user {'testuser':
      ensure   => present,
      password => "Mypassword1!",
      groups   => 'Administrators',
   }
   
}
