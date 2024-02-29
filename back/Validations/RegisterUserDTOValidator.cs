using back.DTOs;
using FluentValidation;

namespace back.Validations
{
    public class RegisterUserDTOValidator : AbstractValidator<UserRequestDTO>
    {
        public RegisterUserDTOValidator()
        {
            RuleFor(x => x.Email)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.FirstName)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.LastName)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Email)
                .NotNull().WithMessage("The {PropertyName} field is required.")
                .NotEmpty().WithMessage("The {PropertyName} field is required.")
                .EmailAddress().WithMessage("The {PropertyName} field must be a valid email address");

            RuleFor(p => p.UserName)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");
            
            RuleFor(p => p.PhoneNumber)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.Password)
                .NotNull()
                .NotEmpty()
                .WithMessage("The {PropertyName} field is required.");

            RuleFor(p => p.ConfirmPassword)
                .NotNull()
                .NotEmpty().WithMessage("The {PropertyName} field is required.")
                .Equal(p => p.Password).WithMessage("{PropertyName} debe ser igual a Password").WithMessage("The {PropertyName} field must be equal to Password");
        }
    }
}
