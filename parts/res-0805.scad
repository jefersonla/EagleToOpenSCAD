module res_0805(value = "0805"){
    component_width   = 1.25;
    surface_length    = 1.3;
    
    text_len = len(value);
    y = 1.04 - (text_len * 0.15);
    
    union(){
        translate([0.87, y, 0.55])
            color("White")
                rotate(90)
                    scale([0.04,0.05,0.01])
                        text(value);
        
        color("DarkGray", 1)
            translate([-0.001, 0.05, 0.06])
                cube([component_width + 0.002, 2, 0.48], 0);
        
        color("Gray", 1)
            difference(){                        
                union(){
                    translate([0, 1.7,0])
                        cube([component_width, 0.40,0.6],0);
                
                    cube([component_width, 0.4,0.6],0);
                }
                
                translate([-0.1, 0.05, 0.06])
                    cube([2, 2, 0.48], 0);  
            }
            
        color("Black", 1){
            translate([0, 0.4, 0.05])
                cube([component_width, surface_length,0.01],0);
           
            translate([0, 0.4, 0.54])
                cube([component_width, surface_length,0.01],0);
        };
    }
}

res_0805("0");