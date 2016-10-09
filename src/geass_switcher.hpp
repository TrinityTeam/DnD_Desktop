#pragma once
#include <QObject>
#include <QVariant>
#include <QQuickItem>



class Handler: public QObject {

    Q_OBJECT

public slots:
    void handle(const QVariant& v) {
        QQuickItem* item = qobject_cast<QQuickItem*>(v.value<QObject*>());
        QMetaObject::invokeMethod(item, "click");
    }
};

