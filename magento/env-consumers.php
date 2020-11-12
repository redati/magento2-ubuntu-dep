'cron_consumers_runner' => [
        'consumers_wait_for_messages' => 0,
        'cron_run' => true,
        'sleep' => 10,
        'max_messages' => 300
    ],
    'queue' => [
        'consumers_wait_for_messages' => 0,
        'amqp' => [
            'consumers_wait_for_messages' => 0,
            'host' => 'localhost',
            'port' => 5672,
            'user' => 'guest',
            'password' => 'guest',
            'virtualhost' => '/'
        ]
    ],
