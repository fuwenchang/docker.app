FROM microsoft/dotnet:latest
WORKDIR /app
COPY /. /app
RUN dotnet restore
RUN dotnet publish -o /out -c Release
EXPOSE 443
ENTRYPOINT ["dotnet", "DockerApp.dll"]