FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src
COPY ["HelloApi.csproj", "./"]
RUN dotnet restore "HelloApi.csproj"
COPY . .
RUN dotnet build "HelloApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "HelloApi.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app
COPY --from=publish /app/publish .
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080
ENTRYPOINT ["dotnet", "HelloApi.dll"]
