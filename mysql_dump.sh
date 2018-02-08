#!/bin/bash

today=`date +%Y-%m-%d`

mysqldump -h localhost -u root mpsvfx > /opt/shared/db_backup/mpsvfx_$today.sql
mysqldump -h localhost -u root newtestament > /opt/shared/db_backup/newtestament_$today.sql
mysqldump -h localhost -u root psddesignwiki > /opt/shared/db_backup/psddesignwiki_$today.sql
mysqldump -h localhost -u root psdportfolio > /opt/shared/db_backup/psdportfolio_$today.sql
mysqldump -h localhost -u root psdprofiles > /opt/shared/db_backup/psdprofiles-$today.sql
mysqldump -h localhost -u root publishing > /opt/shared/db_backup/publishing-$today.sql
mysqldump -h localhost -u root webpublisher > /opt/shared/db_backup/webpublisher-$today.sql
mysqldump -h localhost -u root writing > /opt/shared/db_backup/writing-$today.sql

echo "Removing Backups Older Than 8 Days"
find /opt/shared/db_backup/*.sql -mtime +8 -exec rm -v {} \;
