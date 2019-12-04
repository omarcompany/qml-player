#ifndef DATA_H
#define DATA_H

#include <QString>

struct Data {
	Data(const QString &name, const QString &path) {
		m_name = name;
		m_path = path;
	}

	QString m_name;
	QString m_path;
};

#endif // DATA_H
