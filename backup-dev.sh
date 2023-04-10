if [ x"${DEV_DB}" == "x" ]; then 
     echo "You need to set DEV_DB to the URL of the database you want to backup."
else
pg_dump \
  --clean \
  --if-exists \
  --quote-all-identifiers \
  --exclude-table-data 'storage.objects' \
  --exclude-schema 'extensions|graphql|graphql_public|net|pgbouncer|pgsodium|pgsodium_masks|realtime|supabase_functions|pg_toast|pg_catalog|information_schema' \
  --schema '*' \
  --dbname "$DEV_DB" \
| sed 's/^DROP SCHEMA IF EXISTS "auth";$/-- DROP SCHEMA IF EXISTS "auth";/' \
| sed 's/^DROP SCHEMA IF EXISTS "storage";$/-- DROP SCHEMA IF EXISTS "storage";/' \
| sed 's/^CREATE SCHEMA "auth";$/-- CREATE SCHEMA "auth";/' \
| sed 's/^CREATE SCHEMA "storage";$/-- CREATE SCHEMA "storage";/' \
| sed 's/^ALTER DEFAULT PRIVILEGES FOR ROLE "supabase_admin"/-- ALTER DEFAULT PRIVILEGES FOR ROLE "supabase_admin"/' \
| gzip -c > ~/dev/supa-svelte-ionic-backup/dev/supa-svelte-ionic-backup-`date "+%Y.%m.%d-%H.%M.%S"`.sql.gz
echo "backup complete"
fi
