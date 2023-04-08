//
//  GetPopularMovieUseCase.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Combine

public protocol GetPopularMovieUseCase {
    func execute() -> AnyPublisher<[PopularMovie], Error>
}

class DefaultGetPopularMovieUseCase: GetPopularMovieUseCase {
    
    private var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() -> AnyPublisher<[PopularMovie], Error> {
        return self.repository.getPopular()
    }
}
