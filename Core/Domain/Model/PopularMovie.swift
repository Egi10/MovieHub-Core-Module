//
//  PopularMovie.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation

public struct PopularMovie: Hashable, Codable, Identifiable {
    public let id: Int
    public let image: String
    public let title: String
    public let voteAverange: Double
    public let genre: [String]
}
