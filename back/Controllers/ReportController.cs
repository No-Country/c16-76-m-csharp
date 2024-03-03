using back.DTOs;
using back.Entities;
using back.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace back.Controllers;

[Route("api/[controller]")]
[ApiController]
public class ReportController : ControllerBase
{

    private readonly IReportService _reportService;

    public ReportController(IReportService reportService)
    {
        _reportService = reportService;
    }

    [HttpGet]
    public async Task<IActionResult> GetAll([FromQuery] PaginationDTO paginationDTO)
    {
        return Ok(_reportService.GetAll(paginationDTO).Result);
    }

    [HttpGet("{id}")]
    public async Task<IActionResult> GetById(string id)
    {
        if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

        var report = _reportService.GetById(id).Result;

        return Ok(report);
    }

    [HttpGet("profile/{uid}")]
    public async Task<IActionResult> GetByUserId(string uid, [FromQuery] PaginationDTO paginationDTO)
    {
        if (string.IsNullOrEmpty(uid)) return BadRequest("Uid was not provided");

        var report = _reportService.GetByUserId(uid, paginationDTO).Result;

        return Ok(report);
    }

    [HttpPost]
    public async Task<IActionResult> Create(ReportRequestDto dto)
    {
        var report = await _reportService.Create(dto);
        return Ok(report);
    }

    [HttpPut("{id}")]
    public async Task<IActionResult> Update(string id, ReportRequestDto dto)
    {
        if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

        var report = _reportService.Update(id, dto).Result;

        return Ok(report);
    }

    [HttpDelete("{id}")]
    public async Task<IActionResult> Delete(string id)
    {
        if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

        var report = _reportService.Delete(id).Result;

        return Ok(report);
    }
}
