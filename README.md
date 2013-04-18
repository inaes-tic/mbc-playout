# MBC Playout {mlt edition} #

This project, sponsored by the National Institute of Asociativism and Social
Economy of the Argentinian Government (INAES: Instututo Nacional de
Asociativismo y Economia Social), is a complete playout solution designed as
an HTML5 UI to the melted playout server.

It initially targets cooperatives, of all sizes, and is thought as a
collaborative playout programation plateform from the ground up.

# requirements #

+ gettext

```shell
   apt-get install gettext 
```

+ npm

```shell
   apt-get install npm  
```
+ node > 0.6.4

```shell
   apt-get install nodejs
```

+ mongodb

```shell
   apt-get install mongodb
```

+ melt libraries (if you don't have melted installed)

```shell
   apt-get install ffmpeg melt libmlt-dev libmlt++-dev
```

+ alltoogethernow

```shell
   sudo apt-get install gettext npm nodejs mongodb ffmpeg melt libmlt-dev libmlt++-dev
```

# Installing #

cloning this module and runing make should install all required submodules,
npm install, and get a server working on http://localhost:3000

```shell
   git clone --recursive http://github.com/inaes-tic/mbc-playout
   cd mbc-playout
   make
```
# History #
MBC Playout started, a long long time ago, as a fork of 'Media Cellar',
that was heavily based on [Node Cellar](http://nodecellar.coenraets.org) by @coenraets

today, we re-wrote most of the code, but well, the old README said:

"Media Cellar" is a sample CRUD application built with with Backbone.js,
Twitter Bootstrap, Node.js, Express, Now.js, FFMPEG, MLT and MongoDB.

The application allows you to browse through a list of medias stored on your
hard drive. you can as well as add, update, and delete medias.
