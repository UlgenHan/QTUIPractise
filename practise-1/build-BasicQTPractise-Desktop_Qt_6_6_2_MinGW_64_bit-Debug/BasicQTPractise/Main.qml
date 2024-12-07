import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("The Code Magazine")

    ScrollView{
        anchors.fill: parent


        Column{
            id: columnContainer
            spacing : 20
            anchors.margins: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            Text {
                id: mainHeader
                text: qsTr("📘 The Code Magazine")
                font.pixelSize: 25
                font.bold: true
            }

            Text {
                id: secondaryHeader
                text: qsTr("The Basic Language of the Web: HTML")
                font.pixelSize: 17
                font.bold: true
            }

            Image {
                id:authorImage
                source:"qrc:/images/laura-jones.jpg"
                width: 200
                height: 200
            }

            Text {
                id:authorInformation
                text: qsTr("Posted by <strong>Laura Jones</strong> on Monday, June 21st 2027")
            }

            Image{
                id:postImage
                width:400
                height: 300
                source: "qrc:/images/post-img.jpg"
            }

            Text {
                id:preText
                text:qsTr("All modern websites and web applications are built using three fundamental technologies: HTML, CSS and JavaScript.")
            }

            Text {
                id:preText2
                text:qsTr("These are the languages of the web.<br>In this post, let's focus on HTML. We will learn what HTML is all about, and why you too should learn it.")
            }

            Text {
                id: secondaryHeader2
                text: qsTr("What is HTML?")
                font.pixelSize: 17
                font.bold: true
            }

            Text {
                id: preText3
                text: qsTr("HTML stands for HyperText Markup Language. It's a markup language that web developers use to structure and describe the content of a webpage (not a programming language).HTML consists of elements that describe different types of content: paragraphs, links, headings, images, video, etc. Web browsers understand HTML and render HTML code as websites.")
                wrapMode: Text.Wrap
                width: parent.width
                horizontalAlignment: Text.AlignLeft
            }

            Text {
                id: listHeader
                text: qsTr("In HTML, each element is made up of 3 parts:")
            }

            ListView{
                id: elementList
                width: 200
                height: 100
                interactive:false
                delegate: Text {
                    text: listItemContent

                }
                model: ListModel{
                    ListElement { listItemContent : "1.The opening tag"}
                    ListElement { listItemContent : "2.The closing tag"}
                    ListElement { listItemContent : "3.The actual tag"}
                }
            }

            Text {
                text: qsTr("Why should you learn HTML?")
                font.pixelSize: 13
                font.bold: true
            }

            Text {
                text: qsTr("There are countless reasons for learning the fundamental language of the web. Here are 5 of them:")
            }

            ListView{
                id: elementList2
                width: 200
                height: 100
                interactive:false
                delegate: Text {
                    text: listItemContent

                }
                model: ListModel{
                    ListElement { listItemContent : "1.)To be able to use the fundamental web dev language"}
                    ListElement { listItemContent : "2.)To hand-craft beautiful websites instead of relying on tools like"}
                    ListElement { listItemContent : "3.)Worpress or Wix To build web applications To impress friends To have fun 😃"}
                }
            }

            Text {
                text: qsTr("Hopefully you learned something new here. See you next time!")
            }

            Text {
                text: qsTr("Related Posts!")
                font.pixelSize: 13
                font.bold: true
            }
            ListView{
                id: elementList3
                width: 200
                height: 300
                interactive:false

                delegate: Row {
                    id: rowContainer
                    Image {
                        source: imageSource
                        height: 100
                        width : 100
                    }

                    Text {
                        anchors.centerIn: rowContainer.Center
                        text: contentText
                    }
                }

                model: ListModel{
                    ListElement {
                        imageSource: "qrc:/images/related-1.jpg"
                        contentText : "How to learn Web Development"
                    }
                    ListElement {
                        imageSource: "qrc:/images/related-2.jpg"
                        contentText : "How to learn Web Development"
                    }
                    ListElement {
                        imageSource: "qrc:/images/related-3.jpg"
                        contentText : "How to learn Web Development"
                    }
                }
            }
        }
    }
}
