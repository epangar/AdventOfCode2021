import { LightningElement,  api, wire, track } from 'lwc';
import getTitle from '@salesforce/apex/InitialClass.getTitle';
import getAccounts from '@salesforce/apex/InitialClass.getAccounts';


export default class InitialView extends LightningElement {
  @track title;
  @track accounts;
  @track error;
  
  connectedCallback() {
    getTitle()
        .then(result => {
            this.title = result;
        })
        .catch(error => {
            this.error = error;
        });
    
    getAccounts()
        .then(result => {
          this.accounts = result;
        })
        .catch(error => {
            this.error = error;
        });

  }
  
}