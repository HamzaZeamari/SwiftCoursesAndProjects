//
//  main.swift
//  ProtocolAndDelegateExercise
//
//  Created by Hamza Zeamari on 01/07/2022.
//

protocol advancedLifeSupport{
    func performCPR()
}

class EmergencyCallHandler{
    var delegate : advancedLifeSupport?
    
    func assessSituation(){
        print("Can you tell me what happened ?")
    }
    
    func triggerMedicalEmergency(){
        delegate?.performCPR()
    }
}

struct Paramedic: advancedLifeSupport{
    func performCPR() {
        print("Paramedic does chest compression")
    }
    
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
}

class Doctor : advancedLifeSupport{
    func performCPR() {
        print("Doctor does chest compression")
    }
    
    func useStethescop(){
        print("Listening heart")
    }
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
}

class Surgeon : Doctor{
    override func performCPR() {
        super.performCPR()
        print("Sings staying aling alive")
    }
    
    
}

let emilio = EmergencyCallHandler()

let pete = Paramedic(handler: emilio)

emilio.assessSituation()
emilio.triggerMedicalEmergency()
