//
//  FormViewReactor.swift
//  swift-practice-form
//
//  Created by anton van eechaute on 2018/04/03.
//  Copyright © 2018 anton van eechaute. All rights reserved.
//

import ReactorKit
import RxSwift

final class FormViewReactor: Reactor {
    enum Action {
        case loading
        case preview
        case send
    }

    enum Mutation {
        case setLoading(Bool)
        case setName(String?)
        case setEmail(String?)
        case setBody(String?)
    }

    struct State {
        var loading: Bool
        var name: String?
        var email: String?
        var body: String?
    }

    let initialState: State

    init() {
        self.initialState = State(
            loading: false,
            name: nil,
            email: nil,
            body: nil
        )
    }

    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .loading:
            return .just(.setLoading(true))
        case .preview:
            return .empty()
        case .send:
            return .empty()
        }
    }

    func reduce(state: State, mutation: Mutation) -> State {
        switch mutation {
        case let .setLoading(loading):
            var state = state
            state.loading = loading
            return state
        case let .setName(name):
            var state = state
            state.name = name
            return state
        case let .setEmail(email):
            var state = state
            state.email = email
            return state
        case let .setBody(body):
            var state = state
            state.body = body
            return state
        }
    }
}
