FROM mcr.microsoft.com/azure-sql-edge

USER root

# Install curl, gnupg, and Microsoft package signing key
# RUN apt-get update && apt-get install -y curl gnupg apt-transport-https software-properties-common

# Add Microsoft repository for SQL Tools
# RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
#     curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list

# # Install sqlcmd
# RUN apt-get update && \
#     ACCEPT_EULA=Y apt-get install -y mssql-tools18 unixodbc-dev && \
#     echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc && \
#     echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bash_profile

# # Add sqlcmd to global PATH
# ENV PATH="$PATH:/opt/mssql-tools18/bin"
