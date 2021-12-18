import { LightningElement, track , api} from 'lwc';

export default class Screen extends LightningElement {
  @track missionValue;
  @api missionToSend;

  handleMisionValue(event){
    console.log(event);
    this.missionValue = event.detail;
    this.missionToSend = this.missionValue;
    console.log("+++++++",this.missionValue);
    debugger
  }

  
}