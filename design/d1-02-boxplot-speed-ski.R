library("tidyverse")
library("graphclassmate")

set.seed(20181211)

speed_ski <- speed_ski %>%
	mutate(event = fct_reorder(event, speed))

ggplot(speed_ski, aes(x = event, y = speed, color = sex, fill = sex)) +
	geom_boxplot(size = 0.4, width = 0.4) +
	coord_flip() +
	scale_color_manual(values = c(rcb("mid_BG"), rcb("mid_Br"))) +
	scale_fill_manual(values = c(rcb("pale_BG"), rcb("pale_Br"))) +
	labs(x = "", y = "Speed (km/hr)",
			 title = "2011 World speed-skiing championship") +
 	theme_graphclass() +
	theme(legend.position = "none") +
 	geom_text(aes(y = 202, x = 2.6, label = "women"), color = rcb("mid_BG")) +
 	geom_text(aes(y = 202, x = 3.4, label = "men"), color = rcb("mid_Br"))

ggsave(filename = "d1-02-boxplot-speed-ski.png",
			 path   = "slides",
			 device = "png",
			 width  = 5,
			 height = 2.5,
			 units  = "in",
			 dpi    = 600
)
