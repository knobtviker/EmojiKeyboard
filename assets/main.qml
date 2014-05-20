import bb.cascades 1.3
import "emoji"

Page {
    Container {
        layout: DockLayout {}
        
        Container {
            horizontalAlignment: HorizontalAlignment.Fill
            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            TextArea {
                id: textArea
                function toggleInputFlags() {
                    if (input.flags == TextInputFlag.VirtualKeyboardOff) {
                        input.flags = TextInputFlag.Default
                    } else {
                        input.flags = TextInputFlag.VirtualKeyboardOff
                    }
                }
                content.flags: TextContentFlag.ActiveTextOff | TextContentFlag.Emoticons
                focusRetentionPolicyFlags: FocusRetentionPolicy.LoseToFocusable
                implicitLayoutAnimationsEnabled: false
                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Top
                hintText: "Touch me to type and try emoji input..."
                input {
                    submitKey: SubmitKey.Send;
                    onSubmitted: {
                        console.log("SEND THIS TEXT", textArea.text)
                    }
                }
                onTextChanging: {
                    label.text = text
                }
            }
            Button {
                preferredHeight: 70
                preferredWidth: 70
                imageSource: emojiInput.keyboardVisible  ? (Application.themeSupport.theme.colorTheme.style == VisualStyle.Bright ? "asset:///emoji/images/ic_show_vkb_bright.png" : "asset:///emoji/images/ic_show_vkb_dark.png") : "asset:///emoji/images/people/emoji_1f604_64.png"
                onClicked: {
                    textArea.toggleInputFlags()
                    if (!emojiInput.keyboardVisible) {
                        emojiInput.toggleVisibility();
                        textArea.requestFocus();
                        emojiInput.keyboardToggleVisibility();
                    } else {
                        if(emojiInput.isPhysicalKeyboardDevice){
                            emojiInput.toggleVisibility();
                        } else{
                            emojiInput.keyboardToggleVisibility();
                        }
                        textArea.requestFocus();
                    }
                }
            }
        }
        Label {
            id: label
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Center
            multiline: true
        }
        
        EmojiKeyboard { 
            id: emojiInput
            onEmojiTapped: {
                textArea.editor.insertPlainText(getUnicodeCharacter('0x'+chars));
                textArea.requestFocus();
            }
        }
    }
}