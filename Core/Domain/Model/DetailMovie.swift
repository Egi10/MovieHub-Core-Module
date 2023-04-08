//
//  DetailMovie.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Foundation

public struct DetailMovie: Hashable, Codable, Identifiable {
    public let id: Int
    public let image: String
    public let title: String
    public let voteAverange: Double
    public let overview: String
    public let popularity: Double
    public let release: String
}
