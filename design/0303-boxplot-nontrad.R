library("tidyverse")
library("graphclassmate")

nontrad <- readRDS("data/tu033-boxplot-nontrad.rds")

nontrad2 <- nontrad %>%
	group_by(sex_path) %>%
	mutate(outlier = enrolled < median(enrolled) - IQR(enrolled) * 1.5) %>%
	ungroup()

# for the cm web page
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

ggsave(filename = "tu033-boxplot-nontrad.png",
			 path     = "cm/images",
			 width    = 8,
			 height   = 2.5,
			 units    = "in",
			 dpi      = 300
)

# for the slides
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

ggsave(filename = "tu033-boxplot-nontrad-slides.png",
			 path     = "slides/images",
			 width    = 5,
			 height   = 2.5,
			 units    = "in",
			 dpi      = 600
)
