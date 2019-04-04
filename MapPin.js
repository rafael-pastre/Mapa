var newMapPin;
var component;

function createPin(coord) {
    component = Qt.createComponent("MapPin.qml");
    newMapPin = component.createObject(map,{"coordinate":coord})
    map.addMapItem(newMapPin);
}
