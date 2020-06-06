//
//  Created by Christian Tietze (@ctietze) on 2017-12-16.
//  Some rights reserved: http://opensource.org/licenses/MIT
//

public protocol RemoveLogFiles: class {
    /// Move to the trash if possible, or immediately delete the file from disk.
    ///
    /// - throws: `LogFileRemovalError`
    func removeLogFile(at url: URL) throws
}

public struct LogFileRemovalError: Error {
    let url: URL
    let baseError: Error
}

import Foundation

extension FileManager: RemoveLogFiles {
    public func removeLogFile(at url: URL) throws {
        do {
            try removeItem(at: url)
        } catch {
            throw LogFileRemovalError(url: url, baseError: error)
        }
    }
}
