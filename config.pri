# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        } else {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

config_pri_assets {
    OTHER_FILES += \
        $$quote($$BASEDIR/assets/1440x1440/Contacts.qml) \
        $$quote($$BASEDIR/assets/1440x1440/Drive.qml) \
        $$quote($$BASEDIR/assets/1440x1440/SmileyPicker.qml) \
        $$quote($$BASEDIR/assets/720x720/Contacts.qml) \
        $$quote($$BASEDIR/assets/AdvancedConection.qml) \
        $$quote($$BASEDIR/assets/ApplicationLog.qml) \
        $$quote($$BASEDIR/assets/BugReport.qml) \
        $$quote($$BASEDIR/assets/ComposeComment.qml) \
        $$quote($$BASEDIR/assets/ComposeIssue.qml) \
        $$quote($$BASEDIR/assets/Contacts.qml) \
        $$quote($$BASEDIR/assets/Conversation.qml) \
        $$quote($$BASEDIR/assets/ConversationBBM.qml) \
        $$quote($$BASEDIR/assets/ConversationCard.qml) \
        $$quote($$BASEDIR/assets/ConversationCardBBM.qml) \
        $$quote($$BASEDIR/assets/CreateRoom.qml) \
        $$quote($$BASEDIR/assets/Drive.qml) \
        $$quote($$BASEDIR/assets/DropboxConnect.qml) \
        $$quote($$BASEDIR/assets/EditContact.qml) \
        $$quote($$BASEDIR/assets/Filter.qml) \
        $$quote($$BASEDIR/assets/FurtherInformation.qml) \
        $$quote($$BASEDIR/assets/GoogleConnect.qml) \
        $$quote($$BASEDIR/assets/ImagePreview.qml) \
        $$quote($$BASEDIR/assets/IssueViewer.qml) \
        $$quote($$BASEDIR/assets/ListIssues.qml) \
        $$quote($$BASEDIR/assets/LoginForm.qml) \
        $$quote($$BASEDIR/assets/Manual.qml) \
        $$quote($$BASEDIR/assets/Payment.qml) \
        $$quote($$BASEDIR/assets/Policy.qml) \
        $$quote($$BASEDIR/assets/RefreshHeader.qml) \
        $$quote($$BASEDIR/assets/Rooms.qml) \
        $$quote($$BASEDIR/assets/Settings.qml) \
        $$quote($$BASEDIR/assets/SmileyPicker.qml) \
        $$quote($$BASEDIR/assets/Status.qml) \
        $$quote($$BASEDIR/assets/ThemeEditor.qml) \
        $$quote($$BASEDIR/assets/WallpaperSettings.qml) \
        $$quote($$BASEDIR/assets/WebEditor.qml) \
        $$quote($$BASEDIR/assets/Welcome.qml) \
        $$quote($$BASEDIR/assets/bubble.css) \
        $$quote($$BASEDIR/assets/bubble_black.css) \
        $$quote($$BASEDIR/assets/bug_template.html) \
        $$quote($$BASEDIR/assets/bug_template_black.html) \
        $$quote($$BASEDIR/assets/bug_template_end.html) \
        $$quote($$BASEDIR/assets/data/action_list.xml) \
        $$quote($$BASEDIR/assets/data/action_list_fr.xml) \
        $$quote($$BASEDIR/assets/data/emojies.xml) \
        $$quote($$BASEDIR/assets/data/emojies_list.xml) \
        $$quote($$BASEDIR/assets/images/BlablaRequest.png) \
        $$quote($$BASEDIR/assets/images/BlablaRequest_white.png) \
        $$quote($$BASEDIR/assets/images/BugReport.png) \
        $$quote($$BASEDIR/assets/images/BugReport_white.png) \
        $$quote($$BASEDIR/assets/images/BugReport_white_large.png) \
        $$quote($$BASEDIR/assets/images/EnhancementRequest.png) \
        $$quote($$BASEDIR/assets/images/EnhancementRequest_white.png) \
        $$quote($$BASEDIR/assets/images/HelpRequest.png) \
        $$quote($$BASEDIR/assets/images/HelpRequest_white.png) \
        $$quote($$BASEDIR/assets/images/Tutorial/accept.jpg) \
        $$quote($$BASEDIR/assets/images/Tutorial/chat.jpg) \
        $$quote($$BASEDIR/assets/images/Tutorial/closeIcon.png) \
        $$quote($$BASEDIR/assets/images/Tutorial/listContacts.jpg) \
        $$quote($$BASEDIR/assets/images/Tutorial/listContactsFiltered.jpg) \
        $$quote($$BASEDIR/assets/images/Tutorial/logIn.jpg) \
        $$quote($$BASEDIR/assets/images/Tutorial/settings.jpg) \
        $$quote($$BASEDIR/assets/images/Tutorial/splash_720x720.jpg) \
        $$quote($$BASEDIR/assets/images/absent.png) \
        $$quote($$BASEDIR/assets/images/available.png) \
        $$quote($$BASEDIR/assets/images/available.svg) \
        $$quote($$BASEDIR/assets/images/avatar.png) \
        $$quote($$BASEDIR/assets/images/avatar.png.square.png) \
        $$quote($$BASEDIR/assets/images/avatar.square.svg) \
        $$quote($$BASEDIR/assets/images/avatar.svg) \
        $$quote($$BASEDIR/assets/images/avatar_black.png) \
        $$quote($$BASEDIR/assets/images/avatar_white.png) \
        $$quote($$BASEDIR/assets/images/blackFace.png) \
        $$quote($$BASEDIR/assets/images/bug.png) \
        $$quote($$BASEDIR/assets/images/busy.png) \
        $$quote($$BASEDIR/assets/images/chat_room.png) \
        $$quote($$BASEDIR/assets/images/chat_room.svg) \
        $$quote($$BASEDIR/assets/images/color/Attach.png) \
        $$quote($$BASEDIR/assets/images/color/Clean.png) \
        $$quote($$BASEDIR/assets/images/color/Emoticon.png) \
        $$quote($$BASEDIR/assets/images/color/First.png) \
        $$quote($$BASEDIR/assets/images/color/Last.png) \
        $$quote($$BASEDIR/assets/images/color/Next.png) \
        $$quote($$BASEDIR/assets/images/color/Prev.png) \
        $$quote($$BASEDIR/assets/images/color/Refresh.png) \
        $$quote($$BASEDIR/assets/images/color/Reply.png) \
        $$quote($$BASEDIR/assets/images/color/Survey.png) \
        $$quote($$BASEDIR/assets/images/color/Voice.png) \
        $$quote($$BASEDIR/assets/images/color/Wallpaper.png) \
        $$quote($$BASEDIR/assets/images/color/to_Bottom.png) \
        $$quote($$BASEDIR/assets/images/color/to_Top.png) \
        $$quote($$BASEDIR/assets/images/contact.png) \
        $$quote($$BASEDIR/assets/images/contact.svg) \
        $$quote($$BASEDIR/assets/images/document.png) \
        $$quote($$BASEDIR/assets/images/icon_about.png) \
        $$quote($$BASEDIR/assets/images/icon_add_contact.png) \
        $$quote($$BASEDIR/assets/images/icon_add_contact.svg) \
        $$quote($$BASEDIR/assets/images/icon_attach.png) \
        $$quote($$BASEDIR/assets/images/icon_bottom.png) \
        $$quote($$BASEDIR/assets/images/icon_chat.png) \
        $$quote($$BASEDIR/assets/images/icon_check.png) \
        $$quote($$BASEDIR/assets/images/icon_clip.png) \
        $$quote($$BASEDIR/assets/images/icon_clip.svg) \
        $$quote($$BASEDIR/assets/images/icon_credit.png) \
        $$quote($$BASEDIR/assets/images/icon_download.png) \
        $$quote($$BASEDIR/assets/images/icon_drive.png) \
        $$quote($$BASEDIR/assets/images/icon_favorites.png) \
        $$quote($$BASEDIR/assets/images/icon_feed.png) \
        $$quote($$BASEDIR/assets/images/icon_feed_black.png) \
        $$quote($$BASEDIR/assets/images/icon_filter.png) \
        $$quote($$BASEDIR/assets/images/icon_folder.png) \
        $$quote($$BASEDIR/assets/images/icon_home.png) \
        $$quote($$BASEDIR/assets/images/icon_left.png) \
        $$quote($$BASEDIR/assets/images/icon_left_black.png) \
        $$quote($$BASEDIR/assets/images/icon_left_blue.png) \
        $$quote($$BASEDIR/assets/images/icon_left_blue_black.png) \
        $$quote($$BASEDIR/assets/images/icon_notification.png) \
        $$quote($$BASEDIR/assets/images/icon_pen.png) \
        $$quote($$BASEDIR/assets/images/icon_quoted.png) \
        $$quote($$BASEDIR/assets/images/icon_quoted_white.png) \
        $$quote($$BASEDIR/assets/images/icon_redface_rounded.png) \
        $$quote($$BASEDIR/assets/images/icon_redface_rounded.svg) \
        $$quote($$BASEDIR/assets/images/icon_redface_rounded_black.png) \
        $$quote($$BASEDIR/assets/images/icon_redface_rounded_black.svg) \
        $$quote($$BASEDIR/assets/images/icon_refresh.png) \
        $$quote($$BASEDIR/assets/images/icon_rename.png) \
        $$quote($$BASEDIR/assets/images/icon_right.png) \
        $$quote($$BASEDIR/assets/images/icon_right_black.png) \
        $$quote($$BASEDIR/assets/images/icon_search.png) \
        $$quote($$BASEDIR/assets/images/icon_search.svg) \
        $$quote($$BASEDIR/assets/images/icon_settings.png) \
        $$quote($$BASEDIR/assets/images/icon_settings_black.png) \
        $$quote($$BASEDIR/assets/images/icon_share.png) \
        $$quote($$BASEDIR/assets/images/icon_smile.png) \
        $$quote($$BASEDIR/assets/images/icon_smile.svg) \
        $$quote($$BASEDIR/assets/images/icon_smile_white.png) \
        $$quote($$BASEDIR/assets/images/icon_smile_white.svg) \
        $$quote($$BASEDIR/assets/images/icon_synchronize.png) \
        $$quote($$BASEDIR/assets/images/icon_top.png) \
        $$quote($$BASEDIR/assets/images/icon_top_black.png) \
        $$quote($$BASEDIR/assets/images/icon_upload.png) \
        $$quote($$BASEDIR/assets/images/icon_walkie.png) \
        $$quote($$BASEDIR/assets/images/icon_wallpaper.png) \
        $$quote($$BASEDIR/assets/images/icon_wallpaper.svg) \
        $$quote($$BASEDIR/assets/images/icon_write_context.png) \
        $$quote($$BASEDIR/assets/images/icon_write_rounded.png) \
        $$quote($$BASEDIR/assets/images/icon_write_rounded_black.png) \
        $$quote($$BASEDIR/assets/images/pinch_out.png) \
        $$quote($$BASEDIR/assets/images/pinch_out_black.png) \
        $$quote($$BASEDIR/assets/images/pull-to-refresh.png) \
        $$quote($$BASEDIR/assets/images/send.png) \
        $$quote($$BASEDIR/assets/images/send.svg) \
        $$quote($$BASEDIR/assets/images/sound.png) \
        $$quote($$BASEDIR/assets/images/sound_white.png) \
        $$quote($$BASEDIR/assets/images/walkie.png) \
        $$quote($$BASEDIR/assets/images/walkie_white.png) \
        $$quote($$BASEDIR/assets/images/wallpaper/wallpaper.jpg) \
        $$quote($$BASEDIR/assets/images/wallpaper/wallpaper_small.jpg) \
        $$quote($$BASEDIR/assets/images/whiteFace.png) \
        $$quote($$BASEDIR/assets/images/whiteFace2.png) \
        $$quote($$BASEDIR/assets/images/write.png) \
        $$quote($$BASEDIR/assets/images/write.svg) \
        $$quote($$BASEDIR/assets/images/write_white.png) \
        $$quote($$BASEDIR/assets/main.qml) \
        $$quote($$BASEDIR/assets/template.html) \
        $$quote($$BASEDIR/assets/template_black.html) \
        $$quote($$BASEDIR/assets/template_end.html)
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/ApplicationLogController.cpp) \
        $$quote($$BASEDIR/src/BugReportController.cpp) \
        $$quote($$BASEDIR/src/ConversationController.cpp) \
        $$quote($$BASEDIR/src/ConversationManager.cpp) \
        $$quote($$BASEDIR/src/CustomizationController.cpp) \
        $$quote($$BASEDIR/src/DriveController.cpp) \
        $$quote($$BASEDIR/src/DropBoxConnectController.cpp) \
        $$quote($$BASEDIR/src/GoogleConnectController.cpp) \
        $$quote($$BASEDIR/src/GoogleConnectDrive.cpp) \
        $$quote($$BASEDIR/src/Image/CookieJar.cpp) \
        $$quote($$BASEDIR/src/Image/HFRNetworkAccessManager.cpp) \
        $$quote($$BASEDIR/src/Image/NetImageTracker.cpp) \
        $$quote($$BASEDIR/src/Image/WebResourceManager.cpp) \
        $$quote($$BASEDIR/src/ListContactsController.cpp) \
        $$quote($$BASEDIR/src/LoginController.cpp) \
        $$quote($$BASEDIR/src/RoomController.cpp) \
        $$quote($$BASEDIR/src/SettingsController.cpp) \
        $$quote($$BASEDIR/src/SmileyPickerController.cpp) \
        $$quote($$BASEDIR/src/SuggestContactController.cpp) \
        $$quote($$BASEDIR/src/ThemeEditorController.cpp) \
        $$quote($$BASEDIR/src/XMPPService.cpp) \
        $$quote($$BASEDIR/src/applicationui.cpp) \
        $$quote($$BASEDIR/src/base/QXmppConstants.cpp) \
        $$quote($$BASEDIR/src/base/QXmppElement.cpp) \
        $$quote($$BASEDIR/src/base/QXmppIq.cpp) \
        $$quote($$BASEDIR/src/base/QXmppLogger.cpp) \
        $$quote($$BASEDIR/src/base/QXmppStanza.cpp) \
        $$quote($$BASEDIR/src/base/QXmppUtils.cpp) \
        $$quote($$BASEDIR/src/base/QXmppVCardIq.cpp) \
        $$quote($$BASEDIR/src/main.cpp)

    HEADERS += \
        $$quote($$BASEDIR/src/ApplicationLogController.hpp) \
        $$quote($$BASEDIR/src/BugDataObject.h) \
        $$quote($$BASEDIR/src/BugReportController.hpp) \
        $$quote($$BASEDIR/src/BugReportSettings.hpp) \
        $$quote($$BASEDIR/src/ConversationController.hpp) \
        $$quote($$BASEDIR/src/ConversationManager.hpp) \
        $$quote($$BASEDIR/src/CustomizationController.hpp) \
        $$quote($$BASEDIR/src/DataObjects.h) \
        $$quote($$BASEDIR/src/DriveController.hpp) \
        $$quote($$BASEDIR/src/DropBoxConnectController.hpp) \
        $$quote($$BASEDIR/src/FileTransfert.hpp) \
        $$quote($$BASEDIR/src/GoogleConnectController.hpp) \
        $$quote($$BASEDIR/src/Image/CookieJar.hpp) \
        $$quote($$BASEDIR/src/Image/HFRNetworkAccessManager.hpp) \
        $$quote($$BASEDIR/src/Image/NetImageTracker.h) \
        $$quote($$BASEDIR/src/Image/WebResourceManager.h) \
        $$quote($$BASEDIR/src/ListContactsController.hpp) \
        $$quote($$BASEDIR/src/LoginController.hpp) \
        $$quote($$BASEDIR/src/OnlineHistory.hpp) \
        $$quote($$BASEDIR/src/PrivateAPIKeys.h) \
        $$quote($$BASEDIR/src/RoomController.hpp) \
        $$quote($$BASEDIR/src/SettingsController.hpp) \
        $$quote($$BASEDIR/src/SmileyPickerController.hpp) \
        $$quote($$BASEDIR/src/SuggestContactController.hpp) \
        $$quote($$BASEDIR/src/ThemeEditorController.hpp) \
        $$quote($$BASEDIR/src/XMPPService.hpp) \
        $$quote($$BASEDIR/src/applicationui.hpp) \
        $$quote($$BASEDIR/src/base/QXmppConstants.h) \
        $$quote($$BASEDIR/src/base/QXmppElement.h) \
        $$quote($$BASEDIR/src/base/QXmppGlobal.h) \
        $$quote($$BASEDIR/src/base/QXmppIq.h) \
        $$quote($$BASEDIR/src/base/QXmppLogger.h) \
        $$quote($$BASEDIR/src/base/QXmppStanza.h) \
        $$quote($$BASEDIR/src/base/QXmppUtils.h) \
        $$quote($$BASEDIR/src/base/QXmppVCardIq.h)
}

INCLUDEPATH += $$quote($$BASEDIR/src/base) \
    $$quote($$BASEDIR/src/Image) \
    $$quote($$BASEDIR/src)

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx) \
        $$quote($$BASEDIR/../src/Image/*.c) \
        $$quote($$BASEDIR/../src/Image/*.c++) \
        $$quote($$BASEDIR/../src/Image/*.cc) \
        $$quote($$BASEDIR/../src/Image/*.cpp) \
        $$quote($$BASEDIR/../src/Image/*.cxx) \
        $$quote($$BASEDIR/../src/base/*.c) \
        $$quote($$BASEDIR/../src/base/*.c++) \
        $$quote($$BASEDIR/../src/base/*.cc) \
        $$quote($$BASEDIR/../src/base/*.cpp) \
        $$quote($$BASEDIR/../src/base/*.cxx) \
        $$quote($$BASEDIR/../assets/*.qml) \
        $$quote($$BASEDIR/../assets/*.js) \
        $$quote($$BASEDIR/../assets/*.qs) \
        $$quote($$BASEDIR/../assets/1440x1440/*.qml) \
        $$quote($$BASEDIR/../assets/1440x1440/*.js) \
        $$quote($$BASEDIR/../assets/1440x1440/*.qs) \
        $$quote($$BASEDIR/../assets/720x720/*.qml) \
        $$quote($$BASEDIR/../assets/720x720/*.js) \
        $$quote($$BASEDIR/../assets/720x720/*.qs) \
        $$quote($$BASEDIR/../assets/data/*.qml) \
        $$quote($$BASEDIR/../assets/data/*.js) \
        $$quote($$BASEDIR/../assets/data/*.qs) \
        $$quote($$BASEDIR/../assets/images/*.qml) \
        $$quote($$BASEDIR/../assets/images/*.js) \
        $$quote($$BASEDIR/../assets/images/*.qs) \
        $$quote($$BASEDIR/../assets/images/Tutorial/*.qml) \
        $$quote($$BASEDIR/../assets/images/Tutorial/*.js) \
        $$quote($$BASEDIR/../assets/images/Tutorial/*.qs) \
        $$quote($$BASEDIR/../assets/images/color/*.qml) \
        $$quote($$BASEDIR/../assets/images/color/*.js) \
        $$quote($$BASEDIR/../assets/images/color/*.qs) \
        $$quote($$BASEDIR/../assets/images/wallpaper/*.qml) \
        $$quote($$BASEDIR/../assets/images/wallpaper/*.js) \
        $$quote($$BASEDIR/../assets/images/wallpaper/*.qs)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}_fr_FR.ts) \
    $$quote($${TARGET}.ts)
