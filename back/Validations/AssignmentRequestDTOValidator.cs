using back.DTOs;
using back.Entities;
using back.Enums;
using FluentValidation;

namespace back.Validations
{
    public class AssignmentRequestDTOValidator : AbstractValidator<AssignmentRequestDTO>
    {
        public AssignmentRequestDTOValidator()
        {
            RuleFor(x => x.Name)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.Description)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.StartDate)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.EndDate)
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
        }
    }
}