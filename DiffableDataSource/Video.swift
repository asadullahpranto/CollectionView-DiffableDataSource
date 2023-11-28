//
//  Video.swift
//  DiffableDataSource
//
//  Created by Safe Tect on 14/11/23.
//

import UIKit

class Video: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Video, rhs: Video) -> Bool {
        lhs.id == rhs.id
    }
    
    var id = UUID()
    var title: String
    var thumbnail: UIImage?
    var lessonCount: Int
    var link: URL?
    
    init(title: String, thumbnail: UIImage? = nil, lessonCount: Int, link: URL?) {
        self.title = title
        self.thumbnail = thumbnail
        self.lessonCount = lessonCount
        self.link = link
    }
}
