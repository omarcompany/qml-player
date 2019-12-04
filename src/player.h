#ifndef PLAYER_H
#define PLAYER_H

#pragma once

#include <QObject>
#include <QMediaPlayer>

class Player : public QObject
{
	Q_OBJECT

public:
	explicit Player(QObject *parent = nullptr);

	Q_INVOKABLE void start(const QString &path);
	Q_INVOKABLE void stop();
	Q_INVOKABLE void pause();
	Q_INVOKABLE void resume();

private:
	QMediaPlayer m_player;
};

#endif // PLAYER_H
