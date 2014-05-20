import bb.cascades 1.3
import com.knobtviker.Helpers 1.0

Container { 
    id: rootEmojiKeyboard
    
    function getUnicodeCharacter(cp) {
        if (cp >= 0 && cp <= 0xD7FF || cp >= 0xE000 && cp <= 0xFFFF) {
            return String.fromCharCode(cp);
        } else if (cp >= 0x10000 && cp <= 0x10FFFF) {
            cp -= 0x10000;
            var first = ((0xffc00 & cp) >> 10) + 0xD800
            var second = (0x3ff & cp) + 0xDC00;
            return String.fromCharCode(first) + String.fromCharCode(second);
        }
    }
    
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
    preferredHeight: 450
    background: Color.create("#ff323232")
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
            emojiGrid.fillListView(tabName, tabOrder)
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
