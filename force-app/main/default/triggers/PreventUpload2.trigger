trigger PreventUpload2 on ContentVersion (before insert, before update, before delete, 
  after insert, after update, after delete, after undelete) {

//Set will contain the extensions that we want to restrict to upload 
set<String> setExtNotAllowed = new set<String> {'exe','dll','jpg','jpeg','png'}; 

for (ContentVersion f :Trigger.new) { 
  
  try{ 
       String strExtension = f.PathOnClient.toLowerCase(); 
       system.debug(strExtension);
       List<String> parts = strExtension.splitByCharacterType(); 
       if(setExtNotAllowed.Contains(parts[parts.size()-1])){       
       f.addError('File having this extension could not be attached,Please try some other extension.'); 
        }
     } 

     catch(exception e){
     system.debug(e);
     } 
  } 
}