import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import MISSION_UPDATED_CHANNEL from '@salesforce/messageChannel/Mission_Updated__c';

export default class FormChooseMission extends LightningElement {
  
  
  value = '-----';
  mission;
  @wire(MessageContext) messageContext;
  
  

  handleChange(event) {
    this.mission = {mission: event.target.value};
    /* console.log(">>>>>>>>",this.mission); */
    /* const missionEventToDispatch = new CustomEvent('getmission', {
      // detail contains only primitives
      detail: this.mission
    });
    this.dispatchEvent(missionEventToDispatch); */

    if(this.mission !== undefined){
      publish(this.messageContext, MISSION_UPDATED_CHANNEL, this.mission);
    } else {
      console.log("NOPE");
    }
  }

  get options() {
    return [
        { label: 'Sonar Sweep', value: 'sonarSweep' },
        { label: 'Dive!', value: 'dive' },
        { label: 'Binary Diagnostic', value: 'binaryDiagnostic' },
    ];
  }
}