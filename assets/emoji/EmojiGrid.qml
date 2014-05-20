import bb.cascades 1.3

Container { 
    id: rootEmojiGrid
    
    function fillListView(path, order) {
        rootEmojiGrid.hasButtons = false
        emojiDataModel.clear()
        for (var i=0; i<order.length;i++) {
            emojiDataModel.append(path+order[i])
        }
        rootEmojiGrid.hasButtons = true
    }
    
    signal emojiTapped(string chars)
    
    property bool hasButtons: false

    implicitLayoutAnimationsEnabled: false
    horizontalAlignment: HorizontalAlignment.Fill
    verticalAlignment: VerticalAlignment.Fill
    topPadding: 6
    bottomPadding: 6
    leftPadding: 6
    rightPadding: 6

    ActivityIndicator {
        layoutProperties: StackLayoutProperties {
            spaceQuota: 1.0
        }
        visible: !rootEmojiGrid.hasButtons
        running: !rootEmojiGrid.hasButtons
        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Center
        preferredWidth:  256 
        preferredHeight: 256 
    }

    ListView {  
        id: emojiListView
        
        signal tapped(string chars)
        onTapped: {
            rootEmojiGrid.emojiTapped(chars)
        }
        
        horizontalAlignment: HorizontalAlignment.Fill
        verticalAlignment: VerticalAlignment.Fill
        scrollIndicatorMode: ScrollIndicatorMode.None
        snapMode: SnapMode.LeadingEdge
        visible: rootEmojiGrid.hasButtons
        flickMode: FlickMode.SingleItem
        layoutProperties: StackLayoutProperties {
            spaceQuota: 1.0
        }
        layout: GridListLayout {
            orientation: LayoutOrientation.LeftToRight
            headerMode: ListHeaderMode.None
        }
        dataModel: ArrayDataModel {
            id: emojiDataModel
        }
        listItemComponents: [
            ListItemComponent {
                EmojiButton {
                    imageSource: ListItemData.toString()
                }
            }
        ]
    }
}
