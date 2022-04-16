$fn=50;
width=35;
board_thickness=3;
tab_length=20;
body_length=20;
total_thickness=9;

difference(){
  minkowski(){
    translate([0,0,-6])
    cube([width-6, tab_length+body_length-6,total_thickness]);
      sphere(r=3);
  }
  translate([-3,-3,-3])
  cube([width, tab_length, board_thickness]);
  
  translate([-3,-3,-9])
  cube([width, tab_length+body_length, 6]);
  
  translate([(width/2)-3,(body_length/2)-3+tab_length,0]) {
    translate([0,0,+4]){cylinder(h=2,r=4.5);}
    translate([0,0,-1]){cylinder(h=5,r1=2,r2=4.5);}
    translate([0,0,-6]){cylinder(h=12,r=2);}
  }
}



