#!/bin/bash
set -e

# Start SQL Server in the background
nohup /opt/mssql/bin/sqlservr & ## Disable sqlservr logs
# nohup /opt/mssql/bin/sqlservr & ## Enable sqlservr logs

# Wait for SQL Server to become ready
echo "🕒 Waiting for SQL Server to be responsive..."
until /opt/mssql-tools18/bin/sqlcmd -S localhost -U SA -P VeryLongPassword69$ -C -Q "SELECT 1" &>/dev/null
do
  sleep 2
done
echo "✅ SQL Server is ready."

# Run the restore script
echo "🚀 Running initialization script..."
/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P VeryLongPassword69$ -C -i /var/opt/mssql/init-db.sql

# Bring SQL Server to foreground
wait

