% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{top_genes_cluster_tissues}
\alias{top_genes_cluster_tissues}
\title{Cluster tissues}
\usage{
top_genes_cluster_tissues(gen, n_top = 100, method = "mfa", q = 2, g = 2)
}
\arguments{
\item{gen}{An EMMIXgene object produced by select_genes().}

\item{n_top}{number of top genes (as ranked by likelihood) to be selected}

\item{method}{Method for separating tissue classes. Can be either 't' for a 
univariate mixture of t-distributions on gene cluster means, 
or 'mfa' for a mixture of factor analysers.}

\item{q}{number of factors if using mfa}

\item{g}{number of components if using mfa}
}
\value{
An EMMIXgene object containing:
\item{stat}{A matrix containing clustering (0 or 1) 
for each sample (columns) by each group(rows).}
\item{top_gene}{The row numbers of the top genes.}
\item{fit}{The fit object used to determine the clustering.}
}
\description{
Cluster tissues
}
\examples{
\donttest{alon_sel <- select_genes(alon_data[seq_len(100), ])}
\donttest{alon_top_10<-top_genes_cluster_tissues(alon_sel, 10, method='mfa', q=3, g=2)}
}
