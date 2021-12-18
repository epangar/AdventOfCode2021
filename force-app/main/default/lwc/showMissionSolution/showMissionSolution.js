import { LightningElement, api, track, wire } from 'lwc';
import { subscribe, unsubscribe, MessageContext } from 'lightning/messageService';
import MISSION_UPDATED_CHANNEL from '@salesforce/messageChannel/Mission_Updated__c';

export default class ShowMissionSolution extends LightningElement {
  @track title;
  @track day;
  @track URL;
  @track firstSolution;
  @track secondSolution;
  //@api getMissionFromParent;

  subscription = null;
  variable;
  
  @wire(MessageContext) messageContext;

  subscribeToMessageChannel() {
    this.subscription = subscribe(
      this.messageContext,
      MISSION_UPDATED_CHANNEL,
      (message) => this.handleMessage(message)
    );
    console.log(this.subscription);
  }
  handleMessage(message) {
    console.log(message);
  }

  connectedCallback() {
    this.subscribeToMessageChannel();
  }

  disconnectedCallback() {
    unsubscribe(this.subscription);
    this.subscription = null;
  }
  
}