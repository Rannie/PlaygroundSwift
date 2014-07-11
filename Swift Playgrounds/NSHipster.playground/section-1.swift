// Playground - noun: a place where people can play

import Cocoa
import Foundation

let yosemite = NSOperatingSystemVersion(majorVersion: 10, minorVersion : 10, patchVersion: 0)
NSProcessInfo().isOperatingSystemAtLeastVersion(yosemite)

let energyFormatter = NSEnergyFormatter()
energyFormatter.forFoodEnergyUse = true

let joules = 10_000.0
var loc = energyFormatter.stringFromJoules(joules);

let massFormatter = NSMassFormatter()
let kilograms = 60.0
loc = massFormatter.stringFromKilograms(kilograms)

let lengthFormatter = NSLengthFormatter()
let length = 3_000.0
loc = lengthFormatter.stringFromMeters(length)