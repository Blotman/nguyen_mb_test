#include <QObject>
#include <QFile>
#include <QTextStream>
#include "filereader.h"

FileReader::FileReader(QObject *parent) : QObject(parent)
{
}

QString FileReader::readData()
{
    QString data;
    QFile file("/proc/cpuinfo");

    if ( file.open(QIODevice::ReadOnly) )
    {
        QTextStream textStream( &file );
        QString line;// = textStream.readLine();
        do
        {
            line = textStream.readLine();
            data += line + "\n";
        } while (!line.isNull());
        file.close();
    }
    return data;
}

