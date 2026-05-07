import QtQuick
import QtQuick.Controls
import qs.Common
import qs.Services
import qs.Widgets
import qs.Modules.Plugins

PluginSettings {
    id: root
    pluginId: "ambientSound"

    StyledText {
        width: parent.width
        text: "Ambient Sound Settings"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    StyledRect {
        width: parent.width
        height: audioColumn.implicitHeight + Theme.spacingL * 2
        radius: Theme.cornerRadius
        color: Theme.surfaceContainerHigh

        Column {
            id: audioColumn
            anchors.fill: parent
            anchors.margins: Theme.spacingL
            spacing: Theme.spacingM

            StyledText {
                text: "Audio"
                font.pixelSize: Theme.fontSizeMedium
                font.weight: Font.Medium
                color: Theme.surfaceText
            }

            SelectionSetting {
                settingKey: "defaultVolume"
                label: "Default Volume"
                description: "Initial volume when starting."
                options: [
                    { label: "25%", value: "25" },
                    { label: "50%", value: "50" },
                    { label: "75%", value: "75" },
                    { label: "100%", value: "100" }
                ]
                defaultValue: "75"
            }
        }
    }

    StyledRect {
        width: parent.width
        height: autoColumn.implicitHeight + Theme.spacingL * 2
        radius: Theme.cornerRadius
        color: Theme.surfaceContainerHigh

        Column {
            id: autoColumn
            anchors.fill: parent
            anchors.margins: Theme.spacingL
            spacing: Theme.spacingM

            StyledText {
                text: "Auto-Start"
                font.pixelSize: Theme.fontSizeMedium
                font.weight: Font.Medium
                color: Theme.surfaceText
            }

            ToggleSetting {
                settingKey: "autoStart"
                label: "Auto-Play on Login"
                description: "Start playing selected sounds when DMS starts."
                defaultValue: false
            }

            MultiSelectionSetting {
                settingKey: "autoStartSounds"
                label: "Sounds to Auto-Play"
                description: "Select sounds to play on startup."
                options: [
                    { label: "Rain", value: "rain" },
                    { label: "Fireplace", value: "fireplace" },
                    { label: "Waves", value: "waves" },
                    { label: "Wind", value: "wind" },
                    { label: "Storm", value: "storm" },
                    { label: "Birds", value: "birds" },
                    { label: "City", value: "city" },
                    { label: "Coffee Shop", value: "coffee-shop" },
                    { label: "Stream", value: "stream" },
                    { label: "Summer Night", value: "summer-night" }
                ]
                defaultValue: []
                visible: pluginData.autoStart ?? false
            }
        }
    }
}