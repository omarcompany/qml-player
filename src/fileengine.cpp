#include "fileengine.h"

#include <QFile>
#include <QDebug>

FileEngine::FileEngine(QObject *parent) : QObject(parent)
{

}

void FileEngine::removeFile(const QString &path)
{
    if(!QFile::remove(path))
        qDebug() << "File not found";
}

void FileEngine::renameFile(const QString &path, const QString &newName)
{
    if(!QFile::rename(path, newName))
        qDebug() << "File not found";
}
