% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zinb_fit.R
\name{zinbInitialize}
\alias{zinbInitialize}
\title{Initialize the parameters of a ZINB regression model}
\usage{
zinbInitialize(
  m,
  Y,
  nb.repeat = 2,
  it.max = 100,
  BPPARAM = BiocParallel::bpparam()
)
}
\arguments{
\item{m}{The model of class ZinbModel}

\item{Y}{The matrix of counts.}

\item{nb.repeat}{Number of iterations for the estimation of beta_mu and
gamma_mu.}

\item{it.max}{Maximum number of iterations in softImpute.}

\item{BPPARAM}{object of class \code{bpparamClass} that specifies the
back-end to be used for computations. See
\code{\link[BiocParallel]{bpparam}} for details.}
}
\value{
An object of class ZinbModel similar to the one given as argument
  with modified parameters alpha_mu, alpha_pi, beta_mu, beta_pi, gamma_mu,
  gamma_pi, W.
}
\description{
The initialization performs quick optimization of the parameters with several
simplifying assumptions compared to the true model: non-zero counts are
models as log-Gaussian, zeros are modeled as dropouts. The dispersion
parameter is not modified.
}
\examples{
Y <- matrix(rpois(60, lambda=2), 6, 10)
bio <- gl(2, 3)
time <- rnorm(6)
gc <- rnorm(10)
m <- zinbModel(Y, X=model.matrix(~bio + time), V=model.matrix(~gc),
             which_X_pi=1L, which_V_mu=1L, K=1)
m <- zinbInitialize(m, Y)
}
