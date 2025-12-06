# Hello API

A simple .NET Web API project with a single endpoint.

## Endpoint

- **GET** `/api/hello` - Returns "hello hello"

## How to Run with Docker

1. Build the Docker image:
```bash
docker build -t hello-api .
```

2. Run the container:
```bash
docker run -p 8080:8080 hello-api
```

3. Test the endpoint:
```bash
curl http://localhost:8080/api/hello
```

4. Access Swagger UI at: `http://localhost:8080/swagger`

## How to Run without Docker

1. Make sure you have .NET 9.0 SDK installed
2. Navigate to the project directory
3. Run: `dotnet restore`
4. Run: `dotnet run`
5. Open your browser and go to: `http://localhost:5000/api/hello`

## Expected Response

```
"hello hello"
```
