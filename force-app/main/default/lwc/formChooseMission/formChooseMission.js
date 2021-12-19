import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import MISSION_UPDATED_CHANNEL from '@salesforce/messageChannel/Mission_Updated__c';

export default class FormChooseMission extends LightningElement {
  
  
  value = '-----';
  mission;
  @wire(MessageContext) messageContext;
  
  

  handleChange(event) {
    this.mission = {mission: event.target.value};
    console.log(event.target);
    this.value = event.target.options.find(opt => opt.value === event.detail.value).label;;
    publish(this.messageContext, MISSION_UPDATED_CHANNEL, this.mission);
  }

  get options() {
    return [
        { label: 'Sonar Sweep', value: 'sonarSweep' },
        { label: 'Dive!', value: 'dive' },
        { label: 'Binary Diagnostic', value: 'binaryDiagnostic' },
    ];
  }
}