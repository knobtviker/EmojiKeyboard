import bb.cascades 1.4

Container { 
    id: rootEmojiButton

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

    property bool touched: false
    property string charsSource: "" 
    onCharsSourceChanged: {
        iconLabel.text = rootEmojiButton.getUnicodeCharacter('0x' + rootEmojiButton.charsSource)
    }
    
    background: touched ? ui.palette.primary : ui.palette.plainBase
    layout: DockLayout {}

    Label {
        id: iconLabel
        opacity: rootEmojiButton.touched ? 0.75 : 1.0
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        textStyle.base: SystemDefaults.TextStyles.TitleText
        textStyle.textAlign: TextAlign.Center
    }

    onTouch: {
        if (event.touchType == TouchType.Down) {
            rootEmojiButton.touched = true
        } else if (event.touchType == TouchType.Cancel) {
            rootEmojiButton.touched = false
        } else if (event.touchType == TouchType.Up) {
            rootEmojiButton.touched = false
            rootEmojiButton.ListItem.view.tapped(iconLabel.text)
        }
    }
}