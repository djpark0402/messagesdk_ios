//
//  CoreVO.swift
//  WalletSDK
//
//  Created by dong jun park on 5/29/24.
//

import Foundation

import OpenDID_DataModel

//public struct VerifyProfile: Jsonable {
//    public var id: String
//    public var type: String
//    public var title: String
//    public var logo: LogoImage?
//    public var description: String?
//    public var encoding: String
//    public var language: String
//    public var profile: Profile
//    
//    
//    public init(id: String, type: String, title: String, logo: LogoImage? = nil, description: String? = nil, encoding: String, language: String, profile: Profile) {
//        self.id = id
//        self.type = type
//        self.title = title
//        self.logo = logo
//        self.description = description
//        self.encoding = encoding
//        self.language = language
//        self.profile = profile
//    }
//}
//
//public struct IssuerProfile: Jsonable {
//    public var id: String
//    public var type: String
//    public var title: String
//    public var description: String
//    public var encoding: String
//    public var language: String
//    public var profile: Profile
//    public var proof: Proof
//    
//    public init(id: String, type: String, title: String, description: String, encoding: String, language: String, profile: Profile, proof: Proof) {
//        self.id = id
//        self.type = type
//        self.title = title
//        self.description = description
//        self.encoding = encoding
//        self.language = language
//        self.profile = profile
//        self.proof = proof
//    }
//}
//
//public enum LOGO_IMAGE_TYPE: String, Jsonable {
//    case JPG = "jpg"
//    case PNG = "png"
//}
//
//public struct LogoImage: Jsonable {
//    public var format: LOGO_IMAGE_TYPE
//    public var link: String
//    public var value: String
//    
//    public init(format: LOGO_IMAGE_TYPE, link: String, value: String) {
//        self.format = format
//        self.link = link
//        self.value = value
//    }
//}
//
//public struct ProviderDetail: Jsonable {
//    public var did: String
//    public var certVcRef: String
//    public var name: String
//    public var description: String
//    public var logo: LogoImage?
//    public var ref: String?
//    
//    public init(did: String, certVcRef: String, name: String, description: String, logo: LogoImage? = nil, ref: String? = nil) {
//        self.did = did
//        self.certVcRef = certVcRef
//        self.name = name
//        self.description = description
//        self.logo = logo
//        self.ref = ref
//    }
//}
//
//public enum CredentialSchemaType: String, Jsonable {
//    case OsdSchemaCredential = "OsdSchemaCredential"
//}
//
//public struct CredentialSchema: Jsonable {
//    public var id :String
//    public var type: CredentialSchemaType
//    public var requiredClaims: [String]
//}
//
//public enum ECC_CURVE_TYPE: String, Jsonable {
//    case Secp256k1 = "Secp256k1"
//    case Secp256R1 = "Secp256r1"
//}
//
//public enum SYMMETRIC_CIPHER_TYPE: String, Jsonable {
//    case AES128CBC = "AES-128-CBC"
//    case AES128ECB = "AES-128-ECB"
//    case AES256CBC = "AES-256-CBC"
//    case AES256ECB = "AES-256-ECB"
//}
//
//public enum SYMMETRIC_PADDING_TYPE: String, Jsonable {
//    case NOPAD = "NOPAD"
//    case PKCS5 = "PKCS5"
//}
//
//public struct ReqE2e: Jsonable {
//    public var nonce: String
//    public var curve: ECC_CURVE_TYPE
//    public var publicKey: String
//    public var cipher: SYMMETRIC_CIPHER_TYPE
//    public var padding: SYMMETRIC_PADDING_TYPE
//    public var proof: Proof?
//    
//    public init(nonce: String, curve: ECC_CURVE_TYPE, publicKey: String, cipher: SYMMETRIC_CIPHER_TYPE, padding: SYMMETRIC_PADDING_TYPE, proof: Proof? = nil) {
//        self.nonce = nonce
//        self.curve = curve
//        self.publicKey = publicKey
//        self.cipher = cipher
//        self.padding = padding
//        self.proof = proof
//    }
//}
//
//public struct Process: Jsonable {
//    public var endpoints: [String]
//    public var reqE2e: ReqE2e
//    public var issuerNonce: String?
//    public var verifierNonce: String?
//    
//    public init(endpoints: [String], reqE2e: ReqE2e, issuerNonce: String? = nil, verifierNonce: String? = nil) {
//        self.endpoints = endpoints
//        self.reqE2e = reqE2e
//        self.issuerNonce = issuerNonce
//        self.verifierNonce = verifierNonce
//    }
//}
//
//public struct Filter: Jsonable {
//    public var credentialSchemas: [CredentialSchema]
//    
//    public init(credentialSchemas: [CredentialSchema]) {
//        self.credentialSchemas = credentialSchemas
//    }
//}
//
//public struct Profile: Jsonable {
//    public var issuer: ProviderDetail?
//    public var verifier: ProviderDetail?
//    public var filter: Filter?
//    public var process: Process
//    
//    public init(issuer: ProviderDetail? = nil, verifier: ProviderDetail? = nil, filter: Filter? = nil, process: Process) {
//        self.issuer = issuer
//        self.verifier = verifier
//        self.filter = filter
//        self.process = process
//    }
//}
//

//

//
//public enum AuthType : String, Jsonable
//{
//    case free = "1"
//    case pin  = "2"
//    case bio  = "4"
//}
//
//public struct DIDDocument: Jsonable {
//    public var context              : [String]
//    public var id                   : String
//    public var controller           : String
//    public var verificationMethod   : [VerificationMethod]
//    public var assertionMethod      : [String]?
//    public var authentication       : [String]?
//    public var keyAgreement         : [String]?
//    public var capabilityInvocation : [String]?
//    public var capabilityDelegation : [String]?
//    public var service              : [Service]?
//    public var created              : String
//    public var updated              : String
//    public var versionId            : String
//    public var deactivated          : Bool
//    public var proof                : Proof?
//    public var proofs               : [Proof]?
//    
//    enum CodingKeys: String, CodingKey {
//        case context = "@context"
//        case id,
//             controller,
//             verificationMethod,
//             assertionMethod,
//             authentication,
//             keyAgreement,
//             capabilityInvocation,
//             capabilityDelegation,
//             service,
//             created,
//             updated,
//             versionId,
//             deactivated,
//             proof,
//             proofs
//    }
//    
//    public struct VerificationMethod: Jsonable {
//        public var id                  : String
//        public var type                : DIDKeyType
//        public var controller          : String
//        public var publicKeyMultibase  : String
//        public var authType            : AuthType
//        
//        public init(id: String, type: DIDKeyType, controller: String, publicKeyMultibase: String, authType: AuthType) {
//            self.id = id
//            self.type = type
//            self.controller = controller
//            self.publicKeyMultibase = publicKeyMultibase
//            self.authType = authType
//        }
//    }
//    
//    public struct Service : Jsonable {
//        public var id                  : String
//        public var type                : DIDServiceType
//        public var serviceEndpoint     : [String]
//        
//        public init(id: String, type: DIDServiceType, serviceEndpoint: [String]) {
//            self.id = id
//            self.type = type
//            self.serviceEndpoint = serviceEndpoint
//        }
//    }
//    
//    public enum DIDKeyType : String, Jsonable {
//        case rsaVerificationKey2018        = "RsaVerificationKey2018"
//        case secp256k1VerificationKey2018  = "Secp256k1VerificationKey2018"
//        case secp256r1VerificationKey2018  = "Secp256r1VerificationKey2018"
//    }
//    
//    public enum DIDServiceType : String, Jsonable {
//        case linkedDomains      = "LinkedDomains"
//        case credentialRegistry = "CredentialRegistry"
//    }
//}
//
//
//public struct VCProof : Jsonable {
//    public var created: String
//    public var proofPurpose: ProofPurpose
//    public var verificationMethod: String
//    public var type: ProofType?
//    public var proofValue: String?
//    public var proofValueList: [String]?
//}
//
//public enum ClaimType : String, Codable {
//    case text
//    case image
//    case document
//}
//
//public enum ClaimFormat : String, Codable {
//    //text
//    case plain
//    case html
//    case xml
//    case csv
//    //image
//    case png
//    case jpg
//    case gif
//    //document
//    case txt
//    case pdf
//    case word
//}
//
//public struct VerifiableCredential : Jsonable {
//    public var context           : [String]
//    public var id                : String
//    public var type              : [String]
//    public var issuer            : Issuer
//    public var issuanceDate      : String
//    public var validFrom         : String
//    public var validUntil        : String
//    public var encoding          : String
//    public var formatVersion     : String
//    public var language          : String
//    public var evidence          : [DocumentVerificationEvidence]
//    public var credentialSchema  : CredentialSchema
//    public var credentialSubject : CredentialSubject
//    public var proof             : VCProof
//    
//    public struct Issuer : Jsonable {
//        public var id        : String
//        public var name      : String?
//        public var certVcRef : String?
//    }
//    
////    public enum Evidence: Jsonable
////    {
////        case documentVerification(DocumentVerificationEvidence)
////    }
//    
//    public enum Presence : String, Jsonable {
//        case physical = "Physical"
//        case digital  = "Digital"
//    }
//    
//    public enum EvidenceType : String, Jsonable {
//        case documentVerification = "DocumentVerification"
//    }
//    
//    public struct DocumentVerificationEvidence : Jsonable {
//        public var url      : String?
//        public var type     : EvidenceType
//        public var verifier : String
//        
//        public var evidenceDocument : String
//        public var subjectPresence  : Presence
//        public var documentPresence : Presence
//    }
//    
//    public struct CredentialSchema : Jsonable {
//        public var id   : String
//        public var type : CredentialSchemaType
//    }
//    
//    public struct CredentialSubject : Jsonable {
//        public var id     : String
//        public var claims : [Claim]
//    }
//    
//    public struct Claim : Jsonable {
//        
//        public struct Internationalization : Jsonable {
//            public var caption  : String
//            public var value    : String?
//            public var digestSRI: String?
//        }
//        
//        public var code     : String
//        public var caption  : String
//        public var value    : String
//        public var type     : ClaimType
//        public var format   : ClaimFormat
//        public var hideValue: Bool? //default(false)
//        public var location : Location? //default(inline)
//        public var digestSRI: String?
//        public var i18n     : [String : Internationalization]?
//    }
//    
//    public init(context: [String], id: String, type: [String], issuer: Issuer, issuanceDate: String, validFrom: String, validUntil: String, encoding: String, formatVersion: String, language: String, evidence: [DocumentVerificationEvidence], credentialSchema: CredentialSchema, credentialSubject: CredentialSubject, proof: VCProof) {
//        self.context = context
//        self.id = id
//        self.type = type
//        self.issuer = issuer
//        self.issuanceDate = issuanceDate
//        self.validFrom = validFrom
//        self.validUntil = validUntil
//        self.encoding = encoding
//        self.formatVersion = formatVersion
//        self.language = language
//        self.evidence = evidence
//        self.credentialSchema = credentialSchema
//        self.credentialSubject = credentialSubject
//        self.proof = proof
//    }
//}
//
//public enum Location : String, Jsonable {
//    case inline
//    case remote
//    case attach
//}
//
//public struct VerifiablePresentation : Jsonable, Identifiable {
//    public var context              : [String]
//    public var id                   : String
//    public var type                 : [String]
//    public var holder               : String
//    public var validFrom  : String
//    public var validUntil : String
//    public var verifierNonce        : String
//    public var verifiableCredential : [VerifiableCredential]
//    public var proof                : Proof?
//    public var proofs               : [Proof]?
//}
