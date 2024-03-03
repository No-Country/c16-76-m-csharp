using back.Entities;
using FluentValidation;

namespace back.Validations
{
    public class ReportRequestDtoValidator : AbstractValidator<ReportRequestDto>
    {
        public ReportRequestDtoValidator()
        {
            RuleFor(x => x.Date)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(x => x.Performance)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.")
                .GreaterThan(0)
                .WithMessage("The {PropertyName} must be greater than 0");

            RuleFor(x => x.AchivedGoals)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");
                //.GreaterThan(0)
                //.WithMessage("The {PropertyName} must be greater than 0");

            RuleFor(x => x.SavedMoney)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.")
                .GreaterThan(0)
                .WithMessage("The {PropertyName} must be greater than 0");

            RuleFor(x => x.ProfileId)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");
            
            RuleFor(x => x.Comments)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");
        }
    }
}
