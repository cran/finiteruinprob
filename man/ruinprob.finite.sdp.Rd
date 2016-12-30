\name{ruinprob.finite.sdp}
\alias{ruinprob.finite.sdp}

\title{Approximation of the probability of ruin within a finite time horizon using saddlepoint methods}

\description{
    This function calculates an approximation to the probability of ruin within a finite time
    horizon for a compound Poisson risk process that is perturbed by a Wiener process.  The
    approximation makes use of saddlepoint methods.
}

\usage{
    ruinprob.finite.sdp(mgf, mgf.d1, mgf.d2, premium, freq, variance,
                        endpoint, verbose = FALSE)
}

\arguments{
  \item{mgf}{The moment-generating function of the individual claim amounts}
  \item{mgf.d1}{The first derivative of \code{mgf}}
  \item{mgf.d2}{The second derivative of \code{mgf}}
  \item{premium}{The premium force}
  \item{freq}{Frequency of the claims}
  \item{variance}{The variance of the Wiener process by which the risk process is perturbed}
  \item{endpoint}{The upper endpoint of \code{mgf}, i.e. the position of a pole}
  \item{verbose}{Return additional diagnostic information as an attribute of the output}
}

\details{
    If neither or only the first derivative of \code{mgf} is provided,
    a numerical approximation to the missing derivative(s) will be used
    instead (see \link[numDeriv]{grad} and \link[numDeriv]{hessian}).

    The argument \code{endpoint} is the (smallest) positive pole of
    \code{mgf}. Omitting this information will issue a warning and the value
    1.0e+6 will be used instead, possibly yielding unexpected and unreliable
    output or leading to further errors.
}

\value{
    A function \code{psi(x, t)} taking as inputs the initial capital \code{x}
    and the time horizon \code{t}. This function returns a list, the first
    element of which contains a Lugannani--Rice-type approximation, the second
    one contains a Skovgaard-type approximation.
}

\references{
Gatto, R. and Baumgartner, B. (2016)  \emph{Saddlepoint
    approximations to the probability of ruin in finite time for the compound
    Poisson risk process perturbed by diffusion}. Methodology and Computing in
    Applied Probability \bold{18}(1), pp. 217\if{latex}{-}-235.
}

%\note{
%}

%\examples{
%}

%\keyword{ ~kwd1 }
