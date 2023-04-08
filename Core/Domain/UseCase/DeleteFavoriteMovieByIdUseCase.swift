//
//  DeleteFavoriteMovieByIdUseCase.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Combine

public protocol DeleteFavoriteMovieByIdUseCase {
    func execute(id: Int) -> AnyPublisher<Bool, Error>
}

class DefaultDeleteFavoriteMovieByIdUseCase: DeleteFavoriteMovieByIdUseCase {
    private var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute(id: Int) -> AnyPublisher<Bool, Error> {
        return self.repository.removeGameFavorite(id: id)
    }
}
