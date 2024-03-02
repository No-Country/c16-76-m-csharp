using back.DTOs;
using FluentValidation;

namespace back.Validations
{
    public class PermissionRequestDTOValidator : AbstractValidator<PermissionRequestDTO>
    {
        public PermissionRequestDTOValidator()
        {
            RuleFor(x => x.DaysAmount)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.")
                .GreaterThan(0)
                .WithMessage("The {PropertyName} must be greater than 0");

            RuleFor(x => x.Date)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.StatusId)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.ProfileId)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.TypeId)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");
        }
    }
}
