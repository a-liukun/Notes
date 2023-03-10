import QtQuick
import "../common"

Window {
    width: 300
    height: 290
    visible:true

    ListView{
        delegate: spaceManDelegate
        section.delegate: sectionDelegate
        section.property: 'nation'
        section.criteria: ViewSection.FullString
        model:spaceMen

        anchors.fill: parent
        anchors.margins: 20

        clip: true
    }

    Component{
        id:spaceManDelegate

        Item{
            id:spaceManWrapper
            required property string name
            width: ListView.view.width
            height:20
            Text {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 8
                font.pixelSize: 12
                text: spaceManWrapper.name
            }
        }
    }

    Component{
        id:sectionDelegate

        BlueBox{
            width: ListView.view.width
            height: 20
            //required property string section
            text: section
        }
    }

    ListModel {
        id: spaceMen

        ListElement { name: "Abdul Ahad Mohmand"; nation: "Afganistan"; }
        ListElement { name: "Marcos Pontes"; nation: "Brazil"; }
        ListElement { name: "Alexandar Panayotov Alexandrov"; nation: "Bulgaria"; }
        ListElement { name: "Georgi Ivanov"; nation: "Bulgaria"; }
        ListElement { name: "Roberta Bondar"; nation: "Canada"; }
        ListElement { name: "Marc Garneau"; nation: "Canada"; }
        ListElement { name: "Chris Hadfield"; nation: "Canada"; }
        ListElement { name: "Guy Laliberte"; nation: "Canada"; }
        ListElement { name: "Steven MacLean"; nation: "Canada"; }
        ListElement { name: "Julie Payette"; nation: "Canada"; }
        ListElement { name: "Robert Thirsk"; nation: "Canada"; }
        ListElement { name: "Bjarni Tryggvason"; nation: "Canada"; }
        ListElement { name: "Dafydd Williams"; nation: "Canada"; }
    }
}
