#ifndef SQLVIEWER_H
#define SQLVIEWER_H

#include "sqlviewer_global.h"

#include <extensionsystem/iplugin.h>

namespace SQLViewer {
namespace Internal {

class SQLViewerPlugin : public ExtensionSystem::IPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QtCreatorPlugin" FILE "SQLViewer.json")
    
public:
    SQLViewerPlugin();
    ~SQLViewerPlugin();
    
    bool initialize(const QStringList &arguments, QString *errorString);
    void extensionsInitialized();
    ShutdownFlag aboutToShutdown();
    
private slots:
    void triggerAction();
};

} // namespace Internal
} // namespace SQLViewer

#endif // SQLVIEWER_H

