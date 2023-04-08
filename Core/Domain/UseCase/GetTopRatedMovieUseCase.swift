//
//  GetTopRatedMovieUseCase.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Combine

public protocol GetTopRatedMovieUseCase {
    func execute() -> AnyPublisher<[TopRatedMovie], Error>
}

class DefaulGetTopRatedMovieUseCase: GetTopRatedMovieUseCase {
    
    private var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() -> AnyPublisher<[TopRatedMovie], Error> {
        return self.repository.getTopRated()
    }
}
