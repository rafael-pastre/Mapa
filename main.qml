/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import QtQuick.Window 2.0
import QtLocation 5.6
import QtPositioning 5.6

//import ZenMap 1.0
import "MapPin.js" as MapPinScript

Window {
    id:mainWindow
    width: 512
    height: 512
    visible: true

    property var lat: -22.0182298
    property var lon: -47.908743
/**
    MapVariables{
        id: mapVariables
        objectName: mapVariables;
    }
    Component.onCompleted: {
        mapVariables.setMapObject(mainWindow);
    }
*/
    Plugin {
        id: mapPlugin
        name: "osm"
    }

    function addMapPoint(){
        MapPinScript.createPin(QtPositioning.coordinate(lat ,lon))
        map.update()
    }
/**
    Timer{
        id:mapTimer
        running: true
        repeat: true
        interval: 1000
        onTriggered: {
            MapPinScript.createPin(QtPositioning.coordinate(lat ,lon))
            //lat = mapVariables.lat;
            //lon = mapVariables.lon;
        }
    }
*/
    Map {
        id:map
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(-22.0068508,-47.8749257)
        zoomLevel: 13
    }
/**
        MapCircle{
            color: "red"
            center: QtPositioning.coordinate(-22.0182298,-47.908743)
            radius: 100
        }

        MapQuickItem{
            id:teste
            coordinate:QtPositioning.coordinate(-22.0 ,-47.908743)
            sourceItem: Image{
                id: image
                source:"PinBlack.png"
                width: 40
                height: 40
            }
            anchorPoint.x: image.width/2
            anchorPoint.y: image.height/2
        }

        MapQuickItem{
            id:teste2
            coordinate:QtPositioning.coordinate(-22.0295113 ,-47.8859616)
            sourceItem: Image{
                id: image2
                source:"PinBlack.png"
                width: 40
                height: 40
            }
            anchorPoint.x: image.width/2
            anchorPoint.y: image.height/2
        }

*/
	
}
