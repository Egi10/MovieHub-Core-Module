//
//  CoreAppDependencies.swift
//  Core
//
//  Created by Julsapargi Nursam on 01/04/23.
//

import Foundation
import Swinject
import RealmSwift

public class CoreAppDependencies {
    public static let shared = CoreAppDependencies()
    
    public let deleteFavoriteMovieByIdUseCase: DeleteFavoriteMovieByIdUseCase
    public let addFavoriteMovieUseCase: AddFavoriteMovieUseCase
    public let getFavoriteMovieByIdUseCase: GetFavoriteMovieByIdUseCase
    public let getFavoriteMovieUseCase: GetFavoriteMovieUseCase
    public let getDetailMovieUseCase: GetDetailMovieUseCase
    public let getTopRatedMovieUseCase: GetTopRatedMovieUseCase
    public let getPopularMovieUseCase: GetPopularMovieUseCase
    
    private init() {
        let container = Container()
        
        // Realm
        container.register(Realm.self) { _ in
            return try! Realm()
        }
        
        // Data Source
        container.register(RemoteDataSourceProtocol.self) { _ in
            return RemoteDataSource()
        }
        
        container.register(LocalDataSourceProtocol.self) { r in
            return LocalDataSource(realm: r.resolve(Realm.self))
        }
        
        // Repository
        container.register(MovieRepositoryProtocol.self) { r in
            return MovieRepository(
                remoteDataSource: r.resolve(RemoteDataSourceProtocol.self)!,
                localDataSource: r.resolve(LocalDataSourceProtocol.self)!
            )
        }
        
        // Use Case
        container.register(GetPopularMovieUseCase.self) { r in
            return DefaultGetPopularMovieUseCase(repository: r.resolve(MovieRepositoryProtocol.self)!)
        }
        
        container.register(GetTopRatedMovieUseCase.self) { r in
            return DefaulGetTopRatedMovieUseCase(repository: r.resolve(MovieRepositoryProtocol.self)!)
        }
        
        container.register(GetDetailMovieUseCase.self) { r in
            return DefaultGetDetailMovieUseCase(repository: r.resolve(MovieRepositoryProtocol.self)!)
        }
        
        container.register(GetFavoriteMovieUseCase.self) { r in
            return DefaultGetFavoriteMovieUseCase(repository: r.resolve(MovieRepositoryProtocol.self)!)
        }
        
        container.register(GetFavoriteMovieByIdUseCase.self) { r in
            return DefaultGetFavoriteMovieByIdUseCase(repository: r.resolve(MovieRepositoryProtocol.self)!)
        }
        
        container.register(AddFavoriteMovieUseCase.self) { r in
            return DefaulAddFavoriteMovieUseCase(repository: r.resolve(MovieRepositoryProtocol.self)!)
        }
        
        container.register(DeleteFavoriteMovieByIdUseCase.self) { r in
            return DefaultDeleteFavoriteMovieByIdUseCase(repository: r.resolve(MovieRepositoryProtocol.self)!)
        }
        
        self.deleteFavoriteMovieByIdUseCase = container.resolve(DeleteFavoriteMovieByIdUseCase.self)!
        self.addFavoriteMovieUseCase = container.resolve(AddFavoriteMovieUseCase.self)!
        self.getFavoriteMovieByIdUseCase = container.resolve(GetFavoriteMovieByIdUseCase.self)!
        self.getFavoriteMovieUseCase = container.resolve(GetFavoriteMovieUseCase.self)!
        self.getDetailMovieUseCase = container.resolve(GetDetailMovieUseCase.self)!
        self.getTopRatedMovieUseCase = container.resolve(GetTopRatedMovieUseCase.self)!
        self.getPopularMovieUseCase = container.resolve(GetPopularMovieUseCase.self)!
    }
}
