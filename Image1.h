#ifndef IMAGE1_H
#define IMAGE1_H

#include <QObject>

class Image1 : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int x READ getX WRITE setX)
    Q_PROPERTY(int y READ getY WRITE setY)
    Q_PROPERTY(QString source READ getSource WRITE setSource)

public:
    Image1(int x, int y, QString source, QObject* parent = nullptr)
        : QObject(parent), m_x(x), m_y(y), m_source(source)
    {

    }

    int getX() const { return m_x; }
    int getY() const { return m_y; }
    QString getSource() const { return m_source; }

    void setX(int x) { m_x = x; }
    void setY(int y) { m_y = y; }
    void setSource(QString source) { m_source = source; }

private:
    int m_x;
    int m_y;
    QString m_source;
};

#endif // IMAGE1_H
