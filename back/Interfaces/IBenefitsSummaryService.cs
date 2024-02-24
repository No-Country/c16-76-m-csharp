using back.DTOs;
using back.Utilities.Base;

namespace back.Interfaces
{
    public interface IBenefitsSummaryService
    {
        public Task<BaseResponse<string>> AddBenefitsSummary(BenefitsSummaryRequestDTO benefitsSummaryDto);

        public Task<BaseResponse<List<BenefitsSummaryDto>>> GetBenefitsSummaries(int pageSize, int pageNumber);

        public Task<BaseResponse<BenefitsSummaryDto>> GetBenefitsSummaryById(string id);

        public Task<BaseResponse<string>> UpdateBenefitsSummary(string id, BenefitsSummaryRequestDTO profile);

        public Task<BaseResponse<string>> DeleteBenefitsSummary(string id);

    }
}
