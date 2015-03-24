import bb.cascades 1.4

Container { 
    id: emojiTabButton
    
    property variant orderList
    property alias tabButtonImageSource: button.defaultImageSource
    property string sourceDirectory: ""
    property bool selected: false
    
    signal emojiTabClicked();

    topPadding: 12 
    bottomPadding: 12
    leftMargin: 6
    rightMargin: 6
    preferredWidth: 288
    minWidth: 70
    maxWidth: 288
    background: selected ? ui.palette.primary : ui.palette.plainBase
    horizontalAlignment: HorizontalAlignment.Fill
    
    ImageButton { 
        id: button
        minWidth: 64 
        minHeight: 64
        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Center
        pressedImageSource: defaultImageSource

        onClicked: {
            emojiTabButton.emojiTabClicked();
        }
    }
}
