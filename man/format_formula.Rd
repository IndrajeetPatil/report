% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_algorithm.R, R/format_formula.R,
%   R/format_model.R
\name{format_algorithm}
\alias{format_algorithm}
\alias{format_formula}
\alias{format_model}
\title{Convenient formatting of text components}
\usage{
format_algorithm(x)

format_formula(x, what = "conditional")

format_model(x)
}
\arguments{
\item{x}{The R object that you want to report (see list of of supported objects above).}

\item{what}{The name of the item returned by \code{insight::find_formula}.}
}
\value{
A character string.
}
\description{
Convenient formatting of text components
}
\examples{
model <- lm(Sepal.Length ~ Species, data = iris)
format_algorithm(model)

if (require("lme4")) {
  model <- lme4::lmer(Sepal.Length ~ Sepal.Width + (1 | Species), data = iris)
  format_algorithm(model)
}
model <- lm(Sepal.Length ~ Species, data = iris)
format_formula(model)

if (require("lme4")) {
  model <- lme4::lmer(Sepal.Length ~ Sepal.Width + (1 | Species), data = iris)
  format_formula(model)
  format_formula(model, "random")
}
model <- lm(Sepal.Length ~ Species, data = iris)
format_model(model)

if (require("lme4")) {
  model <- lme4::lmer(Sepal.Length ~ Sepal.Width + (1 | Species), data = iris)
  format_model(model)
}
}
