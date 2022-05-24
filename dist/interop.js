const elmTauriConnection = function(elm, tauri) {
    tauri.app.getName().then((value) => {
        elm.ports.getName.send(value)
    })
    tauri.app.getVersion().then((value) => {
        elm.ports.getVersion.send(value)
    })
    tauri.app.getTauriVersion().then((value) => {
        elm.ports.getTauriVersion.send(value)
    })
} 