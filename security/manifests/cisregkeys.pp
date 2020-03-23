class security::cisregkeys {

   registry_key {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer':
      ensure       => present,
      purge_values => true,
   }

   registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer\NoDataExecutionPrevention':
      type   => 'dword',
      data   => '0',
   }
