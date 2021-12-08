/*
 * Fedora Media Writer
 * Copyright (C) 2021 Evžen Gasta <evzen.ml@seznam.cz>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 6.2
import QtQuick.Controls 6.2
import QtQuick.Window 6.2
import QtQuick.Layouts 6.2
import QtQml 6.2


Page {
    ColumnLayout {
        anchors.fill: parent
        spacing: units.gridUnit
        
        Image {
            source: "qrc:/downloadPageImage"
            Layout.fillHeight: true
            Layout.fillWidth: true
            fillMode: Image.PreserveAspectFit
        }
        
        Heading {
            Layout.alignment: Qt.AlignHCenter
            text: qsTr("Downloading Fedora Workstation 35")
            level: 5
        }
        
        ColumnLayout {
            Label {
                Layout.alignment: Qt.AlignHCenter
                text: "0.3 of 1.9 GB downloaded"
            }
        
            ProgressBar {
                id: progressBar
                Layout.topMargin: units.gridUnit / 2
                Layout.fillWidth: true
                value: 0.0
            }
        }
        
        Label {
            Layout.alignment: Qt.AlignHCenter 
            Layout.topMargin: units.gridUnit / 2
            text: qsTr("Image will be writen to <disk> when download completes")
        }
    }
}

