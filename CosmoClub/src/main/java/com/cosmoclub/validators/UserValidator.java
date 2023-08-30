package com.cosmoclub.validators;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.cosmoclub.models.User;
import com.cosmoclub.repositories.UserRepository;

@Component
public class UserValidator implements Validator{
	
	@Autowired
	private UserRepository userRepo;

	@Override
	public boolean supports(Class<?> clazz) {
			
		return User.class.equals(clazz);
	}
	// Verifica si la confirmación de contraseña coincide con la contraseña
	@Override
	public void validate(Object target, Errors errors) {
		User user = (User) target;
		if(!user.getPasswordConfirmation().equals(user.getPassword())) {
			errors.rejectValue("passwordConfirmation", "Match"); // un error si las contraseñas no coinciden
		}
		
		 // Verifica si ya existe un usuario con el mismo correo electrónico en el repo
		if (userRepo.existsByEmail(user.getEmail())) {
            errors.rejectValue("email", "Duplicate.user.email"); // un error si el correo electrónico ya está en uso
        }
	}

}