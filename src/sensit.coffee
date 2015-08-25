request  = require "request"
Q        = require "q"
endpoint = "https://api.sensit.io/v1"

class Sensit
    constructor: (@token) ->
        return @


    request: (path, method = "GET", data = "") ->
        deferred = Q.defer()

        options = {
            "url": endpoint + path
            "method": method
            "json": true
            "headers": {
                "Authorization": "Bearer" + @.token
            }
        }

        request options, (err, res, body) ->
            if not err and res.statusCode in [200, 202]
                deferred.resolve body
            else
                deferred.reject body

        deferred.promise


    getAllDevices: () ->
        @.request "/devices"


    getDevice: (id_device) ->
        @.request "/devices/" + id_device


    getAllSensors: (id_device) ->
        deferred = Q.defer()
        
        @.getDevice id_device
        .then (json) ->
            deferred.resolve json.data.sensors
        .fail (json) ->
            deferred.reject body

        deferred.promise


    getSensor: (id_device, id_sensor) ->
        @.request "/devices/" + id_device + "/sensors/" + id_sensor
        

module.exports = Sensit