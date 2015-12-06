#!/usr/bin/env bash

mkdir -p locale
for l in $(ls bower_components/moment/locale)
 do
   echo "<script src="../../moment/locale/$l"></script>" > "locale/${l/.js/.html}"
 done

echo "<script src="../moment/moment.js"></script>" > "moment.html"
echo "<script src="../moment/min/locales.js"></script>" > "locales.html"
echo "<script src="../moment/min/locales.min.js"></script>" > "locales-min.html"
echo "<script src="../moment/min/moment.min.js"></script>" > "moment-min.html"

