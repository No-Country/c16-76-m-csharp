using back.DTOs;
using FluentValidation;

namespace back.Validations;

public class UserDtoValidator : AbstractValidator<UserDto>
{
    public UserDtoValidator()
    {
        RuleFor(user => user.UserName)
            .NotNull()
            .NotEmpty()
            .WithMessage("The username is required.");
        RuleFor(user => user.FirstName)
            .NotNull()
            .NotEmpty()
            .WithMessage("The first name is required.");
        RuleFor(user => user.LastName)
            .NotNull()
            .NotEmpty()
            .WithMessage("The last name is required.");
        RuleFor(user => user.PasswordHash)
            .NotNull()
            .NotEmpty()
            .WithMessage("The password is required.")
            .GreaterThan("5")
            .WithMessage("The password must be greater than 5 characters.");
        RuleFor(user => user.Email)
            .NotNull()
            .NotEmpty()
            .WithMessage("The email is required.")
            .EmailAddress()
            .WithMessage("The email must be a valid email.");
        RuleFor(user => user.PhoneNumber)
            .NotNull()
            .NotEmpty()
            .WithMessage("The phone number is required.");
    }
}