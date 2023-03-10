import QtQuick

Item {
    id:root
    width: 480
    height: 300
    property int duration: 3000
    Rectangle{
        id:sky
        width: parent.width
        height: 200
        gradient: Gradient{
            GradientStop{position:0.0;color:"#0080FF"}
            GradientStop{position:1.0;color:"#66CCFF"}
        }
    }

    Rectangle{
        id:ground
        anchors.top: sky.bottom
        anchors.bottom: root.bottom
        width: parent.width

        gradient: Gradient{
            GradientStop{position:0.0;color:"#00FF00"}
            GradientStop{position:1.0;color:"#00803F"}
        }
    }

    Image {
        id: ball
        source: "../images/soccer_ball.png"
        scale:0.5
        x:0;y:root.height-height

        MouseArea{
            anchors.fill: parent
            onClicked: {
                ball.x=0
                ball.y=root.height-ball.height
                ball.rotation=0
                anim.restart();
            }
        }
    }

    ParallelAnimation{
        id:anim
        SequentialAnimation{
            NumberAnimation{
                properties: "y"
                target:ball
                to:20
                duration: root.duration*0.4
                easing.type:Easing.OutCirc
            }
            NumberAnimation{
                properties: "y"
                target:ball
                to:root.height-ball.height
                duration: root.duration*0.6
                easing.type:Easing.OutBounce
            }
        }
        NumberAnimation{
            properties: "x"
            target:ball
            to:380
            duration: root.duration
           // easing.type:
        }
        RotationAnimation{
            properties: "rotation"
            target:ball
            to:720
            duration:root.duration
        }
    }
}
