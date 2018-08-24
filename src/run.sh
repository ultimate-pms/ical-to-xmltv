#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

mkdir -p $DIR/data
rm -rf $DIR/basic.xml

curl -s https://calendar.google.com/calendar/ical/mg877fp19824mj30g497frm74o%40group.calendar.google.com/public/basic.ics -O > $DIR/basic.ics
python $DIR/ical_2_xmltv.py

rm -rf $DIR/basic.ics
rm -rf $DIR/data/basic.xml

mv $DIR/basic.xml $DIR/data/
