#ifndef IMAGE1_H
#define IMAGE1_H

#include <QObject>
#include <QList>

class ImageTest : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int x READ getX WRITE setX)
    Q_PROPERTY(int y READ getY WRITE setY)
    Q_PROPERTY(QString source READ getSource WRITE setSource)

public:
    ImageTest(QObject* parent = nullptr) : QObject(parent)
    {

    }

    ImageTest(QString objectName, int x, int y, QString source, QObject* parent = nullptr)
        : QObject(parent), m_x(x), m_y(y), m_source(source)
    {
        setObjectName(objectName);
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

class List1 : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE
    int length()
    {
        return list.size();
    }

    Q_INVOKABLE
    ImageTest* get(int i)
    {
        return list[i];
    }

    Q_INVOKABLE
    ImageTest* add(ImageTest* img)
    {
        list.push_back(img);
        return list.last();
    }

    Q_INVOKABLE
    ImageTest* add(QString objectName, int x, int y, QString source)
    {
        list.push_back(new ImageTest(objectName, x, y, source));
        return list.last();
    }

private:
    QList<ImageTest*> list;
};

#endif // IMAGE1_H
