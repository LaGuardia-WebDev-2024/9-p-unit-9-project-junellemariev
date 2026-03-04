setup = function() {
    size(1200, 800);
};

//Background Images
var hallImage = loadImage("https://img.freepik.com/premium-photo/conference-room-cartoon-high-school-corridor-balcony-anime-background-interior-2d-illustration_817921-58042.jpg?semt=ais_rp_progressive&w=740&q=80");

var gardenImage = loadImage("https://i0.wp.com/grownbyyou.com/wp-content/uploads/2022/07/%CB%992004_BirdGdnAfter_530X.jpg?fit=530%2C318&ssl=1");

var gymImage = loadImage("https://imgcdn.stablediffusionweb.com/2024/12/11/154e82f9-0a17-4509-a199-6a6c373f900d.jpg");

var heavenImage = loadImage("https://images.stockcake.com/public/0/4/5/04599dc2-5745-4e4b-a718-08b37dff6be8/celestial-pastel-dreamscape-stockcake.jpg");

//Variable Declarations
var sceneImage = hallImage;
var sceneText = "Where do you want to go?  [Press a for left and d for right]";
var emojis = ['🏀', '⚽', '🏐', '🏈', '🥎'];

draw = function(){
    
   drawScene();


   if(keyPressed){

    //the garden
     if(key == 'a'){
       sceneImage = gardenImage;   
       sceneText = "The flowers are thirsty. Water them!  [Press s to go back]";
     } 

     //the main hall
     if(key == 's'){
      sceneImage = hallImage;
      sceneText = "Where do you want to go?  [Press a for left and d for right]";
     } 

     //the gym
     if(key == 'd'){
      sceneImage = gymImage;
      sceneText = "Fill the room! [Press s to go back]";
     }

     //heaven
     if(key == 'w'){
      sceneImage = heavenImage; 
      sceneText = "Oops! You went too far and found Heaven [Press s to go back]";
     }
   }

      //ball animation
        if(mousePressed && sceneImage == gymImage){
          drawBall(mouseX,mouseY);
        }

      //water
        if(mousePressed && sceneImage == gardenImage){
          drawWater(mouseX,mouseY);
        }

      //restart
        if(mouseClicked && sceneImage == heavenImage){
          drawBlank();
          return false;
        }
};




var drawScene = function(){

    image(sceneImage, 0, 0, 1200, 800);

    currentImage = sceneImage;

    fill(0,0,0);
    rect(0, 700, 1200, 100);
      
    fill(255,255,255);
    textSize(20);
   
    text(sceneText, 10, 755);
};

var drawBall = function (ballX,ballY) {
    textSize(64);
    var index = round(random(0,4));
    text(emojis[index], ballX, ballY);
};

var drawWater = function (waterX,waterY) {
    stroke(203,255,255);
    fill(203, 255, 255);
    ellipse(waterX,waterY,40,40);
    textSize(64);
    text("🚿", waterX,waterY);
};

var drawBlank = function () {
    stroke(255,255,255);
    fill(255,255,255);
    rect(0,0,1200,800);
};

