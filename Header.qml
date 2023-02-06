//Header.qml
import QtQuick 2.15
Item{

width: 960
height: 50
Rectangle {
            width: 960
            height: 1
            y: 80
            color: "white"

}
Text{
    y:24
 width: 960
 horizontalAlignment: Text.AlignHCenter
 text: "Hamamatsu, Japan"
 font.pointSize: 24
 color: "white"
 font.weight: Font.DemiBold
 font.family: "Helvetica"
}

Text{
    y:40
    id: clock
      width: 960
 horizontalAlignment: Text.AlignRight

         color: "white"
         property date now: new Date()
         property int hours: now.getHours()
         property int minutes: now.getMinutes()
         property string delim: now.getSeconds() % 2 ? ':' : ' '

         font.pointSize: 25
         text:  hours.toString().padStart(2, '0') + delim.toString() + minutes.toString().padStart(2,'0')

    Timer{
         running: true
         repeat: true
         interval: 1000
         onTriggered:clock.now = new Date()
         }


     }
Text{
     horizontalAlignment: Text.AlignRight
    id: today
      width: 960


         color: "white"
         property date now: new Date()
         property int month: now.getMonth()
         property int year: now.getFullYear()
         property int date: now.getDate()
         property int day: now.getDay()
         font.pointSize: 25
         text:  year.toString().padStart(4,'0')+'/'+ (month+1).toString().padStart(2,'0') +'/'+ date.toString().padStart(2,'0')

    Timer{
         running: true
         repeat: true
         interval: 1000
         onTriggered:clock.now = new Date()
         }


     }
}
