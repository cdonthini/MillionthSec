import bb.cascades 1.0

Container {
    property int count: 0
    layout: StackLayout {
    }
    Label {
        text: "Pressed " + count + " times"
    }
    Button {
        text: "Press Me"
        onClicked: {
            count++
        }
    }
}
