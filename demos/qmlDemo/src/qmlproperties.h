#ifndef QMLPROPERTIES_H
#define QMLPROPERTIES_H

#include <QObject>

class QmlProperties : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString appName READ appName WRITE setAppName NOTIFY appNameChanged)
public:
    explicit QmlProperties(QObject *parent = nullptr);
    const QString appName() { return m_appName; }
    void setAppName(const QString & appName) {
        if(m_appName != appName)
        {
            m_appName = appName;
            emit appNameChanged();
        }
    }

signals:
void appNameChanged();

public slots:
private:
QString m_appName;
};

#endif // QMLPROPERTIES_H
