public with sharing class EmailManager{

  public void sendMail(String address, String subject, String body) {
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
      String[] toAddress = new String[] {address};
      mail.setToAddresses(toAddresses);
      mail.setSubject(subject);
      mail.setPlainTextBody(body);
      Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
      }
      
  }
