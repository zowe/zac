# Using Two Factor Authentication with Github
To have extra security assurrances of the contributions to Zowe, two factor authentication is used with github.
The idea is that by needing an additional credential, especially one that is personalized rather than a string of characters like a traditional password,
then it's much less likely that your account would be vulnerable to breach by a malicious third party.

## When Is It Used on Github?
Github will periodically ask for your second factor credential. 
Github attempts to be unobtrusive by asking for re-authentication only under circumstances that are unusual.
It does not seem that the rules github uses for this are published, 
but it seems to be a process based on a combination of time since last accessed and fingerprinting techniques such as IP address, cookies, browser user agent, etc.
If you use the same browser, and the same computer in the same building, you're unlikely to see the two factor prompt daily, perhaps not even weekly.

## How to Activate Two Factor Authentication
Go to your github profile's security page: https://github.com/settings/security

Here, you can set up the type of two factor authentication that you prefer among the options github provides.
A guide from github as to these types is here: https://help.github.com/en/articles/configuring-two-factor-authentication

## Types of Two Factor Authentication for Github
As of this writing, github offers two methods of two factor authentication: getting a code by SMS to your mobile phone, or a TOTP program.

### SMS Authentication
As a way to prove your identity, github can send a code to your mobile phone via SMS. 

This is convenient, but may be an additional charge to your phone plan and could expose your phone number in the case of a data breach of github or whichever company handles this feature.
At the time of this writing no such breach is known.

### TOTP Programs
TOTP is a protocol for time-based one time passwords. Its specification is here: https://tools.ietf.org/html/rfc6238

Once setting up the info needed to generate a TOTP credential, a TOTP program will generate a code that is periodically changed such that only github and you should know it.
However, these credentials must still be kept as secured as any other password as they are not tied to something personal like biometrics or SMS.

It's also important that the program used be on a device that has an accurate clock, since the algorithm is time based and being too out of sync with github could cause authentication failure.

For this reason, mobile apps or hardware keys are preferred.

#### List of TOTP Programs
Github recommends a few, 

* 1Password
* Authy
* LastPass Authenticator

These will work well, but are either not free, tie to your phone number, or are not open source.
If you wish to use free & open source TOTP programs instead, below are a few suggestions:

PC: 
KeePass with TOTP Plugins (See https://keepass.info/plugins.html)

Android:
Several from f-droid
- Aegis: https://f-droid.org/en/packages/com.beemdevelopment.aegis/
- FreeOTP: https://f-droid.org/packages/org.fedorahosted.freeotp/

And many more... https://search.f-droid.org/?q=auth

iOS:
- tofu: https://www.tofuauth.com/
- FreeOTP: https://freeotp.github.io/

Please reach out if you know of other Apps that worked well for you and you would like to see on this list.

#### Setup of TOTP programs
Github will provide a QR code to scan in the settings needed, but otherwise if done manually only a few things are needed:
- Cipher: SHA1 is the default
- Digits: 6
- Seconds until renewal: 30
- And the secret, which github provides at time of setup

### Recovery
In the case that your 2 factor authentication method stops working, you do not want to be locked out of your account.
So, upon setup github will provide you with recovery keys. You should keep these safe as these are needed in that emergency in which your 2 factor auth isn't working.


## Additional Reading
https://help.github.com/en/articles/securing-your-account-with-two-factor-authentication-2fa
