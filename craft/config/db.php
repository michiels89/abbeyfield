<?php

/**
 * Database Configuration
 *
 * All of your system's database configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/db.php
 */

$database = [
    'tablePrefix' => 'craft',
];

switch (ENV) {
    case 'live':
        $database['server'] = 'ID142026_intabbp.db.webhosting.be';
        $database['user'] = 'ID142026_intabbp';
        $database['password'] = '543(A9V20)e50w!z';
        $database['database'] = 'ID142026_intabbp';
        break;

    case 'staging':
        $database['server'] = 'ID142026_intabbs.db.webhosting.be';
        $database['user'] = 'ID142026_intabbs';
        $database['password'] = '543(A9V20)e50w!z';
        $database['database'] = 'ID142026_intabbs';
        break;

    default:
        $database['server'] = '127.0.0.1';
        $database['user'] = 'root';
        $database['password'] = 'root';
        $database['database'] = PROJECTCODE;
        break;
}

return $database;
