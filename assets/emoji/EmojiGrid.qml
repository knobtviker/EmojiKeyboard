import bb.cascades 1.4

Container { 
    id: rootEmojiGrid
    
    function fillListView(order) {
        rootEmojiGrid.hasButtons = false
        emojiDataModel.clear()
        for (var i=0; i<order.length;i++) {
            emojiDataModel.append(order[i])
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
            //columnCount: 2 //BigText
            //columnCount: 3 //BodyText
            //columnCount: 3 //PrimaryText
            columnCount: 3 //TitleText
            //columnCount: 4 //SmallText
            //columnCount: 4 //SubtitleText
        }
        dataModel: ArrayDataModel {
            id: emojiDataModel
        }
        listItemComponents: [
            ListItemComponent {
                EmojiButton {
                    charsSource: ListItemData.toString()
                }
            }
        ]
    }
}
