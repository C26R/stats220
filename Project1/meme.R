library(magick)

# Reading images as individual panels
panel_one <- image_read("meme_panels/spongebob_1.jpg")
panel_three <- image_read("meme_panels/spongebob_3.jpg")
panel_four <- image_read("meme_panels/spongebob_4.jpg")

# Creating blank panel with just text
panel_two <- image_blank(width = 620,
                         height = 736,
                         color = "#FFFFFF") %>%
  image_annotate(text = "Stats 220\nis fun",
                 color = "#000000",
                 size = 80,
                 font = "Impact",
                 gravity = "center")

# Merging panels into their respective rows
first_row <- c(panel_one, panel_two) %>%
  image_append()
second_row <- c(panel_three, panel_four) %>%
  image_append()

# Stacking rows together
meme <- c(first_row, second_row) %>%
  image_append(stack = TRUE)

meme %>%
  image_write("my_meme.png")
