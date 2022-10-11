//
//  Logger.swift
//  LoggerFramework
//
//  Created by lw-66 on 11/10/22.
//

import Foundation

public class Logger {
    public init() {}
    
    public func printRandomLogs() -> RandoLogs {
        let logger = RandoLogs.allCases[Int.random(in: 0..<5)]
        return logger
    }
}

public enum RandoLogs: CaseIterable {
    case Public
    case Private
    case Static
    case Dynamic
}
