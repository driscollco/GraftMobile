import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Rectangle {
    property real accountBalance
    property alias accountName: accountName.text
    property alias productImage: picture.source

    height: parent.width / 5 - 10

    RowLayout {
        spacing: 10
        anchors {
            left: parent.left
            right: parent.right
            leftMargin: 15
            rightMargin: 15
            verticalCenter: parent.verticalCenter
        }

        OpacityMask {
            id: opacityMask
            maskSource: circle
            Layout.preferredWidth: 46
            Layout.preferredHeight: 46
            source: picture.status === Image.Ready ? picture : greyPicture

            Rectangle {
                id: circle
                width: picture.width
                height: picture.height
                radius: picture.width / 2
                visible: false
            }

            Image {
                id: picture
                width: 46
                height: 46
                visible: false
            }

            Rectangle {
                id: greyPicture
                width: picture.width
                height: picture.height
                visible: false
                color: "#d1d3d4"
            }
        }

        RowLayout {
            spacing: 0
            Layout.alignment: Qt.AlignHCenter

            Text {
                id: accountName
                color: "#000000"
                Layout.fillWidth: true
                font.pointSize: 20
            }

            Text {
                text: accountBalance
                color: "#404040"
                font.pointSize: 20
            }
        }
    }

    Rectangle {
        height: 1
        anchors {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            leftMargin: 15
            rightMargin: 15
        }
        color: "#e6e6e8"
    }
}
