library("tidyverse")
library("gapminder")
library("graphclassmate")

unique(gapminder$year)

my_gapminder <- gapminder %>%
	filter(year == max(year)) %>%
	glimpse()

my_gapminder %>%
	count(continent)

my_gapminder <- my_gapminder %>%
	filter(continent != "Oceania") %>%
	glimpse()

my_gapminder <- my_gapminder %>%
	mutate(continent = fct_reorder(continent, lifeExp)) %>%
	glimpse()





ggplot(data = my_gapminder) +
	geom_point(mapping  = aes(x = gdpPercap / 1000, y = lifeExp, color = continent),
						 size     = 1.5) +
	geom_smooth(mapping = aes(x = gdpPercap / 1000, y = lifeExp),
							method  = "loess",
							se      = FALSE) +
	labs(x = "GDP per capita (thousands of dollars)",
			 y = "Life expectancy (years)",
			 title = "Life expectancy by country in 2007",
			 caption = "Source: Gapminder") +
	theme_graphclass()




ggplot(data    = my_gapminder,
			 mapping = aes(x = gdpPercap / 1000, y = lifeExp)) +
	geom_point(mapping = aes(color = continent),
						 size    = 1.5) +
	geom_smooth(method = "loess",
							se     = FALSE) +
	labs(x = "GDP per capita (thousands of dollars)",
			 y = "Life expectancy (years)",
			 title = "Life expectancy by country in 2007",
			 caption = "Source: Gapminder") +
	theme_graphclass()





ggplot(data    = my_gapminder,
			 mapping = aes(x = gdpPercap / 1000, y = lifeExp)) +
	geom_point(data     = select(my_gapminder, -continent),
						 size     = 1.75,
						 color    = rcb("pale_BG")) +
	geom_smooth(data    = select(my_gapminder, -continent),
							method  = "loess",
							se      = FALSE,
							size    = 0.7,
							color   = rcb("mid_BG")) +
	geom_point(mapping  = aes(color = continent),
						 size     = 1.75,
						 color    = rcb("dark_BG")) +
	facet_wrap(vars(continent),
						 ncol     = 1,
						 as.table = FALSE) +
	labs(x = "GDP per capita (thousands of dollars)",
			 y = "Life expectancy (years)",
			 title = "Life expectancy by country in 2007",
			 caption = "Source: Gapminder") +
	theme_graphclass() +
	theme(legend.position = "none")



