//  types.swift
import SwiftUI

enum BreathingPhase {
    case inhale, holdAfterInhale, exhale, holdAfterExhale
    
    func duration(settingsModel: SettingsModel) -> TimeInterval {
        switch self {
        case .inhale:
            return settingsModel.inhaleDuration
        case .holdAfterInhale:
            return settingsModel.postInhaleHoldDuration
        case .exhale:
            return settingsModel.exhaleDuration
        case .holdAfterExhale:
            return settingsModel.postExhaleHoldDuration
        }
    }
}

enum AnimationShape: String, CaseIterable, Identifiable {
    case rectangle = "Rectangle"
    case circle = "Circle"
    
    var id: String { self.rawValue }
}
