# mail.vbs
A quick script for sending emails from the command line in Windows, without installing any extra prerequisutes.

## Usage
The script takes the following arguments:

    mail.vbs <mailserver> <from_address> <to_addresses> <title>

Then reads the body of the mail from stdin.

For example:

    echo test body 123 | cscript.exe mail.vbs my-mailserver.com do-not-reply@my-mailserver.com bob@email.com,alice@email.com "Hello"

