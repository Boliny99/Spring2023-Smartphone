//
//  InstaImageCellData.swift
//  Final
//
//  Created by Bolin Yang on 4/22/23.
//

import Foundation
import


class InstaImageCelldata: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var location: String = ""
    @objc dynamic var Image: Data?
    
    override static func primaryKey() -> String? {
        return "title"
    }
}
