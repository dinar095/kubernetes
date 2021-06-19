<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'sql-svc' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'O)!`LTb3H:(:i 8.=[Ul`546nD(<x>?ZAV7Oe>|~a3hK%rOk*vO|7gd~b>zeXHyp' );
define( 'SECURE_AUTH_KEY',  'yit&9&LS8+5u}*S%Ak%j+BKX dh`f5,=)dkMx+<0[D=yI&H=p|=WNazCe1DC$ .N' );
define( 'LOGGED_IN_KEY',    '3sp{,p*AO #2]~zM^ FsYopdCq#9+Kv~@9xT$1L;*e#kSRjdXCj.}sC5#PPgio&-' );
define( 'NONCE_KEY',        '{7B5+&I=U ?lx E78*?RY6;TN11{d#~+_H@W=RjXd=:WP!!{?/gS%n$uI2SCwq!s' );
define( 'AUTH_SALT',        ';4)UGKC<yD.k.gC;X&%*.<PlLG`[7!Tj6U$0~q;4{wAZ6w7ff2DJ5vcuLb<7b,j$' );
define( 'SECURE_AUTH_SALT', 'YmWccD6j>-Ok!gBp;=OyKJ9DVS;O,zeutL[evTfdqz}AQcOcews;Hsrx|e j@kH/' );
define( 'LOGGED_IN_SALT',   'X-eX1k+gD_|f[j&?j,Qb20YlJ7{{%E3ZeK$_4[s$K&w:1Q}zf+GxrYI*1YHFVut+' );
define( 'NONCE_SALT',       '0hd8tP-s>`C(]rT_]yqGSb..E5Ghc$1}X/V@<+P-]pl{tQA5qLpcTQ+6m|6P)$/T' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';