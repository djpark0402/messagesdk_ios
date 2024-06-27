//
//  PurposeEnum.swift
//  WalletSDK
//
//  Created by dong jun park on 5/17/24.
//

import Foundation


public enum WalletTokenPurposeEnum: Int, Jsonable {
    case PERSONALIZED = 1
    case DEPERSONALIZED = 2
    case PERSONALIZE_AND_CONFIGLOCK = 3
    case CONFIGLOCK = 4
    case CREATE_DID = 5
    case UPDATE_DID = 6
    case ISSUE_VC = 7
    case REMOVE_VC = 8
    case PRESENT_VP = 9
    case LIST_VC = 10
    case DETAIL_VC = 11
    case CREATE_DID_AND_ISSUE_VC = 12
    
    public var value: String {
        switch self {
        case .PERSONALIZED:
            return "Personalize"
        case .DEPERSONALIZED:
            return "Depersonalize"
        case .PERSONALIZE_AND_CONFIGLOCK:
            return "PersonalizeAndConfigLock"
        case .CONFIGLOCK:
            return "ConfigLock"
        case .CREATE_DID:
            return "CreateDid"
        case .UPDATE_DID:
            return "UpdateDid"
        case .ISSUE_VC:
            return "IssueVc"
        case .REMOVE_VC:
            return "RemoveVc"
        case .PRESENT_VP:
            return "PresentVp"
        case .LIST_VC:
            return "ListVc"
        case .DETAIL_VC:
            return "DetailVc"
        case .CREATE_DID_AND_ISSUE_VC:
            return "CreateDidAndIssueVc"
        }
    }
}

public class WalletTokenPurpose {
    public var purposeCode: WalletTokenPurposeEnum
    public var description: String?
    
    public init(purpose: WalletTokenPurposeEnum) {
        self.purposeCode = purpose
    }
    
    public init(purpose: WalletTokenPurposeEnum, description: String? = nil) {
        self.purposeCode = purpose
        self.description = description
    }
}

/**
 case PERSONALIZE:
     
 case DEPERSONALIZE:
     
 case PERSONALIZE_AND_CONFIGLOCK:
     
 case CONFIGLOCK:
     
 case CREATE_DID:
     
 case UPDATE_DID:
     
 case ISSUE_VC:
     
 case REMOVE_VC:
     
 case PRESENT_VP:
     
 case LIST_VC:
     
 case DETAIL_VC:
     
 case CREATE_DID_AND_ISSUE_VC:
     
 default:
     return "Unknown";
 
 */
