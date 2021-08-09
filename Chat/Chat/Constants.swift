//
//  Constants.swift
//  Chat
//
//  Created by Ashima T on 08/08/21.
//

import Foundation
import Firebase

struct Constants
{
    struct refs
    {
        static let databaseRoot = Database.database().reference()
        static let databaseChats = databaseRoot.child("chats")
    }
}
