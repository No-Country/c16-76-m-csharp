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