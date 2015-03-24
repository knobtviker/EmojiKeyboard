EmojiKeyboard
=============

Emoji Keyboard control made in Cascades for BlackBerry10 10.3.1 but in a few changes can be adapted to 10.2 or less.

How To Use
====================
1. EmojiKeyboard.pro
---------------------
Add these libs to your project file if you didn't already. 
<blockquote>LIBS += -lbbdevice -lbps -lbb</blockquote>

2. src
---------------------
Copy VirtualKeyboardHandler.hpp and VirtualKeyboardHandler.cpp into your project src folder.

3. main.cpp
---------------------
Expose C++ class to QML.
<blockquote>qmlRegisterType<VirtualKeyboardHandler>("com.knobtviker.Helpers", 1, 0, "VirtualKeyboardHandler");</blockquote>

4. QML assets
---------------------
Copy emoji folder from assets to your project assets folder. Emoji folder contains everything you need to use the keyboard, from controls to Unicode arrays.

5. main.qml
---------------------
Examine how the EmojiKeyboard control is used.
Don't forget to add this line on top of the QML file where you want to use it.
<blockquote>import "emoji"</blockquote>
TextArea (or TextField) control has additional properties and setup you must use or merge into your controls.
Button used for switching between virtual keyboard and EmojiKeyboard is aware of "isPhysicalKeyboardDevice".
Paste the EmojiKeyboard code and reuse.


*Goal of any future update will be to compartmentalize code even more until it is a standalone control to use in any application.*
