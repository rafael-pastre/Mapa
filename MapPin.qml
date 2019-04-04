/**
  This file describres the QML layout of a map pin that will be dynamic added to the map
*/

import QtQuick 2.0
import QtLocation 5.6
import QtPositioning 5.6

MapQuickItem{
        parent:map
        sourceItem: Image{
            id: imageID
            source:"PinBlack.png"
            width: map.zoomLevel*2.2/3    //22
            height: map.zoomLevel*3.2/3   //32
        }
        anchorPoint.x: imageID.width/2
        anchorPoint.y: imageID.height/2
}



