<?php
$command="/sbin/ifconfig";
exec($command, $output);
foreach ($output as $line) {
    echo "$line</br>";
}
?>