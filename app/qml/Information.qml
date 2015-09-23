import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import ui 1.5
import QtWorldSummit 1.5

ScrollView {
    flickableItem.focus: true
    flickableItem.interactive: true

    Flickable {
        anchors.fill: parent

        contentHeight: columnContainer.height

        Column {
            id: columnContainer

            anchors {
                left: parent.left; leftMargin: parent.width * 0.05
                right: parent.right; rightMargin: parent.width * 0.05
            }

            Item { height: Theme.spacing; width: 1 }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                }

                text: qsTr("Qt World Summit 2015")
                font.pixelSize: Theme.fontSizeLarge
                wrapMode: Text.Wrap
                color: Theme.fontColor
            }

            Item { height: Theme.spacing; width: 1 }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                }

                text: qsTr("October 5-7")

                font {
                    pixelSize: Theme.fontSizeRegular
                    weight: Font.Light
                }

                wrapMode: Text.Wrap
                color: Theme.fontColor
            }

            Item { height: Theme.spacing * 2; width: 1 }

            Image {
                anchors {
                    left: parent.left
                    right: parent.right
                }

                source: "qrc:/images/qws2015-hero.jpg"
                fillMode: Image.PreserveAspectFit
            }

            Item { height: Theme.spacing * 2; width: 1 }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                }

                text: qsTr("Berlin Congress Center")

                font {
                    pixelSize: Theme.fontSizeLarge
                    weight: Font.Light
                }

                wrapMode: Text.Wrap
                color: Theme.fontColor
            }

            Item { height: Theme.spacing * 2; width: 1 }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                }

                text: qsTr("Qt World Summit, hosted by The Qt Company, is the global event for all things Qt. Whether you are a technology director, business decision maker, tech strategist, product manager, engineer or developer there is something here for you.")
                horizontalAlignment: Text.AlignJustify

                font {
                    pixelSize: Theme.fontSizeRegular
                    weight: Font.Light
                }

                wrapMode: Text.Wrap
                color: Theme.fontColor
            }

            Item { height: Theme.spacing * 2; width: 1 }

            Label {
                anchors {
                    left: parent.left
                    right: parent.right
                }

                linkColor: "#2c3e50"
                text: qsTr("This application is open source. You can find the source code at <a href=\"https://github.com/ndesai/qtworldsummit\">Github</a>.")
                horizontalAlignment: Text.AlignJustify

                onLinkActivated: Qt.openUrlExternally(link)

                font {
                    pixelSize: Theme.fontSizeRegular
                    weight: Font.Light
                }

                wrapMode: Text.Wrap
                color: Theme.fontColor
            }

            Item { height: Theme.spacing * 2; width: 1 }

            Row {
                Label {
                    font {
                        pixelSize: Theme.fontSizeRegular
                        weight: Font.Light
                    }

                    wrapMode: Text.Wrap
                    color: Theme.fontColor

                    text: qsTr("Notifications")
                }

                Item {
                    width: Theme.spacing
                    height: 1
                }

                Switch {
                    checked: ScreenValues.notificationsEnabled

                    onCheckedChanged: ScreenValues.notificationsEnabled = checked

                    style: SwitchStyle {
                        handle: Rectangle {
                            width: ScreenValues.dp * 22
                            height: ScreenValues.dp * 22

                            radius: height/2

                            color: "#BDBDBD"
                        }

                        groove: Item {
                            width: ScreenValues.dp * 40
                            height: ScreenValues.dp * 22

                            Rectangle {

                                anchors.centerIn: parent

                                width: parent.width - ScreenValues.dp * 2
                                height: ScreenValues.dp * 16

                                radius: height/2

                                color: control.checked ? Theme.activeTabColor : Theme.unactiveTabColor

                                Behavior on color { ColorAnimation { } }
                            }
                        }
                    }
                }
            }
        }
    }
}
