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
    
    struct Constants
    {
        static let clientID = "2cbf6c2ec7104e1cb1862dfd37419bfc"
        static let clientSecret = "e9e619080c384d2bb8da6dd40fe8e046"
    }
    
    private init() {}
    
    public var signInURL: URL?
    {
        let scopes = "user-read-private"
        let redirectURI = "https://open.spotify.com/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: string)
    }
    
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
    
    private var tokenExpirationDate: Date?
    {
        return nil
    }
    
    private var shouldRefreshToken: Bool
    {
        return false
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void)
    {
        // Get token
    }
    
    private func cacheToken()
    {
        
    }
    
    private func refreshAccessToken()
    {
        
    }
}
