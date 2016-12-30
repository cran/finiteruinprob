\encoding{UTF-8}

\name{finiteruinprob-package}
\alias{finiteruinprob-package}
\alias{finiteruinprob}

\docType{package}

\title{Computation of the Probability of Ruin Within a Finite Time Horizon}

\description{
In the \enc{Cramér}{Cramer}--Lundberg risk process perturbed by a Wiener
process, this packages provides approximations to the probability of ruin
within a finite time horizon.  Currently, there are three methods implemented:
The first one uses saddlepoint approximation (two variants are provided), the
second one uses importance sampling and the third one is based on the
simulation of a dual process.  This last method is not very accurate and only
given here for completeness.
}

%\details{
%}

\author{Benjamin Baumgartner <benjamin@baumgrt.com>}

\references{
Gatto, R. and Baumgartner, B. (2016)  \emph{Saddlepoint
    approximations to the probability of ruin in finite time for the compound
    Poisson risk process perturbed by diffusion}. Methodology and Computing in
    Applied Probability \bold{18}(1), pp. 217\if{latex}{-}-235.
}

%\keyword{ package }

% vim: tw=78
