<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit43aa713ff52055c84c17bf264abc0b2e
{
    public static $files = array (
        '0e6d7bf4a5811bfa5cf40c5ccd6fae6a' => __DIR__ . '/..' . '/symfony/polyfill-mbstring/bootstrap.php',
        '65fec9ebcfbb3cbb4fd0d519687aea01' => __DIR__ . '/..' . '/danielstjules/stringy/src/Create.php',
        '2c102faa651ef8ea5874edb585946bce' => __DIR__ . '/..' . '/swiftmailer/swiftmailer/lib/swift_required.php',
    );

    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Symfony\\Polyfill\\Mbstring\\' => 26,
            'Symfony\\Component\\PropertyAccess\\' => 33,
            'Symfony\\Component\\Finder\\' => 25,
            'Stringy\\' => 8,
            'Solspace\\Freeform\\Library\\' => 26,
        ),
        'H' => 
        array (
            'Hashids\\' => 8,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Symfony\\Polyfill\\Mbstring\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/polyfill-mbstring',
        ),
        'Symfony\\Component\\PropertyAccess\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/property-access',
        ),
        'Symfony\\Component\\Finder\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/finder',
        ),
        'Stringy\\' => 
        array (
            0 => __DIR__ . '/..' . '/danielstjules/stringy/src',
        ),
        'Solspace\\Freeform\\Library\\' => 
        array (
            0 => __DIR__ . '/../..' . '/Library',
        ),
        'Hashids\\' => 
        array (
            0 => __DIR__ . '/..' . '/hashids/hashids/lib/Hashids',
        ),
    );

    public static $prefixesPsr0 = array (
        'T' => 
        array (
            'Test\\Markdownify' => 
            array (
                0 => __DIR__ . '/..' . '/pixel418/markdownify/test',
            ),
        ),
        'M' => 
        array (
            'Markdownify' => 
            array (
                0 => __DIR__ . '/..' . '/pixel418/markdownify/src',
            ),
        ),
        'E' => 
        array (
            'Egulias\\' => 
            array (
                0 => __DIR__ . '/..' . '/egulias/email-validator/src',
            ),
        ),
        'D' => 
        array (
            'Doctrine\\Common\\Lexer\\' => 
            array (
                0 => __DIR__ . '/..' . '/doctrine/lexer/lib',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit43aa713ff52055c84c17bf264abc0b2e::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit43aa713ff52055c84c17bf264abc0b2e::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInit43aa713ff52055c84c17bf264abc0b2e::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}
