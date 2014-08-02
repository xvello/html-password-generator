password-generator
==================

This static webapp allows you to generate unlimited password from a single master password.

![Screenshot](https://github.com/xvello/password-generator/raw/master/screenshot.png)

##How does it work?##
It mixes  together your personal master password and the website name using a little cryptographic magic we call SHA-1. It will always get the same result if given that domain name and master password, but will never get that result if either changes. (Well, once in a few billion times it might.)

All the calculations are done locally in your browser, neither your master password nor the generated password are exchanged on the network. You can even download it to your mobile phone and run it locally.

##Thanks##

Based on [Nic Wolff's password generator](http://angel.net/~nic/passwd.current.html) version 11 apr 2014, using the [Bootstrap](http://getbootstrap.com) framework and [Glyphicons](http://glyphicons.com) icons.
