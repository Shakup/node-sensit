# Node Sens'it
> Simple Sens'it API library for node.js

## Installation

You can install **node-sensit** using [npm](https://www.npmjs.com/):

```
npm install node-sensit
```


## API Documentation

### 1 - Include

```
var Sensit = require("sensit");
```

### 2 - Instanciate

```
var sensit = new Sensit("your_token_here");
```

### 3 - Requests

**Get all devices**
```
sensit.getAllDevices();
```

Exemple
```
sensit.getAllDevices().then(function (json) {
	console.log(json);
});
```

## Author

* Email: [sebastien.decamme@gmail.com](mailto:sebastien.decamme@gmail.com)
* Twitter: [@sdecamme](https://twitter.com/sdecamme)
* Website: [http://sebastiendecamme.fr](http://sebastiendecamme.fr)


## Copyright and license

Copyright 2014-2015 Sébastien Decamme. Released under [MIT](http://opensource.org/licenses/MIT).