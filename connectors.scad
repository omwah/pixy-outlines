// Pixy Connectors
// As they would be located on the back as seen from the front
//
// Seems strange but useful for lining them up with another board

include <board_measures.scad>

// To make it easy to plot connectors over board outline
use <pcb_outline.scad>

ten_pin_width = 8.89;
ten_pin_height = 20.3;

// Easier to measure other side of connector from pcb edge
ten_pin_x_offset = 13.48 - ten_pin_width;

// Align with top of hole
ten_pin_y_offset = total_height - main_hole_y_offset + hole_diameter / 2 - ten_pin_height;

six_pin_width = 5;
six_pin_height = 8.1;
six_pin_x_offset = 14.3 - six_pin_width;
six_pin_y_offset = 14.75 - six_pin_height + stand_height;

power_width = 5.16;
power_height = 5.92;
power_x_offset = 14.08 - power_width;
power_y_offset = stand_height;

switch_width = 7.2;
switch_height = 6.92;
switch_x_offset = total_width - 16.94;
switch_y_offset = total_height - switch_height;

switch_button_width = 3.35;
switch_button_height = 8.15 - 4;

switch_button_x_offset = switch_x_offset + switch_width / 2 - switch_button_width / 2;
switch_button_y_offset = total_height;

usb_width = 3.87;
usb_height = 7.76;
usb_x_offset = total_width - 8.84;
usb_y_offset = total_height - 15.19; 

module ten_pin() {
    translate([ten_pin_x_offset, ten_pin_y_offset])
        square([ten_pin_width, ten_pin_height]);
}

module six_pin() {
    translate([six_pin_x_offset, six_pin_y_offset])
        square([six_pin_width, six_pin_height]);
}

module power() {
    translate([power_x_offset, power_y_offset])
        square([power_width, power_height]);
}

module switch() {
    translate([switch_x_offset, switch_y_offset])
        square([switch_width, switch_height]);
    translate([switch_button_x_offset, switch_button_y_offset])
        square([switch_button_width, switch_button_height]);
}

module usb() {
    translate([usb_x_offset, usb_y_offset])
        square([usb_width, usb_height]);
}

module six_pin() {
    translate([six_pin_x_offset, six_pin_y_offset])
        square([six_pin_width, six_pin_height]);
}

module connectors() {
    translate([-total_width / 2, -total_height / 2]) {
        color("black") {
            ten_pin();
            six_pin();
            power();
            switch();
            usb();
        }
    }
}

//pcb_outline();
connectors();
