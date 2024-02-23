using back.DTOs;
using FluentValidation;

namespace back.Validations
{
    public class BenefitsSummaryDTOValidator: AbstractValidator<BenefitsSummaryRequestDTO>
    {
        public BenefitsSummaryDTOValidator()
        {
            RuleFor(x => x.IncludesBonusA)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.BonusA)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.IncludesBonusB)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.BonusB)
              .NotNull()
              .NotEmpty()
              .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.IncludesBonusC)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.BonusC)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Holidays)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.HasHealthCare)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

        }
    }
}
