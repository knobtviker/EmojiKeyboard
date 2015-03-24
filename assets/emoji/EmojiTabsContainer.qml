import bb.cascades 1.4
import "EmojiLists.js" as EmojiLists

Container {  
    id: rootEmojiTabsContainer
    
    onCreationCompleted: {
        rootEmojiTabsContainer.controls[0].emojiTabClicked();
    }
    
    signal emojiTabClicked(variant tabOrder);
    
    function handleSelection() {
        for (var i=0; i<rootEmojiTabsContainer.controls.length; i++)
        rootEmojiTabsContainer.controls[i].selected = false
    }
    
    layout: StackLayout { orientation: LayoutOrientation.LeftToRight }
    horizontalAlignment: HorizontalAlignment.Fill
    topPadding: 6
    bottomPadding: 6
    leftPadding: 6
    rightPadding: 6
        
    EmojiTabButton {
        tabButtonImageSource: "asset:///emoji/images/emoji_category_people.png"
        orderList: EmojiLists.people
        onEmojiTabClicked: {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(orderList)
        }
    }
    EmojiTabButton {
        tabButtonImageSource: "asset:///emoji/images/emoji_category_nature.png"
        orderList: EmojiLists.nature
        onEmojiTabClicked: {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(orderList)
        }
    }
    EmojiTabButton {
        tabButtonImageSource: "asset:///emoji/images/emoji_category_objects.png"
        orderList: EmojiLists.objects
        onEmojiTabClicked: {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(orderList)
        }
    }
    EmojiTabButton {
        tabButtonImageSource: "asset:///emoji/images/emoji_category_places.png"
        orderList: EmojiLists.places
        onEmojiTabClicked: {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(orderList)
        }
    }
    EmojiTabButton {
        tabButtonImageSource: "asset:///emoji/images/emoji_category_symbols.png"
        orderList: EmojiLists.symbols
        onEmojiTabClicked: {
            rootEmojiTabsContainer.handleSelection()
            selected = true
            rootEmojiTabsContainer.emojiTabClicked(orderList)
        }
    }
}