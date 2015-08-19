#include <QtQml>
#include <QApplication>
#include <QQmlApplicationEngine>
#include "filereader.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    FileReader reader;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("reader", &reader);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
