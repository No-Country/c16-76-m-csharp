using back.DTOs;
using back.Entities;
using back.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace back.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PermissionsController : ControllerBase
    {
        private readonly IPermissionsService _permissionService;

        public PermissionsController(IPermissionsService permissionService)
        {
            _permissionService = permissionService;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll([FromQuery] PaginationDTO paginationDTO)
        {
            return Ok(_permissionService.GetAll(paginationDTO.PageSize, paginationDTO.PageNumber).Result);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(string id)
        {
            if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

            var permission = _permissionService.GetById(id).Result;

            return Ok(permission);
        }

        [HttpPost]
        public async Task<IActionResult> Create(PermissionRequestDTO dto)
        {
            var permission = await _permissionService.Create(dto);
            return Ok(permission);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Update(string id, PermissionRequestDTO dto)
        {
            if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

            var permission = _permissionService.Update(id, dto).Result;

            return Ok(permission);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            if (string.IsNullOrEmpty(id)) return BadRequest("Id was not provided");

            var permission = _permissionService.Delete(id).Result;

            return Ok(permission);
        }
    }
}
