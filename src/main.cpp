#include <bb/cascades/Application>

#include <QLocale>
#include <QTranslator>
#include <Qt/qdeclarativedebug.h>

#include "applicationui.hpp"
#include "VirtualKeyboardHandler.hpp"

using namespace bb::cascades;

Q_DECL_EXPORT int main(int argc, char **argv)
{
    Application app(argc, argv);

    qmlRegisterType<VirtualKeyboardHandler>("com.knobtviker.Helpers", 1, 0, "VirtualKeyboardHandler");

    // Create the Application UI object, this is where the main.qml file
    // is loaded and the application scene is set.
    ApplicationUI appui;

    // Enter the application main event loop.
    return Application::exec();
}
