// config/passport.js

// load all the things we need
var LocalStrategy = require('passport-local').Strategy;

// Generate Hash
var bcrypt = require('bcrypt-nodejs');

// database module
var database = require('../config/database');
var RunQuery = database.RunQuery;

// email sender module
var nodemailer = require('nodemailer');

// email validator module
const emailValidator = require('deep-email-validator');

async function isEmailValid(email) {
  return emailValidator.validate(email)
}



// expose this function to our app using module.exports
module.exports = function (passport) {

    // =========================================================================
    // passport session setup ==================================================
    // =========================================================================
    // required for persistent login sessions
    // passport needs ability to serialize and unserialize users out of session

    // used to serialize the user for the session
    passport.serializeUser(function (user, done) {
        done(null, user.UserID);
    });

    // used to deserialize the user
    passport.deserializeUser(function (userId, done) {
        var sqlStr = '\
            SELECT *\
            FROM users\
            where UserID = \'' + userId + '\'';
        RunQuery(sqlStr, function (rows) {
            done(null, rows[0]);
        });
    });


    passport.use('sign-in', new LocalStrategy({
            usernameField: 'username',
            passwordField: 'password',
            passReqToCallback: true // allows to pass back the entire request to the callback
        },
        function (req, username, password, done) { // callback with username and password from form
            // check to see if the user exists or not
            var sqlStr = 'SELECT * FROM users WHERE Username = \'' + username + '\'';
            RunQuery(sqlStr, function (rows) {
                // if no user is found, return the message
                if (rows.length < 1)
                    return done(null, false, req.flash('signInError', 'El usuario ingresado no pudo ser encontrado en Ecommerce. Por favor ingresa un usuario válido.')); // req.flash is the way to set flashdata using connect-flash

                // if the user is found but the password is wrong
                if (!bcrypt.compareSync(password, rows[0].Password))
                    return done(null, false, req.flash('signInError', 'La contraseña ingresada no es correcta. Por favor ingresa una contraseña válida.')); // create the loginMessage and save it to session as flashdata

                // all is well, return successful user
                return done(null, rows[0]);
            });

        })
    );


    passport.use('sign-up', new LocalStrategy({
            // by default, local strategy uses username and password
            usernameField: 'username',
            passwordField: 'password',
            passReqToCallback: true // allows us to pass back the entire request to the callback
        },
        async function (req, username, password, done) {
            // find a user whose email is the same as the forms email
            // we are checking to see if the user trying to login already exists
            var email = req.body.email;
            var phone = req.body.phone;

            if (password != req.body.rePassword) {
                return done(null, false, req.flash('signUpError', 'Las contraseñas ingresadas no coinciden. Por favor ingresa un par de contraseñas válidas.'));
            }
            else {

                

                var selectQuery = 'SELECT * FROM users\
                    WHERE email = \'' + email + '\'';
                RunQuery(selectQuery, function (emailRows) {
                    if (emailRows.length > 0) {
                        return done(null, false, req.flash('signUpError', 'El email ingresado ya ha sido registrado previamente en Ecommerce. Por favor ingresa otro email.'));
                    }
                    else {

                        selectQuery = 'SELECT * FROM users\
                        WHERE username = \'' + username + '\'';
                        RunQuery(selectQuery, function (usernameRows) {
                            if (usernameRows.length > 0) {
                                return done(null, false, req.flash('signUpError', 'El usuario ingresado ya ha sido registrado previamente en Ecommerce. Por favor ingresa otro nombre de usuario.'));
                            }
                            else {
                                // if there is no user with that user and email
                                var fullName = req.body.fullName;
                                var passwordHash = bcrypt.hashSync(password, null, null);

                                var insertQuery = 'INSERT INTO Users\
                                    VALUES(null,\
                                    \'' + fullName + '\', \
                                    \'' + phone + '\', \
                                    \'' + email + '\', \
                                    \'' + username + '\', \
                                    \'' + passwordHash + '\', 0)';

                                RunQuery(insertQuery, function (insertResult) {
                                    
                                    
                                    
                                    // finsih singup
                                    var user = {
                                        UserID: insertResult.insertId
                                    };
                                    return done(null, user);
                                });
                            }
                        });
                            
                    }
                });
            }
        })
    );
};
