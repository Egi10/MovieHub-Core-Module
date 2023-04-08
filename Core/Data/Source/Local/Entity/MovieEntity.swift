//
//  MovieEntity.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import RealmSwift

class MovieEntity: Object {
    @Persisted(primaryKey: true) var id = 0
    @Persisted var image = ""
    @Persisted var title = ""
    @Persisted var voteAverange = 0.0
    @Persisted var overview = ""
    @Persisted var popularity = 0.0
    @Persisted var release = ""
}
