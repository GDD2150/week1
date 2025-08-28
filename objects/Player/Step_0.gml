    // Define a speed variable (e.g., in the Create event)
    // Create Event:
    
	var playerspeed = 10;
	
	

    // Step Event:
    if (keyboard_check(vk_left)) // Check if left arrow key is pressed
    {
        x -= playerspeed; // Move left
		show_debug_message("left")
    }
    if (keyboard_check(vk_right)) // Check if right arrow key is pressed
    {
		x += playerspeed; // Move right
		show_debug_message("right")
    }
    if (keyboard_check(vk_up)) // Check if up arrow key is pressed
    {
		y -= playerspeed; // Move up (Y-axis is inverted in GameMaker)
    }
    if (keyboard_check(vk_down)) // Check if down arrow key is pressed
    {
		y += playerspeed;
    }