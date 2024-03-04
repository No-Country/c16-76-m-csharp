using back.DTOs;
using FluentValidation;

namespace back.Validations
{
    public class ProfileRequestDTOValidator: AbstractValidator<ProfileRequestDTO>
    {
        public ProfileRequestDTOValidator()
        {
            RuleFor(x => x.Absences)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Delays)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Assists)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.Country)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.State)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Municipality)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Salary)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");
        }
    }
}
