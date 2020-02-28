#ifndef PLAYERLIST_H
#define PLAYERLIST_H

#include "data.h"

#include <QObject>
#include <QAbstractListModel>
#include <QDir>
#include <QFileSystemWatcher>

class PlayerList : public QAbstractListModel
{
	Q_OBJECT
public:
	enum Roles {
		Name,
		Path
	};

	PlayerList(QObject *parent = nullptr);

	int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index, int Role = Qt::DisplayRole) const override;
    QHash<int, QByteArray> roleNames() const override;

private:
	QList<Data> m_data;
    QFileSystemWatcher m_watcher;

private slots:
    void updateData();
};

#endif // PLAYERLIST_H
