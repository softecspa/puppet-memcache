class memcache (

  $daemons      = [ "cache-${cluster}01.${backplane_domain}",
                    "cache-${cluster}02.${backplane_domain}"],
  $daemons_port = '11211',
  $dimension    = '128',
) {

  notify {"cache-${cluster}01.${backplane_domain}":}

  @@memcache::create_instance{ $daemons:
    port        => $daemons_port,
    dimension   => $dimension,
    tag         => $name,
  }

}
