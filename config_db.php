<?php
/*
    part-db version 0.1
    Copyright (C) 2005 Christoph Lechner
    http://www.cl-projects.de/

    part-db version 0.2+
    Copyright (C) 2009 K. Jacobs and others (see authors.php)
    http://code.google.com/p/part-db/

    This program is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    as published by the Free Software Foundation; either version 2
    of the License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA

    $Id: config_db.php 511 2012-08-04 weinbauer73@gmail.com $
*/

/* Enter your MySQL username and password */
$db['mysql_server'] = "localhost";
$db['user']         = "part-db";
$db['password']     = "part-db";

/* This is the name of the mysql database */
$db['database']     = "part-db";

/*
*   Backup path
*
*   Replacements:
*
*   %Y%: Year
*   %M%: Month
*   %W%: Day of week
*   %WY%: Week of year
*/

$db['backup_path'] = BASE.'/backup/%Y%/%M%/';

?>
