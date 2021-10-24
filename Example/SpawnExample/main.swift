//
//  main.swift
//  SpawnExample
//
//  Created by Lars Moesman on 23/10/2021.
//

import Foundation
import Spawn

do {
    
    /// Test a command
    _ = try Spawn(
        args: ["/bin/sh", "-c", "ls", "."],
        output: { out in
            print(out)
        }
    )
    
    /// Test default environment variable
    _ = try Spawn(
        args: ["/bin/sh", "-c", "echo $PATH"],
        output: { out in
            print(out)
        }
    )
    
    /// Test specified environment variable
    _ = try Spawn(
        args: ["/bin/sh", "-c", "echo $TEST"],
        envs: ["TEST": "Hello World!"],
        output: { out in
            print(out)
        }
    )
    
    /// Test specified environment variable doesn't override default
    _ = try Spawn(
        args: ["/bin/sh", "-c", "echo $TEST + $PATH"],
        envs: ["TEST": "Hello World!"],
        output: { out in
            print(out)
        }
    )
    
} catch {
    print("error: \(error)")
}
