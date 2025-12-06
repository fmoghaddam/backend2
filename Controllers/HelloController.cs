using Microsoft.AspNetCore.Mvc;

namespace HelloApi.Controllers;

[ApiController]
[Route("api")]
public class HelloController : ControllerBase
{
    [HttpGet("hello")]
    public IActionResult GetHello()
    {
        return Ok("hello hello");
    }
}
