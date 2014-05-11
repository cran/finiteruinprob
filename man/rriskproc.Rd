\name{rriskproc}
\alias{rriskproc}

\title{Simulation of a risk process that is perturbed by a Wiener process}

\description{
    This function simulates paths of a compound Poisson risk process that is
    perturbed by a Wiener process.  Multiple paths can be simulated
    simultaneously.
}

\usage{
rriskproc(m = 1001, window = c(0, 1), num = 1,
          sigma = 1, freq = 1, drift = 0, jumpdist, ...)
}

\arguments{
  \item{m}{Number of sample points for each path}
  \item{window}{Beginning and end of the time window}
  \item{num}{Number of paths to be simulated}
  \item{sigma}{Volatility of the Wiener process}
  \item{freq}{Frequency of the claims}
  \item{drift}{Drift (premium intensity) of the process}
  \item{jumpdist}{A function that returns realizations of the claim
      distribution}
  \item{\dots}{Additional arguments for \code{jumpdist}}
}

\details{
    Possible choices for \code{jumpdist} include \code{\link[stats]{rexp}},
    \code{\link[stats]{rgamma}} and \code{\link[stats]{rlnorm}}.

    It is assumed that the function specified for \code{jumpdist} interprets
    its first argument as the vector length of its return value, i. e. the
    number of simultaneously generated random variables.

    The path realizations of the Wiener process are generated using the
    circulant embedding method (see references).
}

\value{
    A \link[=ts]{time-series object}/\link[stats:ts]{time-series object}
    containing the simulated sample path(s).
}

\references{
Dietrich, C. and Newsam, G. (1997) \emph{Fast and Exact Simulation of
    Stationary Gaussian Processes through Circulant Embedding of the
    Covariance Matrix}.  SIAM Journal on Scientific Computing \bold{18}(4),
    pp. 1088\if{latex}{-}-1107
}

%\author{
%%  ~~who you are~~
%}

%\note{
%%  ~~further notes~~
%}

\seealso{
\code{\link[sdprisk]{rhypoexp}}
}

\examples{
    require(sdprisk)

    rriskproc(m        = 1001,
              window   = c(0, 5),
              num      = 1,
              sigma    = sqrt(0.4),
              freq     = 1,
              drift    = 2,
              jumpdist = rhypoexp,
              rate     = c(1, 10))

    # The same can be achieved using
    #   jumpdist = function(n) rexp(n, 1) + rexp(n, 10)

    rriskproc(window = c(0, 10),
              jumpdist = function(n) {
                  rexp(n, 1) + rexp(n, 10)
              })

}

\keyword{ts}
\keyword{datagen}
\keyword{distribution}
\keyword{models}
