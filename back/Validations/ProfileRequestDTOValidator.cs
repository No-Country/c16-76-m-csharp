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

            RuleFor(p => p.Assist)
                .NotNull()
                .WithMessage("The {PropertyName} field is required.");
        }
    }
}
