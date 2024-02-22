using back.DTOs;
using back.Interfaces;
using back.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace back.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProfileController : ControllerBase
    {

        private readonly IProfileService _profileService;

        public ProfileController( IProfileService profileService)
        {
            _profileService = profileService;
        }


        [HttpGet]
        public async Task<IActionResult> GetAll(int pageSize, int pageNumber)
        {
            return Ok(_profileService.GetProfiles(pageSize, pageNumber).Result);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(string id)
        {
            if (id == null) return BadRequest("Id was not provided");

            var profile =  _profileService.GetProfileById(id).Result;

            return Ok(profile);
        }

        [HttpPost]// needs to be reviewed
        public async Task<IActionResult> Create(ProfileRequestDTO profileDto)
        {
            var profile = await _profileService.AddProfile(profileDto) ;
            return Ok(profile);
        }


        [HttpPut("{id}")]
        public async Task<IActionResult> Update(string id, ProfileRequestDTO profiledto)
        {
            if (id == null) return BadRequest("Id was not provided");

            var profile = _profileService.UpdateProfile(id, profiledto ) .Result;

            return Ok(profile);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null) return BadRequest("Id was not provided");

            var profile =_profileService.DeleteProfile(id).Result;

            return Ok(profile);
        }




    }
}
