#ifndef FILEREADER
#define FILEREADER

#include <QObject>

class FileReader : public QObject
{
    Q_OBJECT

public:
    explicit FileReader(QObject *parent = 0);
    Q_INVOKABLE QString readData();
};

#endif // FILEREADER

