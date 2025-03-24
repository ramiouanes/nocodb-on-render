FROM nocodb/nocodb:0.187.3

# Set database engine (SQLite)
ENV NC_DB=sqlite
ENV DATABASE_URL=sqlite://data/nocodb.db

EXPOSE 8080

CMD ["./nocodb"]
