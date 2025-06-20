# Nodejs node_modules cleanup batch script
Ever needed to do a backup of your local development environment and needed to clean up your node_module folders for all your projects? Well here is a quick and dirty bat script to do it

## Usage
Open a command prompt and run the bat file passing the required arguments:

clean-node-modules.bat [root path] [/dry-run] [/y]
- [root path] Letter:\path\to\parent\folder\to\search\recursivly\and\cleanup\node_modules
  EXP: "C:\mydev\node-projects"
- [/dry-run] Do a dry run and only show what would have been deleted
- [/y] Pass this argument to skip confirmation of each folder deletion

Enjoy!
