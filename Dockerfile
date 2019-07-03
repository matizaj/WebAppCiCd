FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY ./output/* ./
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080
ENTRYPOINT ["dotnet", "WebAppCiCd.dll"]