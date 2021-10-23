//
//  main.swift
//  SpawnExample
//
//  Created by Lars Moesman on 23/10/2021.
//

import Foundation
import Spawn

do {
    _ = try Spawn(
        args: ["/bin/sh", "-c", "ls", "."],
        output: { out in
            print(out)
        }
    )
} catch {
    print("error: \(error)")
}
