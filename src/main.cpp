#include <QApplication>
#include <QtQml/QQmlEngine>
#include <QtQml/QQmlFileSelector>
#include <QtQuick/QQuickView>
#include <QtQuick/QQuickItem>
#include "geass_switcher.hpp"



int main(int argc, char** argv) {
    QApplication app {argc, argv};
    QQuickView view;
    QObject::connect(view.engine(), &QQmlEngine::quit,
                     &app, &QCoreApplication::quit);
    new QQmlFileSelector(view.engine(), &view);
    view.setSource(QUrl {"qrc:/qml/AbilityScoresEditor.qml"});
    if (view.status() == QQuickView::Error) {
        return -1;
    }
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();

    Handler h;
    QObject::connect(view.rootObject(), SIGNAL(clicked(QVariant)),
                     &h, SLOT(handle(const QVariant&)));


    return app.exec();
}
