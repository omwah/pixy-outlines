// Measurements from Pixy Drawing
// http://www.cmucam.org/attachments/928/pixy_mechanicals.PDF
//
// Measurements in inches

// Convert inches to mm
function in_to_mm(i) = i * 25.4;

main_width = in_to_mm(2.12);
main_height = in_to_mm(2 - .25);

main_offset_x = 0;
main_offset_y = in_to_mm(.25);

stand_width = in_to_mm(2.12 - .5 * 2);
stand_height = in_to_mm(.25);

stand_offset_x = in_to_mm(.5);
stand_offset_y = 0;

total_width = main_width;
total_height = in_to_mm(2);

// Define holes
hole_diameter = in_to_mm(0.12);
hole_radius = hole_diameter / 2;

main_hole_x_offset = in_to_mm(.125);
main_hole_y_offset = in_to_mm(.125);

// Bottom left hole
main_bl_hole_y = in_to_mm(.25 + .32);

// Offset from x = 0
stand_hole_x_offset = in_to_mm(.65);
stand_hole_y_offset = in_to_mm(.125);
