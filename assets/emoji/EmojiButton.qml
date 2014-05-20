import bb.cascades 1.3

Container { 
    id: rootEmojiButton
    
    function stripToChars(path) {
        var result = ""
        result = path.substring(path.indexOf("_")+1, path.lastIndexOf("_"))
        return result
    }
    
    property string chars: ""
    property bool touched: false
    property alias imageSource: image.imageSource
    onImageSourceChanged: {
        rootEmojiButton.chars = rootEmojiButton.stripToChars(imageSource.toString())
    }
    
    background: touched ? ui.palette.primary : Color.create("#ff262626")
    layout: DockLayout {}
    
    ImageView { 
        id: image
        opacity: rootEmojiButton.touched ? 0.75 : 1.0
        minWidth: 64
        maxWidth: 64
        minHeight: 64
        maxHeight: 64
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
    }

    onTouch: {
        if (event.touchType == TouchType.Down) {
            rootEmojiButton.touched = true
        } else if (event.touchType == TouchType.Cancel) {
            rootEmojiButton.touched = false
        } else if (event.touchType == TouchType.Up) {
            rootEmojiButton.touched = false
            rootEmojiButton.ListItem.view.tapped(rootEmojiButton.chars)
        }
    }
}