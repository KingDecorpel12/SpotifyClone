//
//  AuthManager.swift
//  SpotifyClone
//
//  Created by Omar Hegazy on 2/13/23.
//

import Foundation

final class AuthManager
{
    static let shared = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool
    {
        return false
    }
    
    private var accessToken: String?
    {
        return nil
    }
    
    private var refreshToken: String?
    {
        return nil
    }
    
    private var shouldRefreshToken: Bool
    {
        return false
    }
    
}
