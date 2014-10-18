/*
 * ListContactsController.cpp
 *
 *  Created on: 12 oct. 2014
 *      Author: pierre
 */


#include "ListContactsController.hpp"

#include <bb/cascades/AbstractPane>
#include <bb/cascades/GroupDataModel>
#include <bb/platform/Notification>
#include <QDebug>
#include <QRegExp>

#include "DataObjects.h"
#include "XMPPService.hpp"
#include "ConversationManager.hpp"

ListContactsController::ListContactsController(QObject *parent) : QObject(parent),
    m_ListView(NULL), m_Notification(NULL) {

    bool check = connect(XMPP::get(), SIGNAL(contactReceived()), this, SLOT(updateView()));
    Q_ASSERT(check);
    Q_UNUSED(check);

    check = connect(ConversationManager::get(), SIGNAL(messageReceived(const QString &, const QString &)), this, SLOT(messageReceived(const QString &, const QString &)));
    Q_ASSERT(check);

    check = connect(ConversationManager::get(), SIGNAL(messageSent(const QString &, const QString &)), this, SLOT(messageReceived(const QString &, const QString &)));
    Q_ASSERT(check);
}


void ListContactsController::updateContacts() {
    //qDebug() << presence.
}

void ListContactsController::messageReceived(const QString &from, const QString &message) {
    // updateView();

    // lazy update to avoid refreshing completely the view.
    if(m_ListView == NULL) {
        qWarning() << "did not received the listview. quit.";
        return;
    }

    using namespace bb::cascades;

    GroupDataModel* dataModel = dynamic_cast<GroupDataModel*>(m_ListView->dataModel());
    if(!dataModel)
        return;


    for(int i = 0 ; i < m_Contacts.size() ; ++i) {
        if(m_Contacts.at(i)->getID().toLower() == from.toLower()) {
            m_Contacts.at(i)->setPreview(message);

            QDateTime now = QDateTime::currentDateTime();
            m_Contacts.at(i)->setTimestamp(now.toString("hh:mm"));

            bool read = ConversationManager::get()->isAdressee(from);
            m_Contacts.at(i)->setRead(read);

            if(read == 0) {
                if(m_Notification == NULL)
                    m_Notification = new bb::platform::Notification();

                m_Notification->notify();

            }

            break;
        }
    }

}

void ListContactsController::markRead() {
    ConversationManager::get()->markRead();

    if(m_Notification == NULL) {
        m_Notification = new bb::platform::Notification();
    }

    m_Notification->clearEffectsForAll();

    qDebug() << "Mark READ";


    // lazy update to avoid refreshing completely the view.
    if(m_ListView == NULL) {
        qWarning() << "did not received the listview. quit.";
        return;
    }

    using namespace bb::cascades;

    GroupDataModel* dataModel = dynamic_cast<GroupDataModel*>(m_ListView->dataModel());
    if(!dataModel)
        return;


    for(int i = 0 ; i < m_Contacts.size() ; ++i) {
        if(ConversationManager::get()->isAdressee(m_Contacts.at(i)->getID())) {
            m_Contacts.at(i)->setRead(1);
            break;
        }
    }


    ConversationManager::get()->closeConversation();

}

void ListContactsController::updateView() {



    // ----------------------------------------------------------------------------------------------
    // get the dataModel of the listview if not already available
    using namespace bb::cascades;

    qDebug() << "UPDATE VIEW";

    if(m_ListView == NULL) {
        qWarning() << "did not received the listview. quit.";
        return;
    }

    GroupDataModel* dataModel = dynamic_cast<GroupDataModel*>(m_ListView->dataModel());
    if (dataModel) {
        dataModel->clear();
    } else {
        qDebug() << "create new model";
        dataModel = new GroupDataModel(
                QStringList() << "name"
                              << "id"
                              << "timestamp"
                              << "avatar"
                              << "preview"
                              << "presence"
                              << "read"
                );
        m_ListView->setDataModel(dataModel);
    }
    //dataModel->setGrouping(ItemGrouping::ByFullValue);

    // ----------------------------------------------------------------------------------------------
    // Read login info

    m_User = ConversationManager::get()->getUser();
    m_Contacts.clear();

    // ----------------------------------------------------------------------------------------------
    // push data to the view

    QDateTime now = QDateTime::currentDateTime();

    const QList<Contact *> *contacts = XMPP::get()->getContacts();

    QList<QObject*> datas;
    for(int i = contacts->length()-1 ; i >= 0 ; --i) {
        // remove yourself from the list of contact, and store the info for display
        if(contacts->at(i)->getID().toLower() != m_User.toLower()) {

            TimeEvent e = ConversationManager::get()->getPreview(contacts->at(i)->getID());

            Contact *nc = new Contact;
            nc->setAvatar(contacts->at(i)->getAvatar());
            nc->setName(contacts->at(i)->getName());

            QDateTime time = QDateTime::fromString(e.m_When);
            if(time.date() == now.date())
                nc->setTimestamp(time.time().toString("hh:mm"));
            else
                nc->setTimestamp(time.date().toString());

            nc->setPreview(e.m_What);
            nc->setID(contacts->at(i)->getID());
            nc->setPresence(contacts->at(i)->getPresence());
            nc->setRead(e.m_Read);

            datas.push_back(nc);
            m_Contacts.push_back(nc);
        } else {
            setUserName(contacts->at(i)->getName());
            setAvatar(contacts->at(i)->getAvatar());
        }
    }

    dataModel->clear();
    dataModel->insertList(datas);
}
