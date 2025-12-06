# Hello API

A simple .NET Web API project with a single endpoint.

## Endpoint

- **GET** `/api/hello` - Returns "hello hello"

## How to Run

1. Make sure you have .NET 8.0 SDK installed
2. Navigate to the project directory
3. Run: `dotnet restore`
4. Run: `dotnet run`
5. Open your browser and go to: `https://localhost:5001/api/hello`
   Or use Swagger UI at: `https://localhost:5001/swagger`

## Testing the Endpoint

```bash
curl https://localhost:5001/api/hello
```

Expected response: `"hello hello"`
