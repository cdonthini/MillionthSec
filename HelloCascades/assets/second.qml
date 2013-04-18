import bb.cascades 1.0

Page {
    id: second
    titleBar: TitleBar {
        id: titleBar
        visibility: ChromeVisibility.Visible
        title: "Home"
    }
    Container {
        layout: StackLayout {
        }
        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Center
        Label {
            text: "Pick Your Birth Date"
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            DropDown {
                id: day
                title: "Date"
                horizontalAlignment: HorizontalAlignment.Center

                //options:
            }
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            DropDown {
                id: month
                title: "Month"
                horizontalAlignment: HorizontalAlignment.Center

                //options:
            }
        }
        Container {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            DropDown {
                id: year
                title: "Year"
                horizontalAlignment: HorizontalAlignment.Center

                //options:
            }
        }
    }
}
