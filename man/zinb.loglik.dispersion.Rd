% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zinb_fit.R
\name{zinb.loglik.dispersion}
\alias{zinb.loglik.dispersion}
\title{Log-likelihood of the zero-inflated negative binomial model, for a fixed
dispersion parameter}
\usage{
zinb.loglik.dispersion(zeta, Y, mu, logitPi)
}
\arguments{
\item{zeta}{a scalar, the log of the inverse dispersion parameters of the
negative binomial model}

\item{Y}{a vector of counts}

\item{mu}{a vector of mean parameters of the negative binomial}

\item{logitPi}{a vector of logit of the probabilities of the zero component}
}
\value{
the log-likelihood of the model.
}
\description{
Given a unique dispersion parameter and a set of counts, together with a
corresponding set of mean parameters and probabilities of zero components,
this function computes the sum of the log-probabilities of the counts under
the ZINB model. The dispersion parameter is provided to the function through
zeta = log(theta), where theta is sometimes called the inverse dispersion
parameter. The probabilities of the zero components are provided through
their logit, in order to better numerical stability.
}
\examples{
mu <- seq(10,50,length.out=10)
logitPi <- rnorm(10)
zeta <- rnorm(10)
Y <- rnbinom(n=10, size=exp(zeta), mu=mu)
zinb.loglik.dispersion(zeta, Y, mu, logitPi)
}
\seealso{
\code{\link{zinb.loglik}}.
}
