// This class is automatically included in FastlaneRunner during build
// If you have a custom Fastfile.swift, this file will be replaced by it
// Don't modify this file unless you are familiar with how fastlane's swift code generation works
// *** This file will be overwritten or replaced during build time ***

import Foundation

open class Fastfile: LaneFile {
    override public init() {
        super.init()
        betaLane()
    }
    
    func betaLane() {
        desc("Submit a new Beta Build to Apple TestFlight. This will also make sure the profile is up to date")
        syncCodeSigning(appIdentifier: ["datnh.FoodReviews"], gitUrl: "https://github.com/nguyenhuudat98bn/FoodReviews.git")
        buildIosApp(scheme: "FoodReviews")
    }
}

// Please don't remove the lines below
// They are used to detect outdated files
// FastlaneRunnerAPIVersion [0.9.1]
