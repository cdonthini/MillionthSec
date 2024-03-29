/* Copyright (c) 2012 Research In Motion Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include "millionSec.h"
#include <bb/cascades/NavigationPane>
#include <bb/cascades/DropDown>
#include <bb/cascades/QmlDocument>
#include <bb/cascades/Page>

using namespace bb::cascades;

millionSec::millionSec()
{
    // Obtain a QMLDocument and load it into the qml variable, using build patterns.
    QmlDocument *qml = QmlDocument::create("asset:///second.qml");
    qml->setParent(this);
    NavigationPane *nav = qml->createRootObject<NavigationPane>();

    // If the QML document is valid, we process it.
    if (!qml->hasErrors()) {

        // Create the application Page from QMLDocument.
        //Page *appPage = qml->createRootObject<Page>();

        if (nav) {
            // Set the main scene for the application to the Page.
            Application::instance()->setScene(nav);
            DropDown *day = DropDown::create();
            int date = day->selectedIndex();

            DropDown *month = DropDown::create();
            month->add(Option::create().text("Jan"));
            month->add(Option::create().text("Feb"));
        }
    }
}
//
//void millionSec::calculate( ){
//
//}
