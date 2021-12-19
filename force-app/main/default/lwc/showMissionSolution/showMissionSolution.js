import { LightningElement, api, track, wire } from 'lwc';
import { subscribe, unsubscribe, MessageContext } from 'lightning/messageService';
import MISSION_UPDATED_CHANNEL from '@salesforce/messageChannel/Mission_Updated__c';

//Import classes
import returnFinalAnswer from '@salesforce/apex/GenerateFinalAnswer.returnFinalAnswer';

export default class ShowMissionSolution extends LightningElement {
  @track title;
  @track day;
  @track URL;
  @track firstSolution;
  @track secondSolution;
  
  subscription = null;
  
  
  @wire(MessageContext) messageContext;

  

  connectedCallback() {
    this.subscribeToMessageChannel();
  }

  subscribeToMessageChannel() {
    this.subscription = subscribe(
      this.messageContext,
      MISSION_UPDATED_CHANNEL,
      (message) => this.handleMessage(message)
    );
  }
  
  handleMessage(message) {

    //Here we get the class
    let currentMission = message.mission;
    
    
    returnFinalAnswer({mission:currentMission})
      .then(result => {
        console.log(result);
        this.title = result.Title;
        this.day = result.Day;
        this.URL = "https://adventofcode.com/2021/day/"+result.Day;
        this.firstSolution = result.firstAnswer;
        this.secondSolution = result.secondAnswer;
        console.log(this);
      })
      .catch(error => {
        console.log(error);
        this.title = error;
        this.error = error;
      });
  }

  disconnectedCallback() {
    unsubscribe(this.subscription);
    this.subscription = null;
  }
  
}