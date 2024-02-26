Profile: EdsPatientDeliveryStatusCreate
Parent: EdsBasicDeliveryStatusCreate
Description: "*** UNDER SPECIFICATION ***

EHMI profile of the IHE.BasicAudit.PatientCreate profile based on the EHMI profile EdsPatientDeliveryStatusCreate." 
* ^url = "http://medcomehmi.dk/ig/dk-ehmi-eds/StructureDefinition/EdsPatientDeliveryStatusCreate"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>StructureDefinition for the EdsPatientDeliveryStatusCreate.</div>"
* ^text.status = #additional
* ^contact[0].name = "MedCom"
* ^contact[=].telecom.value = "https://www.medcom.dk/"
* ^contact[=].telecom.system = #url
* ^contact[+].name = "OVI"
* ^contact[=].telecom.value = "ovi@medcom.dk"
* ^contact[=].telecom.system = #email
//* ^jurisdiction = urn:iso:std:iso:3166#CH
* ^status = #active
* ^publisher = "MedCom"
* ^date = "2024-01-01"
* ^copyright = "CC0-1.0"
* ^experimental = false

* entity contains
    ehmiPatient 1..1 
* entity 3..
* entity[ehmiPatient].what.identifier 1..1 MS SU // Patient identifier UUIDv5 converted
* entity[ehmiPatient].type 1..1 MS 
* entity[ehmiPatient].type from $EhmiDeliveryStatusEntityTypeValueSet
* entity[ehmiPatient].type = $EhmiDeliveryStatusEntityType#ehmiPatient "Patient"
* entity[ehmiPatient].role = http://terminology.hl7.org/CodeSystem/object-role#1 // "Patient"
* entity[ehmiPatient].type.code = $EhmiDeliveryStatusEntityType#ehmiPatient
* entity[ehmiPatient].type.system = $EhmiDeliveryStatusEntityType
* entity[ehmiPatient].type.display = "Patient"
