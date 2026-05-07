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
            spacing: Theme.spacingS

            StyledText {
                text: "Auto-Start on Login"
                font.pixelSize: Theme.fontSizeMedium
                font.weight: Font.Medium
                color: Theme.surfaceText
            }

            ToggleSetting {
                settingKey: "autoStartRain"
                label: "Rain"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartFireplace"
                label: "Fireplace"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartWaves"
                label: "Waves"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartWind"
                label: "Wind"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartStorm"
                label: "Storm"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartBirds"
                label: "Birds"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartCity"
                label: "City"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartCoffeeShop"
                label: "Coffee Shop"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartStream"
                label: "Stream"
                defaultValue: false
            }

            ToggleSetting {
                settingKey: "autoStartSummerNight"
                label: "Summer Night"
                defaultValue: false
            }
        }
    }
}