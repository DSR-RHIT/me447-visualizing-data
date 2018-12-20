library("tidyverse")
library("graphclassmate")



nontraditional <- readRDS("data/d1_tutorial_boxplot-nontraditional.rds")

nontrad2 <- nontraditional %>%
	group_by(sex_path) %>%
	mutate(outlier = enrolled < median(enrolled) - IQR(enrolled) * 1.5) %>%
	ungroup()

ggplot(nontrad2, aes(y = enrolled, x = sex_path, color = path, fill = path))+
	geom_boxplot(width = 0.45, alpha = 0.75, outlier.shape = NA) +
	coord_flip() +
	labs(y = "Years enrolled", x = "",
			 title = "Graduating students") +
	theme_graphclass() +
	scale_color_manual(values = c(rcb("dark_BG"), rcb("dark_Br"))) +
	scale_fill_manual(values = c(rcb("light_BG"), rcb("light_Br"))) +
	guides(fill = guide_legend(title = NULL, reverse = TRUE, keyheight = 2),
				 color = "none") +
	geom_jitter(data = function(x)
		dplyr::filter_(x, ~outlier),
		width = 0.05, height = 0.2, alpha = 0.25, shape = 21)

# this one is sized for the cm webpage
ggsave(filename = "d1-04-boxplot-nontraditional.png",
			 path     = "figures",
			 device   = "png",
			 width    = 8,
			 height   = 2.5,
			 units    = "in",
			 dpi      = 600
)


ggplot(nontrad2, aes(y = enrolled, x = sex_path, color = path, fill = path))+
	geom_boxplot(width = 0.45, alpha = 0.75, outlier.shape = NA) +
	coord_flip() +
	labs(y = "Years enrolled", x = "",
			 title = "Graduating students") +
	theme_graphclass() +
	scale_color_manual(values = c(rcb("dark_BG"), rcb("dark_Br"))) +
	scale_fill_manual(values = c(rcb("light_BG"), rcb("light_Br"))) +
	guides(fill = "none", color = "none") +
	geom_jitter(data = function(x)
		dplyr::filter_(x, ~outlier),
		width = 0.05, height = 0.2, alpha = 0.25, shape = 21)




# this first one is sized for slides
ggsave(filename = "d1-03-boxplot-nontraditional.png",
			 path     = "figures",
			 device   = "png",
			 width    = 5,
			 height   = 2.5,
			 units    = "in",
			 dpi      = 600
)
