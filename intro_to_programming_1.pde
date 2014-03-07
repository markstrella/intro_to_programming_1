// Mark Strella

Planet earth;
Planet sun;

ArrayList<Meteor> mets;

void setup() {
  size(600, 600);
  frameRate(25);
  background(0);
  earth = new Planet();
  earth.name = "Earth";
  earth.myColor = color(0, 0, 255);
  earth.dx = earth.dy = -5;
  earth.loc[0] = 58;

  sun = new Planet();
  sun.name = "Sun";
  sun.mySize = 150;
  sun.dx = sun.dy = 5;

  mets = new ArrayList<Meteor>();
}

void draw() {
  background(0);

  sun.drawPlanet();
  earth.drawPlanet();

  for ( Meteor met : mets) {
    met.drawPlanet();
  }
}

void mouseClicked() {
  mets.add( new Meteor() );
}

void keyPressed() {
  if ( !mets.isEmpty() ) {
    mets.remove(0);
  }
}

