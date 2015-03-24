import bb.cascades 1.4
import com.knobtviker.Helpers 1.0

Container { 
    id: rootEmojiKeyboard
    
    function toggleVisibility() {
        if (rootEmojiKeyboard.keyboardVisible) {
            rootEmojiKeyboard.keyboardVisible = false;
        } else {
            rootEmojiKeyboard.keyboardVisible = true;
        }
    }
    
    function keyboardToggleVisibility() {
        keyboard.toggleVisibility();
    }

    signal emojiTapped(string chars);
    
    property bool keyboardVisible: false
    property bool isPhysicalKeyboardDevice: keyboard.isPhysicalKeyboardDevice
    
    horizontalAlignment: HorizontalAlignment.Fill
    verticalAlignment: VerticalAlignment.Bottom
    preferredHeight: 400
    background: ui.palette.plain
    bottomPadding: 6
    visible: (keyboard.visible || !rootEmojiKeyboard.keyboardVisible) ? false : true
    minHeight: keyboard.visible ? keyboard.height : 0

    Container {
        background: Color.create("#ff676f73")
        horizontalAlignment: HorizontalAlignment.Fill
        minHeight: 9
        preferredHeight: 9
    }
    
    EmojiGrid {
        id: emojiGrid
        onEmojiTapped: {
            rootEmojiKeyboard.emojiTapped(chars)
        }
    }
    
    Container {
        background: Color.create("#ff676f73")
        horizontalAlignment: HorizontalAlignment.Fill
        minHeight: 9
        preferredHeight: 9
    }
    
    EmojiTabsContainer {
        onEmojiTabClicked: {
            emojiGrid.fillListView(tabOrder)
        }
    }
    
    attachedObjects: [
        VirtualKeyboardHandler {
            id: keyboard
            onKeyboardShown: {
                rootEmojiKeyboard.keyboardVisible = !keyboard.visible;
            }
        }
    ]
}
