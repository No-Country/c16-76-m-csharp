using back.Entities;
using back.Enums;
using FluentValidation;

namespace back.Validations
{
    public class AssignmentDtoValidator : AbstractValidator<AssignmentDto>
    {
        public AssignmentDtoValidator()
        {
            RuleFor(x => x.ProfileEmail)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.")
                .EmailAddress()
                .WithMessage("The {PropertyName} must be a valid email.");

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

            //RuleFor(x => x.Status)
            //    .NotNull()
            //    .NotEmpty()
            //    .WithMessage("The {PropertyName} field is required.")
            //    .When(x => x.Status is Status status)
            //    .WithMessage("The {PropertyName} must be : 'ToDo', 'InProgress', 'InReview' or 'Done'.");
        }
    }
}