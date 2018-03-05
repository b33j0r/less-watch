# less-watch

## Description

Less-watch is a Docker image bundled with:

* [Node](https://nodejs.org/)
* [Less CSS](http://lesscss.org/)
* [less-watch-compiler](https://github.com/jonycheung/deadsimple-less-watch-compiler)

## Usage

1. Define a `less-watch-compiler.config.json` in what's the container current
directory:

```json
{
    "watchFolder": "<input_folder>",   
    "outputFolder": "<output_folder>",
    "mainFile": "<main-file>",   
    "sourceMap": false,
    "plugins": "plugin1,plugin2",
    "runOnce": false
}
```

More details about this file
[here](https://github.com/jonycheung/deadsimple-less-watch-compiler#configuration-file).

2. Run it:

```shell
$ docker run --rm -v `pwd`:/app -w /app -ti omab/less-watch
```
