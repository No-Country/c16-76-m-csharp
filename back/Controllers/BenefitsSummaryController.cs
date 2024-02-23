using back.DTOs;
using back.Interfaces;
using back.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace back.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BenefitsSummaryController : ControllerBase
    {

        private readonly IBenefitsSummaryService _benefitsSummaryService;

        public BenefitsSummaryController( IBenefitsSummaryService benefitsSummaryService)
        {
            _benefitsSummaryService = benefitsSummaryService;
        }


        [HttpGet]
        public async Task<IActionResult> GetAll(int pageSize, int pageNumber)
        {
            return Ok(_benefitsSummaryService.GetBenefitsSummaries(pageSize, pageNumber).Result);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(string id)
        {
            if (id == null) return BadRequest("Id was not provided");

            var profile =  _benefitsSummaryService.GetBenefitsSummaryById(id).Result;

            return Ok(profile);
        }

        [HttpPost]// needs to be reviewed
        public async Task<IActionResult> Create(BenefitsSummaryRequestDTO benefitsSummaryDto)
        {
            var benefitsSummary = await _benefitsSummaryService.AddBenefitsSummary(benefitsSummaryDto) ;
            return Ok(benefitsSummary);
        }


        [HttpPut("{id}")]
        public async Task<IActionResult> Update(string id, BenefitsSummaryRequestDTO benefitsSummaryDto)
        {
            if (id == null) return BadRequest("Id was not provided");

            var benefitsSummary = _benefitsSummaryService.UpdateBenefitsSummary(id, benefitsSummaryDto ) .Result;

            return Ok(benefitsSummary);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null) return BadRequest("Id was not provided");

            var benefitsSummary =_benefitsSummaryService.DeleteBenefitsSummary(id).Result;

            return Ok(benefitsSummary);
        }




    }
}
