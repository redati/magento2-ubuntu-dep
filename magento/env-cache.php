#turorial https://misaelgomes.com.br/otimizacao-avancada-para-magento-2-melhoria-de-performance-no-backend-e-frontend/
'cache' => [
        'frontend' => [
            'default' => [
                'id_prefix' => '061_',
                'backend' => '\\Magento\\Framework\\Cache\\Backend\\RemoteSynchronizedCache',
                'backend_options' => [
                    'use_stale_cache' => true,
                    'remote_backend' => '\\Magento\\Framework\\Cache\\Backend\\Redis',
                    'remote_backend_options' => [
                        'persistent' => 0,
                        'server' => '/var/run/redis/redis-server.sock',
                        'database' => '0',
                        'port' => '',
                        'password' => '',
                        'compress_data' => '0',
                        'compression_lib' => '',
                        'compress_tags' => '0',
                        'connect_retries' => 3,
                        'timeout' => '5',
                        'preload_keys' => [
                            '061_EAV_ENTITY_TYPES:hash',
                            '061_GLOBAL_PLUGIN_LIST:hash',
                            '061_DB_IS_UP_TO_DATE:hash',
                            '061_SYSTEM_DEFAULT:hash',
                            '061_SYSTEM_STORES_DEFAULT:hash',
                            '061_SYSTEM_WEBSITES_BASE:hash',
                            '061_FRONTEND__EVENT_CONFIG_CACHE:hash',
                            '061_FRONTEND__ROUTESCONFIG:hash'
                        ]
                    ],
                    'local_backend' => 'Cm_Cache_Backend_File',
                    'local_backend_options' => [
                        'cache_dir' => '/dev/shm/'
                    ]
                ],
                'frontend_options' => [
                    'write_control' => false
                ],
                'use_stale_cache' => true
            ],
            'page_cache' => [
                'id_prefix' => '061_'
            ]
        ],
        'type' => [
            'default' => [
                'frontend' => 'default'
            ]
        ],
        'allow_parallel_generation' => true
    ],
