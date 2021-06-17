#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "Image1.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine(QUrl("qrc:///qml/Main.qml"));
    QVariantMap data;
    data.insert("a", QVariant::fromValue<QObject*>(new Image1(40, 30, "qrc:///images/small.jpg")));
    data.insert("b", QVariant::fromValue<QObject*>(new Image1(20, 90, "qrc:///images/small.jpg")));
    data.insert("c", QVariant::fromValue<QObject*>(new Image1(100, 130, "qrc:///images/small.jpg")));
    engine.rootContext()->setContextProperty("list1", QVariant::fromValue(data));
    return app.exec();
}
