#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlPropertyMap>

#include "ImageTest.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine(QUrl("qrc:///qml/Main.qml"));
    qmlRegisterType<ImageTest>();
    qmlRegisterType<List1>();
    List1 data;
    data.add(new ImageTest("a", 40, 30, "qrc:///images/small.jpg"));
    data.add(new ImageTest("b", 20, 90, "qrc:///images/small.jpg"));
    data.add(new ImageTest("c", 100, 130, "qrc:///images/small.jpg"));
    engine.rootContext()->setContextProperty("list1", &data);
    return app.exec();
}
