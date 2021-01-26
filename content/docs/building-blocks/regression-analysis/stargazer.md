
## Stargazer

https://www.youtube.com/watch?v=Sn0pD-BIz6M


- Shows models next to each other
- `*`, `**`, `***` to indicate signifiance
- Standard error below coefficient
- Model statistics: #obsevations, (Adj.) R-Squared, Residuals, F-Statistic.


```
mod1 <- lm(y1 ~ x1, data)
mod2 <- lm(y2 ~ x2, data)
mod3 <- lm(y3 ~ x3, data)

stargazer(mod1, mod2, mod3,
  type="html",
  out="output.htm")
```
*Comments*
* `type="html"` -> Word
  - HTML file can be copy-pasted into Word and will be editable
* `type="tex"` -> LaTeX


Make it publication ready


```
stargazer(mod1, mod2, mod3,
  title="Some title" # gives your table a title
  dep.var.caption = "DV: Secondary Completion Rate, Female age 15-19", # wat boven alle tabellen staat
  covariate.labels = c("Subnational Tax Authority", "State/Provincial Elections", "GDP Per Capita (log)", "Democracy", "Urbanization") # changes the IV labels (de variabelen aan de linkerkant)
  notes.label = "Significance levels", # label the note at the bottom of the table
  type="html", # type of format you would like
  out="output.html") # filename and location
```

*Comments*
* Om het overzicht te behouden kun je ook aparte variabelen `coefs` aanmaken `c("Subnational Tax Authority", "State/Provincial Elections", "GDP Per Capita (log)", "Democracy", "Urbanization")` en die vervolgens toewijzen binnen de functie
* Je kunt ook 2 verschillende dependent variables side by side vergelijken (bijv. model 1, 2, 3 voor DV1 en model 4, 5, en 6 voor DV2)


https://www.youtube.com/watch?v=yw7XOldGbJY&list=PLxSt3N9_h1VX2715XchFvVbLPk3CSEm2v&index=5


```
# alleen de coefficienten opslaan zonder model statistics
simple_poly1 <- summary(reg_poly1)$coefficients

simple_poly2 <- summary(reg_poly2)$coefficients

# create dataframe for each model
poly_df1 = data.frame(var = rownames(s_poly1), # independent variables,
coef = s_poly1[,1] # coefficient estimates
se = s_poly[,2] # standard errors
pvalue = s_poly[,4],
model = "poly") # model name; useful when we bind with other models

# dat ook voor #poly_df2 doen

df <- rbind(poly_df1, poly_df2)

df <- df %>%
  mutate(lb = (coef - 1.96*se),
         ub = (coef + 1.96*se))

# RDS is like a pickle in Python
saveRDS(df, file="ABC.rds")

)

```

https://www.youtube.com/watch?v=l1lVtEyxnMs
4:09 stargazer

* makes it look a lot nicer
* easy option to read data out to a file (so that you can copy it into Word)
* You need to feed it a dataframe (not a variable)


Summary statistics table
* N, mean, std.dev, min, max

```
wage1 <- read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

stargazer(subset(wage1, select=c(wage, experience, tenture)), type='html', out="summary_statistics.html"

```
