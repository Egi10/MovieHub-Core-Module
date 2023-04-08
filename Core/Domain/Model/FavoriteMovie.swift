//
//  FavoriteMovie.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation

public struct FavoriteMovie: Hashable, Codable, Identifiable {
    public let id: Int
    public let image: String
    public let title: String
    public let voteAverange: Double
    public let overview: String
    public let popularity: Double
    public let release: String
    
    public init(id: Int, image: String, title: String, voteAverange: Double, overview: String, popularity: Double, release: String) {
            self.id = id
            self.image = image
            self.title = title
            self.voteAverange = voteAverange
            self.overview = overview
            self.popularity = popularity
            self.release = release
        }
}
