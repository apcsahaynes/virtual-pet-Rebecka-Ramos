
public class Pet{
    private String name;
    private int ngIncrease;
    private int happyIncrease;
    
     public Pet(String name, int ngIncrease, int happyIncrease){
         this.name=name;
         this.ngIncrease=ngIncrease;
         this.happyIncrease=happyIncrease;
     }
     
     public int getNgIncrease(){
         return ngIncrease;
     }
     
      public int getHappyIncrease(){
         return happyIncrease;
     }
     
     
     public String getName(){
         return name;
     }
}
