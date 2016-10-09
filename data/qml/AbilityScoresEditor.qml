import QtQuick 2.0



Item {
    id: abilityScoresEditor

    signal clicked(var item)

    Column {
        anchors.fill: parent
        Row {
            id: strength

            Text {
                text: "Strength"
            }
            Text {
                text: "10"
            }
        }
        Row {
            id: dexterity
            Text {
                text: "Dexterity"
            }
            Text {
                text: "10"
            }
        }
        Row {
            id: intelligence
            Text {
                text: "Intelligence"
            }
            Text {
                text: "10"
            }
        }
    }

    Image {
        id: geass
        property string mode: "geass"
        anchors.fill: parent
        source: "../images/geass.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            onClicked: abilityScoresEditor.clicked(abilityScoresEditor)
        }
        function setMode(mode) {
            geass.mode = mode
            if (geass.mode === "geass") {
                source = "../images/geass.png"
            } else {
                source = "../images/antigeass.png"
            }
        }
    }

    function click() {
        if(geass.mode == "antigeass") {
            geass.setMode("geass")

        } else {
            geass.setMode("antigeass")
        }
    }
}
