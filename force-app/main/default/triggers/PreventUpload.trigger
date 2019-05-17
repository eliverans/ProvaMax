trigger PreventUpload on ContentDocument (before insert) {

//Set will contain the extensions that we want to restrict to upload 
set<String> setExtNotAllowed = new set<String> {'exe','dll','jpg','jpeg'}; 

for (ContentDocument f :Trigger.new) { 
  
  try{ 
       String strExtension = f.FileExtension.toLowerCase(); 
       List<String> parts = strExtension.splitByCharacterType(); 
       if(setExtNotAllowed.Contains(parts[parts.size()-1])){	   
       f.addError('File having this extension could not be attached,Please try some other extension.'); 
        }
     } 

     catch(exception e){
	 } 
  } 
}