define memcache::create_instance (
  $bind_address='',
  $port,
  $dimension,
) {

  if $bind_address == '' {
    fail('please, specify bind_address')
  }

  notify {$name : }
  
  memcached::instance { "$name-$port":
    bind_address  => $bind_address,
    port          => $port,
    dimension     => $dimension,
  }

}
