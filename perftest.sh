host="fabmedical-643943.documents.azure.com"
username="fabmedical-643943"
password="AIlugZ2XIQCF0FUnTpPK18VJ8koK2VwnC4ZOEgGwcxZNEJ8jH0dPP8X4sXeMWdJXoAgYwfsZyN22c4rOgTjtyw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
