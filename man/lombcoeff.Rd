\name{lombcoeff}
\alias{lombcoeff}
\title{Computes a Coefficient of the Lomb Periodogram}
\description{The function \code{lombcoeff} computes a coefficient
of the Lomb periodogram.
}
\usage{
lombcoeff(X, Y, o)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{ \code{X} is the sequence of abscissa values. }
  \item{Y}{ \code{Y} is the sequence of ordinate values. }
  \item{o}{ \code{o} is the circular frequency for which the coefficient is to be computed. }
}
\value{ \code{lombcoeff} returns a spectral coefficient of the Lomb periodogram. }
\references{ http://basic-research.zkm.de }
\author{ Adolf Mathias <dolfi@zkm.de> }
\note{}

\seealso{ \code{\link{nureal}}}
\examples{data(deut);lombcoeff(deut[[2]],deut[[4]],1e-4);

## The function is currently defined as
function(X,Y,o)
{  tau <- atan2(sum(sin(2*o*X)), sum(cos(2*o*X))) / 2

   (sum(Y*cos(o*X-tau))^2/sum(cos(o*X-tau)^2)+
    sum(Y*sin(o*X-tau))^2/sum(sin(o*X-tau)^2))  / (2*var(Y))
  }
}
\keyword{ts}
