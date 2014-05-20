/****************************************************************************
** Meta object code from reading C++ file 'VirtualKeyboardHandler.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../src/VirtualKeyboardHandler.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'VirtualKeyboardHandler.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_VirtualKeyboardHandler[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       3,   39, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      24,   23,   23,   23, 0x05,
      40,   23,   23,   23, 0x05,
      57,   23,   23,   23, 0x05,
      73,   23,   23,   23, 0x05,

 // slots: signature, parameters, type, tag, flags
      90,   23,   23,   23, 0x0a,

 // properties: name, type, flags
     113,  109, 0x02495001,
     125,  120, 0x01495103,
     133,  120, 0x01095001,

 // properties: notify_signal_id
       2,
       3,
       0,

       0        // eod
};

static const char qt_meta_stringdata_VirtualKeyboardHandler[] = {
    "VirtualKeyboardHandler\0\0keyboardShown()\0"
    "keyboardHidden()\0heightChanged()\0"
    "visibleChanged()\0toggleVisibility()\0"
    "int\0height\0bool\0visible\0"
    "isPhysicalKeyboardDevice\0"
};

void VirtualKeyboardHandler::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        VirtualKeyboardHandler *_t = static_cast<VirtualKeyboardHandler *>(_o);
        switch (_id) {
        case 0: _t->keyboardShown(); break;
        case 1: _t->keyboardHidden(); break;
        case 2: _t->heightChanged(); break;
        case 3: _t->visibleChanged(); break;
        case 4: _t->toggleVisibility(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData VirtualKeyboardHandler::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject VirtualKeyboardHandler::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_VirtualKeyboardHandler,
      qt_meta_data_VirtualKeyboardHandler, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &VirtualKeyboardHandler::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *VirtualKeyboardHandler::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *VirtualKeyboardHandler::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_VirtualKeyboardHandler))
        return static_cast<void*>(const_cast< VirtualKeyboardHandler*>(this));
    if (!strcmp(_clname, "bb::AbstractBpsEventHandler"))
        return static_cast< bb::AbstractBpsEventHandler*>(const_cast< VirtualKeyboardHandler*>(this));
    return QObject::qt_metacast(_clname);
}

int VirtualKeyboardHandler::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< int*>(_v) = height(); break;
        case 1: *reinterpret_cast< bool*>(_v) = visible(); break;
        case 2: *reinterpret_cast< bool*>(_v) = isPhysicalKeyboardDevice(); break;
        }
        _id -= 3;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 1: setVisible(*reinterpret_cast< bool*>(_v)); break;
        }
        _id -= 3;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 3;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void VirtualKeyboardHandler::keyboardShown()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void VirtualKeyboardHandler::keyboardHidden()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void VirtualKeyboardHandler::heightChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void VirtualKeyboardHandler::visibleChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}
QT_END_MOC_NAMESPACE
