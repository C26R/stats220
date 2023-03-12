library(magick)

# Storing frames as objects and adding text
frame_one <- image_read("animation_frames/frame_1.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#FF0000",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#FF0000",
                 font = "Impact",
                 gravity = "south",
                 size = 80)
frame_two <- image_read("animation_frames/frame_2.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#FFA500",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#FFA500",
                 font = "Impact",
                 gravity = "south",
                 size = 80)
frame_three <- image_read("animation_frames/frame_3.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#FFFF00",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#FFFF00",
                 font = "Impact",
                 gravity = "south",
                 size = 80)
frame_four <- image_read("animation_frames/frame_4.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#00FF00",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#00FF00",
                 font = "Impact",
                 gravity = "south",
                 size = 80)
frame_five <- image_read("animation_frames/frame_5.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#023020",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#023020",
                 font = "Impact",
                 gravity = "south",
                 size = 80)
frame_six <- image_read("animation_frames/frame_6.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#ADD8E6",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#ADD8E6",
                 font = "Impact",
                 gravity = "south",
                 size = 80)
frame_seven <- image_read("animation_frames/frame_7.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#00008B",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#00008B",
                 font = "Impact",
                 gravity = "south",
                 size = 80)
frame_eight <- image_read("animation_frames/frame_8.jpg") %>%
  image_annotate(text = "DANCING",
                 color = "#A020F0",
                 font = "Impact",
                 gravity = "north",
                 size = 80) %>%
  image_annotate(text = "BANANA",
                 color = "#A020F0",
                 font = "Impact",
                 gravity = "south",
                 size = 80)

# Putting frames into a vector
frames <- c(frame_one, frame_two, frame_three, frame_four, frame_five,
            frame_six, frame_seven, frame_eight)

# Creating the gif
animation <- image_animate(frames, fps = 10)

# Display and save the gif
animation %>%
  image_write("my_animation.gif")
