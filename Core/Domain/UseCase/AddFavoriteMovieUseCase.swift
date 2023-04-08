//
//  AddFavoriteMovieUseCase.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Combine

public protocol AddFavoriteMovieUseCase {
    func execute(favoriteMovie: FavoriteMovie) -> AnyPublisher<Bool, Error>
}

class DefaulAddFavoriteMovieUseCase: AddFavoriteMovieUseCase {
    
    private var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute(favoriteMovie: FavoriteMovie) -> AnyPublisher<Bool, Error> {
        return self.repository.addMovieFavorite(movie: favoriteMovie)
    }
}
