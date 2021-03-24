//
//  LoginUseCaseDelegate.swift
//  ArchitecturePractice
//
//  Created by Prudhvi Gadiraju on 3/23/21.
//

import Foundation

protocol LoginUseCaseDelegate: class {
    func loginSucceeded(with message: String)
    func loginFailed(with message: String)
}
