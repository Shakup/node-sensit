# Node Sens'it
> Simple Sens'it API library for node.js

## Installation

You can install **node-sensit** using [npm](https://www.npmjs.com/):

```
npm install node-sensit
```


## API Documentation

### Include

```
var Sensit = require("sensit");
```

### Instanciate

```
var sensit = new Sensit("your_token_here");
```

### Requests

> For more informations about request responses, read the [official documentation](https://api.sensit.io/v1/)

#### Get all devices

```
sensit.getAllDevices();
```

__Exemple__

```
sensit.getAllDevices().then(function (json) {
	console.log(json);
}).fail(function (json) {
	console.log('Error!');
});
```

#### Get specific device

```
sensit.getDevice(id_device);
```

__Exemple__

```
sensit.getDevice(1).then(function (json) {
	console.log(json);
}).fail(function (json) {
	console.log('Error!');
});
```

#### Get all sensors

```
sensit.getAllSensors(id_device);
```

__Exemple__

```
sensit.getAllSensors(1).then(function (json) {
	console.log(json);
}).fail(function (json) {
	console.log('Error!');
});
```

#### Get specific sensor

```
sensit.getSensor(id_device, id_sensor);
```

__Exemple__

```
sensit.getSensor(1, 2).then(function (json) {
	console.log(json);
}).fail(function (json) {
	console.log('Error!');
});
```

## Author

* Email: [sebastien.decamme@gmail.com](mailto:sebastien.decamme@gmail.com)
* Twitter: [@sdecamme](https://twitter.com/sdecamme)
* Website: [http://sebastiendecamme.fr](http://sebastiendecamme.fr)


## Copyright and license

Copyright 2014-2015 Sébastien Decamme. Released under [MIT](http://opensource.org/licenses/MIT).