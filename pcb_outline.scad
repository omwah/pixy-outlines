// PCB Outline of the Pixy CMUCam 5
// As seen from the camera side 

include <board_measures.scad>

$fn = 100;

module board_outline() {
    union() {
        translate([main_offset_x, main_offset_y])
            square([main_width, main_height]);
        translate([stand_offset_x, stand_offset_y])
            square([stand_width, stand_height]);
    }
}

module main_holes() {
    translate([main_hole_x_offset, total_height - main_hole_y_offset])
        circle(r=hole_radius);
        circle(r=hole_radius);
    translate([total_width - main_hole_x_offset, total_height - main_hole_y_offset])
        circle(r=hole_radius);
    translate([main_hole_x_offset, main_bl_hole_y])
        circle(r=hole_radius);
}

module stand_holes() {
    translate([stand_hole_x_offset, stand_hole_y_offset])
        circle(r=hole_radius);
    translate([total_width - stand_hole_x_offset, stand_hole_y_offset])
        circle(r=hole_radius);
}

module pcb_outline() {
    translate([-total_width / 2, -total_height / 2])
        difference() {
            board_outline();
            main_holes();
            stand_holes();
        }
}

pcb_outline();
