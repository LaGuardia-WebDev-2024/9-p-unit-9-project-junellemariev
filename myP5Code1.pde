setup = function() {
    size(1200, 800);
};

//Background Images
var hallImage = loadImage("https://img.freepik.com/premium-photo/conference-room-cartoon-high-school-corridor-balcony-anime-background-interior-2d-illustration_817921-58042.jpg?semt=ais_rp_progressive&w=740&q=80");

var gardenImage = loadImage("https://t3.ftcdn.net/jpg/02/50/39/72/360_F_250397206_HuBj2V5oEytcqonzpzum4IjEjtAsZq3g.jpg");

var gymImage = loadImage("");

//Variable Declarations
var sceneImage = hallImage;
var sceneText = "Where do you want to go?  [Press a for left and d for right]";

draw = function(){
    
   drawScene();


   if(keyPressed){
     if(key == 'a'){
       sceneImage = gardenImage;   
       sceneText = "The flowers are thirsty. Water them!  [Press s to go back]";
     } 
     if(key == 's'){
      sceneImage = hallImage;
      sceneText = "Where do you want to go?  [Press a for left and d for right]";
     } 
     
   }
  
};

var drawScene = function(){
    image(sceneImage, 0, 0, 1200, 800);
    
    fill(0,0,0);
    rect(0, 700, 1200, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 755);
};



