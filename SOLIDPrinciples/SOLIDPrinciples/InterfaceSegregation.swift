//
//  InterfaceSegregation.swift
//  SOLIDPrinciples
//
//  Created by Vemireddy Vijayasimha Reddy on 08/04/24.
//

import Foundation

// many client specific interfaces are better than one general interface and also
// Do not force any client to implement interface methods which is irrelevent to them

protocol Gesture {
    func didTap()
    func didDoubleTap()
    func didLongTap()
}

class LoginView: Gesture {
    func didTap() {
    }
    
    func didDoubleTap() {
    }
    
    func didLongTap() {
    }
}

class ProfileView: Gesture {
    func didTap() {
        // Handle tap
    }
    func didDoubleTap() {
        //Do nothing & not required
    }
    
    func didLongTap() {
        //Do nothing & not required
    }
}

// interface segregation

protocol TapGesture {
    func didTap()
}
protocol DoubleTapGesture {
    func didDoubleTap()
}
protocol LongTapGesture {
    func didLongTap()
}
class LoginView1:TapGesture, DoubleTapGesture, LongTapGesture  {
    func didTap() {
    }
    
    func didDoubleTap() {
    }
    
    func didLongTap() {
    }
}

class ProfileView1: TapGesture {
    func didTap() {
        // Handle tap
    }
}
