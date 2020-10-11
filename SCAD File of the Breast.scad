
measure_choice="width";
value=150;
flat_or_rounded="flat";
b=(measure_choice=="width" ? value:value*4/3);
w=b*2/3;
$fn=100/1;
module breast(){
    difference(){
        hull(){
            sphere(w/1.75);
            translate([w/5,w/2,-w/8])sphere(w/3);
            translate([w/5],-w/2,-w/8)sphere(w/3);
            translate([0,0,w/2])sphere(w/5);
        }
        if (flat_or_rounded=="flat"){
            translate([w,0,0])cube([w*2,w*2,w*2],center=true);
            
            }
            else{
                translate([w*5,0,0])sphere(w*5);
                }
            }
        }
        rotate([0,90,0])breast();
        