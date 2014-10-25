
export PATH=/usr/local/bin:/usr/local/share/python:/usr/local/sbin:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/usr/local/lib/python2.7/site-packages:${PATH}"
export PATH

##
# Your previous /Users/Kevin/.bash_profile file was backed up as /Users/Kevin/.bash_profile.macports-saved_2012-12-17_at_20:01:11
##

# MacPorts Installer addition on 2012-12-17_at_20:01:11: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PYTHONSTARTUP=~/pythonstartup.py

# Puts in all the things to make virtual envs magic
if [ -d /usr/local/bin/pip ]; then
    export PIP_RESPECT_VIRTUALENV=true
fi

/usr/local/share/python/virtualenvwrapper.sh
if [ -f /usr/local/share/python/virtualenvwrapper.sh ]; then
    export PROJECT_HOME=$HOME/src
    export WORKON_HOME=$HOME/.virtualenvs
    export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2
    source /usr/local/share/python/virtualenvwrapper.sh
fi

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
