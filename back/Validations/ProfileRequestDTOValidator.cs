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
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Delays)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Assist)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");
        }
    }
}
