
class Task {

   String title;

   bool isChecked;

   Task({this.title, this.isChecked});

   void toggleTask(){
     isChecked = !isChecked;
   }


}