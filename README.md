Espresso README
===============

Espresso: The-M-Projects build tools using node.js


Installation
============

Prerequesites
-------------

To install espresso you need [Node.js](http://nodejs.org/) >= 0.4 and either git or npm.

Install via git
---------------

Check out the project with git, init the submodules and create an alias. Step-by-step presuming you have a ~/Code

1. Install node.js. see description [here](http://nodejs.org/#download)
2. cd into Code folder

    `cd ~/Code/`

3. Checkout Espresso:

    `git clone https://github.com/wherewolfNZ/Espresso.git`

4. Initialize submodules:

    `git submodule update --init`

5. Install NPM modules

    `npm install`

6. Create an alias:

    `alias espresso='~/Code/Espresso/bin/espresso.js'`

Usage
=====

1. Create a new HelloWorld project:
    
    `espresso init --project HelloWorld --example`

2. Build it:
    
    `cd HelloWorld && espresso build`

3. Run the development server:

    `espresso server`

4. Generate new files

    `espresso generate -c testcontroller -v testview -m testmodel`

This command will generate a new model, a new view and a new controller.

Licensing
=========

All license information about Espresso and used third-party components can be found in the LICENSE file,
Or in the concrete third-party component.
