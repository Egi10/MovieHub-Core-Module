//
//  GetDetailMovieUseCase.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Combine

public protocol GetDetailMovieUseCase {
    func execute(idMovie: Int) -> AnyPublisher<DetailMovie, Error>
}

class DefaultGetDetailMovieUseCase: GetDetailMovieUseCase {
    
    private var repository: MovieRepositoryProtocol
    
    init(repository: MovieRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute(idMovie: Int) -> AnyPublisher<DetailMovie, Error> {
        return self.repository.getDetail(idMovie: idMovie)
    }
}
