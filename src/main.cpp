#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "playerlist.h"
#include "player.h"
#include "fileengine.h"

static QObject *player_api_factory(QQmlEngine *, QJSEngine *)
{
    return new FileEngine;
}

int main(int argc, char *argv[])
{
	QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

	QGuiApplication app(argc, argv);

	qmlRegisterType<PlayerList>("space.developers", 1, 0, "PlayerList");
	qmlRegisterType<Player>("space.developers", 1, 0, "Player");
    qmlRegisterSingletonType<FileEngine>("space.developers", 1, 0, "FileEngine", player_api_factory);

	QQmlApplicationEngine engine;
	const QUrl url(QStringLiteral("qrc:/main.qml"));
	QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
					 &app, [url](QObject *obj, const QUrl &objUrl) {
		if (!obj && url == objUrl)
			QCoreApplication::exit(-1);
	}, Qt::QueuedConnection);
	engine.load(url);

	return app.exec();
}
