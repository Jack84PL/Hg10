/*
 * ListContactsController.hpp
 *
 *  Created on: 12 oct. 2014
 *      Author: pierre
 */

#ifndef LISTCONTACTSCONTROLLER_HPP_
#define LISTCONTACTSCONTROLLER_HPP_

#include <QtCore/QObject>
#include <bb/cascades/ListView>
#include <bb/platform/Notification>
#include <bb/cascades/ActivityIndicator>
#include <bb/system/SystemUiResult>

class Contact;


class ListContactsController : public QObject {
    Q_OBJECT;

    Q_PROPERTY( QString userName    READ getUserName    WRITE setUserName    NOTIFY userNameChanged)
    Q_PROPERTY( QString avatar      READ getAvatar      WRITE setAvatar      NOTIFY avatarChanged)
    Q_PROPERTY( QString presence    READ getPresence    WRITE setPresence    NOTIFY presenceChanged)
    Q_PROPERTY( int     available   READ isAvailable    WRITE setAvailable   NOTIFY availableChanged)


private:
    bb::cascades::ListView          *m_ListView;
    bb::cascades::ActivityIndicator *m_Activity;
    QString                          m_User;
    QString                          m_Avatar;
    QString                          m_Presence;
    int                              m_Available;
    QList<Contact *>                 m_Contacts;
    bool                             m_OnlyFavorite;
    bool                             m_PushStated;

    bb::platform::Notification      *m_Notification;



public:
    ListContactsController              (QObject *parent = 0);
    virtual ~ListContactsController     ()                      {};

    inline const QString &getUserName   () const               { return m_User; }
    inline void           setUserName   (const QString &c)     { m_User = c; emit userNameChanged(); }


    inline const QString &getAvatar     () const               { return m_Avatar; }
    inline void           setAvatar     (const QString &c)     { m_Avatar = c; emit avatarChanged(); }

    inline const QString &getPresence   () const               { return m_Presence; }
    inline void           setPresence   (const QString &c)     { m_Presence = c; emit presenceChanged(); }

    inline bool           isAvailable   () const               { return m_Available; }
    inline void           setAvailable  (bool c)               { m_Available = c; emit availableChanged(); }



public Q_SLOTS:
    inline void setListView             (QObject *listView)    {m_ListView = dynamic_cast<bb::cascades::ListView*>(listView); }
    inline void setActivityIndicator    (QObject *activity)    {m_Activity = dynamic_cast<bb::cascades::ActivityIndicator*>(activity); m_Activity->start();}
    void updateView                     ();
    void pushContact                    (const Contact*);


    void updatePresence                 (const QString &who, int status);
    void messageReceived                (const QString &from, const QString &message);
    void markRead                       ();
    void markAllRead                    ();

    QString formatTime                  (qint64 msecs);

    void filter                         (const QString &contacts);
    void setFilter                      (bool onlyFav);
    void updateConnectionStatus         (bool status);

    void clear                          ();
    void deleteHistory                  (const QString &with);

    void setPresence                    (const QString &text, int presence);


    void addContact                     ();
    void onPromptFinishedAddContact     (bb::system::SystemUiResult::Type);


Q_SIGNALS:
    void complete                       ();
    void cleared                        ();

    void userNameChanged                ();
    void avatarChanged                  ();

    void presenceChanged                ();
    void availableChanged               ();


};



#endif /* LISTCONTACTSCONTROLLER_HPP_ */
