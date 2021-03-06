% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PPtree_split.R
\name{PPtree_split}
\alias{PPtree_split}
\title{Projection pursuit classification tree with random variable selection in each split}
\usage{
PPtree_split(form, data, PPmethod='LDA', weight=TRUE, 
size.p=0.9, r=1, lambda=0.1, energy=0, maxiter=50000, ...)
}
\arguments{
\item{form}{a formula describing the model to be fitted, with the form \code{response~predictors}}

\item{data}{Data frame with the complete data set.}

\item{PPmethod}{index to use for projection pursuit: 'LDA', 'PDA', 'Lr', 'GINI', and 'ENTROPY'}

\item{weight}{flag in LDA, PDA and Lr index}

\item{size.p}{proportion of variables randomly sampled in each split.}

\item{r}{is a positive integer value, it is the power in Lr index. The default value is 1.}

\item{lambda}{penalty parameter in PDA index and is between 0 to 1 . If \code{lambda = 0}, no penalty parameter is added and the PDA index is the same as LDA index. If \code{lambda = 1} all variables are treated as uncorrelated. The default value is \code{lambda = 0.1}.}

\item{energy}{optimization parameter for projection pursuit. Is the parameter for the probability to take a new projection. The smaller \code{energy} the higher the probability to take a new projection, by default is 0.}

\item{maxiter}{number of maximum iterations.}

\item{...}{arguments to be passed to methods}
}
\value{
An object of class \code{PPtreeclass} with components
\item{Tree.Struct}{Tree structure of projection pursuit classification tree}
\item{projbest.node}{1-dim optimal projections of each split node}
\item{splitCutoff.node}{cutoff values of each split node}
\item{origclass}{original class} 
\item{origdata}{original data}
}
\description{
Find tree structure using various projection pursuit indices of classification in each split.
}
\examples{
#leukemia data set
Tree.leukemia <- PPtree_split('Type~.', data = leukemia, 
 PPmethod = "PDA", size.p = 0.9)
Tree.leukemia
#crab data set
Tree.crab <- PPtree_split("Type~.", data = crab, 
 PPmethod = "LDA", size.p = 0.9)
Tree.crab
}
\references{
Lee, YD, Cook, D., Park JW, and Lee, EK (2013) 
PPtree: Projection pursuit classification tree, 
Electronic Journal of Statistics, 7:1369-1386.
}
\keyword{tree}
