Instance: SampleEHMIBasicAuditCreate-1.1-BS-Sender-msg-created
//InstanceOf: EHMISampleAuditEvent
InstanceOf: EHMIBasicAuditPatientCreate
Description: "An example of an EHMIAuditEvent."
* id = "BAC1.1"
//* type.code = $EHMIAuditEventTypes#ehmiMessaging
//* type.code = $EHMIAuditEventTypes#ehmiMessaging
* subtype.code = $EHMIAuditEventSubTypes#msg-created
* recorded = "2023-10-01T00:00:00.000+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// Client
//* agent[client].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[client].name = "Systematic Cura EUAPPL"
* agent[client].requestor = true
* agent[client].who.type = $AuditEventAgentWhoTypes#110153
* agent[client].who.identifier.value = "DEV12345"
* agent[client].network.address = "2001:0db8:85a3:0000:0000:8a2e:0370:7334"
* agent[client].network.type = $AuditEventAgentNetworkType#2
// server
//* agent[server].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[server].name = "MedCom Shipping Status (MSS)"
* agent[server].requestor = false
* agent[server].who.type = $AuditEventAgentWhoTypes#110153
* agent[server].who.identifier.value = "MSS1234"
* agent[server].network.address = "http://shippingstatus.medcom.dk/"
* agent[server].network.type = $AuditEventAgentNetworkType#5
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $EHMIAuditEventParticipationRoleType#ehmiDevice 
* agent[ehmiDevice].name = "Systematic Cura EUAPPL"
* agent[ehmiDevice].requestor = false
* agent[ehmiDevice].who.type = $EHMIAuditEventAgentWhoIdentifiers#ehmiDEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV12345"
// source
* source.observer.identifier.value = "DEV12345"
* source.type.code = $EHMIAuditEventSourceType#EUP
// data
* entity[data].what.identifier.value = "PAT1234567890"
//* entity[data].type = $AuditEventEntityType#4
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EHMIAuditEventEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"

/*
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
*/

/*
Instance: SampleEHMIBasicAuditCreate-1.2-BS-Sender-msg-sent
InstanceOf: EHMISampleAuditEvent
//InstanceOf: EHMIBasicAuditCreate
Description: "An example of an EHMIAuditEvent."
* id = "BAC1.2"
* type.code = $EHMIAuditEventTypes#ehmiMessaging
* subtype.code = $EHMIAuditEventSubTypesValueset#msg-sent
* recorded = "2023-10-01T00:00:00.001+02:00" 
* outcome = $EHMIAuditEventOutcome#0
// Client
* agent[Client].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[Client].name = "Aarhus Kommune"
* agent[Client].requestor = false
* agent[Client].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[Client].who.identifier.value = "GLN1234"
// Server
* agent[Server].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[Server].name = "Aarhus Kommune"
* agent[Server].requestor = false
* agent[Server].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[Server].who.identifier.value = "GLN1234"
// User
* agent[User].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[User].name = "Aarhus Kommune"
* agent[User].requestor = false
* agent[User].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[User].who.identifier.value = "GLN1234"
// ehmiSender
* agent[ehmiSender].type = $EHMIAuditEventParticipationRoleType#ehmiSender 
* agent[ehmiSender].name = "Aarhus Kommune"
* agent[ehmiSender].requestor = false
* agent[ehmiSender].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiSender].who.identifier.value = "GLN1234"
// ehmiReceiver
* agent[ehmiReceiver].type = $EHMIAuditEventParticipationRoleType#ehmiReceiver 
* agent[ehmiReceiver].name = "Løgten Lægehus"
* agent[ehmiReceiver].requestor = false
* agent[ehmiReceiver].who.type = $EHMIAuditEventAgentWhoIdentifiers#GLN
* agent[ehmiReceiver].who.identifier.value = "GLN12345"
// Device
* agent[ehmiDevice].type = $EHMIAuditEventParticipationRoleType#ehmiDevice 
* agent[ehmiDevice].name = "Systematic Cura MSH"
* agent[ehmiDevice].requestor = true
* agent[ehmiDevice].who.type = $EHMIAuditEventAgentWhoIdentifiers#ehmiDEVICEID
* agent[ehmiDevice].who.identifier.value = "DEV123456"
// source
* source.observer.identifier.value = "DEV123456"
* source.type.code = $EHMIAuditEventSourceType#MSH
// Patient
* entity[ehmiPatient].what.identifier.value = "PAT1234567890"
* entity[ehmiPatient].type = $EHMIAuditEventEntityType#ehmiPatient
// Message
* entity[ehmiMessage].what.identifier.value = "MSG1234567890"
* entity[ehmiMessage].type = $EHMIAuditEventEntityType#ehmiMessage
* entity[ehmiMessage].detail[ehmiMessageType].type = $EHMIAuditEventEntityDetailType#ehmiMessageType
* entity[ehmiMessage].detail[ehmiMessageType].valueString = "MunicipalityObservations"
* entity[ehmiMessage].detail[ehmiMessageVersion].type = $EHMIAuditEventEntityDetailType#ehmiMessageVersion
* entity[ehmiMessage].detail[ehmiMessageVersion].valueString = "1.0"
/*
// Envelope
* entity[ehmiEnvelope].what.identifier.value = "ENV1234567890"
* entity[ehmiEnvelope].type = $EHMIAuditEventEntityType#ehmiEnvelope
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeType
* entity[ehmiEnvelope].detail[ehmiEnvelopeType].valueString = "SBDH"
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].type = $EHMIAuditEventEntityDetailType#ehmiEnvelopeVersion
* entity[ehmiEnvelope].detail[ehmiEnvelopeVersion].valueString = "2.0"
*/