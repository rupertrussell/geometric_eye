// Inspired by https://www.youtube.com/watch?v=hkCakDslpXM
// Dearing Wang https://www.youtube.com/channel/UCUfc5V23Oy_XD99LHYPvp4Q
// 130K subscribers
// Geometric Eye
// Thanks to Chrisir on https://forum.processing.org/one/topic/scrible-and-color.html for the flood fill code
// Porcessing code on github at: https://github.com/rupertrussell/geometric_eye

FloodFill1 myFloodFill ;

int saveCount = 1;
float scale = 9000;
//select target colour
int targetRed = 0;
int targetGreen = 0;
int targetBlue = 0;

//set global variables
color c;
int currentpixel;
int pixeltocheck;
ArrayList<Integer> pixelstochange= new ArrayList();

//set arraylist counter to 0
int arraylistindex = 0;

boolean outlinesDrawn = false;

// String filename = "large_9411×9411.png";
// String filename = "Womens_Graphic_Dress_4020×6090.png";
// String filename = "Mens_Graphic_Tee_3873×4814.png";
// String filename = "Womens_Aline_Dress_6310×6230.png";
// String filename = "Laptop_pouch_&_Case_4600×3000.png";
// String filename = "Spiral_notebook_1756×2481.png";
// String filename = "Hardcover_notebook_3502×2385.png";
// String filename = "Bath_Mat_6480x4320.png";
// String filename = "iPad_Skin_2696x3305.png";
// String filename = "Standard_mug_2700×1120.png";
// String filename = "travel_mug_2376×2024.png";
// String filename = "water_bottle_3160x2180.png";
// String filename = "premium_tee_2875x3900.png";
// String filename = "Large_Print_tee_2875x3900.png";
// String filename = "Duffle_Bag_4050x7800.png";
// String filename = "Throw_blanket_7632x6480.png";
// String filename = "Cotton_Tote_Bag_2280x2760.png";
String filename = "Clock_2940x2940.png";

void setup()
{
  noSmooth();
  noFill();
  size(9411, 9411); // Large
  // size(4020, 6090); // Womens_Graphic_Dress
  // size(3873, 4814); // Mens_Graphic_Tee
  // size(6310, 6230); // Aline Dress
  // size(4600, 3000); // Laptop_pouch_&_Case
  // size(1756, 2481); // Spiral_notebook_1756×2481
  // size(3502, 2385); // Hardcover_notebook_3502×2385
  // size(7632, 6480); // Throw_blanket_7632x6480
  // size(2280, 2760); // Cotton_Tote_Bag_2280x2760
  // size(2875, 3900); // Large_Print_tee_2875x3900.png
  // size(2376, 2024); // travel_mug_2376×2024
  // size(2940, 2940); // Clock_2940x2940
  // size(3800, 3800); //    testing
  background(#ffffff); // white backgroud RGB see: HEX colour codes at:https://designwebsitehtml.files.wordpress.com/2012/04/hex-codes.gif
}

void draw() {
  drawOutlines();
  save("large_9411a.png");
  exit();
}



void drawOutlines() {

  translate(width /2, height /2); // move to the middle of the screen
  circle(0, 0, scale);  // outer circle
  // circle(0,0,scale / 2); // inner circle at half scale

  // Draw n points around a circle
  float h = 0; // 
  float k = 0;
  float radius = scale /2;
  float degree = 0;
  float numberOfPoints = 32; // note has to be a float
  float circleRadius = scale /4;
  for (int i = 0; i < numberOfPoints; i++) {

    float x = h + circleRadius * cos(radians(degree));
    float y = k - circleRadius * sin(radians(degree));
    ellipse(x, y, radius, radius);
    println(i);
    degree = degree + 360 / numberOfPoints;
  }




  // circles

  strokeWeight(1);
  ellipse(0, 0, scale * 1, scale * 1); // outside ring


  ellipse(0, 0, scale * 0.9955, scale * 0.9955); //
  stroke(0, 0, 0);

  ellipse(0, 0, scale * 0.98, scale * 0.98); //



  ellipse(0, 0, scale * 0.9235, scale * 0.9235); // test
  stroke(0, 0, 0);


  ellipse(0, 0, scale * 0.957, scale * 0.957); //


  ellipse(0, 0, scale * 0.8815, scale * 0.8815); //

  ellipse(0, 0, scale * 0.831, scale * 0.831); //


  ellipse(0, 0, scale * 0.7727, scale * 0.7727); // 

  ellipse(0, 0, scale * 0.707, scale * 0.707); // 

  ellipse(0, 0, scale * 0.6345, scale * 0.6345); // 

  ellipse(0, 0, scale * 0.555, scale * 0.555); // 
  ellipse(0, 0, scale * 0.472, scale * 0.472); // 
  ellipse(0, 0, scale * 0.382, scale * 0.382); // 
  ellipse(0, 0, scale * 0.29, scale * 0.29); // 
  ellipse(0, 0, scale * 0.1945, scale * 0.1945); // 

  fill(255);
  ellipse(0, 0, scale * 0.097, scale * 0.097); //  inner white circle
  noFill();





  // FILL POINTS
  fillPoints(scale * 0.095, 32, 0, 0, 0, 0);
  fillPoints(scale * 0.1, 32, 16, 0, 0, 0);
  fillPoints(scale * 0.15, 32, 0, 0, 0, 0);
  fillPoints(scale * 0.20, 32, 9, 0, 0, 0);

  fillPoints(scale * 0.24, 32, 0, 0, 0, 0);

  fillPoints(scale * 0.31, 32, 16, 0, 0, 0);

  fillPoints(scale * 0.33, 32, 0, 0, 0, 0);

  fillPoints(scale * 0.36, 32, 16, 0, 0, 0);

  fillPoints(scale * 0.39, 32, 0, 0, 0, 0);

  fillPoints(scale * 0.42, 32, 16, 0, 0, 0);

  fillPoints(scale * 0.45, 32, 0, 0, 0, 0);

  fillPoints(scale * 0.465, 32, 16, 0, 0, 0);

  fillPoints(scale * 0.487, 32, 0, 0, 0, 0);

  fillPoints(scale * 0.495, 32, 16, 0, 0, 0);
  fillPoints(scale * 0.498, 32, 0, 0, 0, 0);


  outlinesDrawn = true; // only draw the outlines once
}


// =====================================================================
// I create a class to share variables between the functions...
public class FloodFill1
{
  protected int iw; // Image width
  protected int ih; // Image height
  protected color[] imagePixels;
  protected color backColor; // Color found at given position
  protected color fillColor; // Color to apply
  // Stack is almost deprecated and slow (synchronized).
  protected ArrayList stack = new ArrayList();
  //
  public FloodFill1()
  {
    iw = width;
    ih = height;
    imagePixels = pixels; // Assume loadPixels have been done before
  }
  //
  public FloodFill1(PImage imageToProcess)
  {
    iw = imageToProcess.width;
    ih = imageToProcess.height;
    imagePixels = imageToProcess.pixels; // Assume loadPixels have been done before if sketch image
  }
  //


  public void DoFill(int startX, int startY, color fc)
  {
    // start filling
    fillColor = fc;
    backColor = imagePixels[startX + startY * iw];
    // don't run if fill color is the same as background one
    if (fillColor == backColor)
      return;
    stack.add(new PVector(startX, startY));
    while (stack.size () > 0)
    {
      PVector p = (PVector) stack.remove(stack.size() - 1);
      // Go left
      FillScanLine((int) p.x, (int) p.y, -1);


      // Go right
      FillScanLine((int) p.x + 1, (int) p.y, 1);
    }
  }
  //
  protected void FillScanLine(int x, int y, int dir)
  {
    // compute current index in pixel buffer array
    int idx = x + y * iw;
    boolean inColorRunAbove = false;
    boolean inColorRunBelow = false;

    // fill until boundary in current scanline...
    // checking neighbouring pixel rows
    while (x >= 0 && x < iw && imagePixels[idx] == backColor)
    {
      imagePixels[idx] = fillColor;


      if (y > 0) // Not on top line
      {
        if (imagePixels[idx - iw] == backColor)
        {
          if (!inColorRunAbove)
          {
            // The above pixel needs to be flooded too, we memorize the fact.
            // Only once per run of pixels of back color (hence the inColorRunAbove test)
            stack.add(new PVector(x, y-1));
            inColorRunAbove = true;
          }
        } else // End of color run (or none)
        {
          inColorRunAbove = false;
        }
      }
      if (y < ih - 1) // Not on bottom line
      {
        if (imagePixels[idx + iw] == backColor)
        {
          if (!inColorRunBelow)
          {
            // Idem with pixel below, remember to process there
            stack.add(new PVector(x, y + 1));
            inColorRunBelow = true;
          }
        } else // End of color run (or none)
        {
          inColorRunBelow = false;
        }
      }
      // Continue in given direction
      x += dir;
      idx += dir;
    } //
  } // func
} // class
// ---------------------------------------------------------- 


void fillPoints(float fillScale, float numberOfPoints, float rotate, int r, int g, int b) 

{



  // Draw n points around a circle
  float h = width / 2;
  float k = height / 2;
  float degree = 0;

  float circleRadius = fillScale;
  for (int i = 0; i < numberOfPoints; i++) {

    float x = h + circleRadius * cos(radians(degree + rotate));
    float y = k - circleRadius * sin(radians(degree + rotate));


    loadPixels();


    myFloodFill = new FloodFill1();
    myFloodFill.DoFill(int(x), int(y), color(r, g, b));  // fill colour



    updatePixels();





    degree = degree + 360 / numberOfPoints;
  }
}
