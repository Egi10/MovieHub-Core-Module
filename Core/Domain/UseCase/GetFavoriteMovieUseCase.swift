//
//  GetFavoriteMovieUseCase.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Combine

public protocol GetFavoriteMovieUseCase {
    func execute() -> AnyPublisher<[FavoriteMovie], Error>
}

class DefaultGetFavoriteMovieUseCase: GetFavoriteMovieUseCase {
    
    private var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() -> AnyPublisher<[FavoriteMovie], Error> {
        return self.repository.getFavoriteMovie()
    }
}
