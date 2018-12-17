library("tidyverse")
library("graphclassmate")
set.seed(20181216)

speed_ski <- read_csv("data/d1_tutorial_stripplot-speedski.csv")

ggplot(data = speed_ski, aes(x = speed, y = event, color = sex, fill = sex)) +
	geom_jitter(shape = 21, width = 0, height = 0.15, alpha = 0.7, size = 2) +
	labs(x = "Speed (km/hr)", y = "",
		title = "2011 World speed-skiing championship") +
	theme_graphclass() +
	scale_color_manual(values = c(rcb("dark_BG"), rcb("dark_Br"))) +
	scale_fill_manual(values = c(rcb("dark_BG"), rcb("light_Br"))) +
	theme(legend.position = "none") +
	geom_text(aes(x = 200, y = 2.7, label = "women"), color = rcb("mid_BG")) +
	geom_text(aes(x = 210, y = 2.7, label = "men"), color = rcb("mid_Br"))

# this first one is sized for slides
ggsave(filename = "d1-01-stripchart-speed-ski.png",
			 path     = "figures",
			 device   = "png",
			 width    = 5,
			 height   = 2.5,
			 units    = "in",
			 dpi      = 600
)

# this one is sized for the cm webpage
ggsave(filename = "d1-02-stripchart-speed-ski.png",
			 path     = "figures",
			 device   = "png",
			 width    = 8,
			 height   = 2.5,
			 units    = "in",
			 dpi      = 600
)
