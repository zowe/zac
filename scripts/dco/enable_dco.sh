#! /bin/sh

# If dco is installed by this script, run this function afterwards to enable dco. If dco fails or cannot be found,
# then users will need to investigate their local environment. 
postInstallDcoEnable () {
    if hash dco 2>/dev/null; then
        dco enable
    else
        echo '"dco" command was not found. Please check your gem modules for dco. ("gem query --local")'
    fi
}

# Check if dco exists. If so, run enable.
if hash dco 2>/dev/null; then
    dco enable
else
    # If dco is not installed, check for ruby and try to install it. Otherwise print ruby install instructions.
    if hash ruby 2>/dev/null; then
        echo "Installing coderanger/dco..."
        gem install dco
        # Rather than re-run the script from the top, lets enable dco after the initial install.
        postInstallDcoEnable
    else
        echo "Ruby not found. Ruby is required to use the coderanger/dco signing tool."
        echo 'To install Ruby, visit https://www.ruby-lang.org/en/downloads/.'
        echo "Once Ruby is installed, open a new shell session and rerun this script."
    fi
fi