import bb.cascades 1.0

NavigationPane {
    id: npane
    paneProperties: NavigationPaneProperties {
        backButton: ActionItem {
            title: "back"
            onTriggered: {
                npane.pop();
            }
        }
    }
}
