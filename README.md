# MBC Playout {mlt edition}

This project, sponsored by the National Institute of Asociativism and Social
Economy of the Argentinian Government (INAES: Instututo Nacional de
Asociativismo y Economia Social), is a complete playout solution designed as
an HTML5 UI to the melted playout server.

It initially targets cooperatives, of all sizes, and is thought as a
collaborative playout programation plateform from the ground up.

## Components

### mbc-caspa

Caspa is the HTML5 UI. It will let you manage the media files, search and
organize them in playlists, schedule the broadcast and manage the configuration.

### mbc-mosto

Mosto is the playout core. Binded to Caspa, will check and apply it's changes
to the melted server playlist.

### melted

Melted is the broadcast server. It's responsible for consuming the media files in the
order that Mosto commanded, and broadcast them through the configured output device.

## Requirements

### gettext

```shell
   apt-get install gettext
```

### node > 0.8

```shell
   apt-get install nodejs
```

Check it on [joyent wiki](https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager)

### npm

```shell
   apt-get install npm
```

### mongodb

```shell
   apt-get install mongodb
```

### redis

```shell
   apt-get install redis-server
```

### ffmpeg
```shell
   apt-get install ffmpeg
```

### melt libraries (if you don't have melted installed)

```shell
   apt-get install melt libmlt-dev libmlt++-dev pkg-config
```

### alltoogethernow

```shell
   sudo apt-get install gettext npm nodejs mongodb redis-server ffmpeg melt libmlt-dev libmlt++-dev pkg-config
```

## Installing

cloning this module and runing make should install all required submodules,
npm install, and get a server working on http://localhost:3000

```shell
   git clone --recursive http://github.com/inaes-tic/mbc-playout
   cd mbc-playout
   make
```
## History
MBC Playout started, a long long time ago, as a fork of 'Media Cellar',
that was heavily based on [Node Cellar](http://nodecellar.coenraets.org) by @coenraets

today, we re-wrote most of the code, but well, the old README said:

"Media Cellar" is a sample CRUD application built with with Backbone.js,
Twitter Bootstrap, Node.js, Express, Now.js, FFMPEG, MLT and MongoDB.

The application allows you to browse through a list of medias stored on your
hard drive. you can as well as add, update, and delete medias.
