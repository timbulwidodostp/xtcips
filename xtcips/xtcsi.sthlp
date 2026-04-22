{smcl}
{* *! version 1.0.0 May2014}{...}
{cmd:help xtcsi}{right: ({browse "http://www.stata-journal.com/article.html?article=st0439":SJ16-2: st0439})}
{hline}

{title:Title}

{p2colset 5 14 16 2}{...}
{p2col:{cmd:xtcsi} {hline 2}}Investigating residual cross-section
independence{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 13 2}
{cmd:xtcsi} {depvar} {indepvars} {ifin} [{cmd:,} {cmd:trend}]


{title:Description}

{pstd}
{cmd:xtcsi} implements error tests for cross-section independence in balanced
panel time-series data. The tests include the Breusch and Pagan (1980)
Lagrange multiplier (LM) test; the Pesaran, Ullah, and Yamagata (2008)
bias-adjusted LM test; and the Pesaran (2004) cross-sectional dependence test.

{pstd}
The null hypothesis is

{pmore}
H0: Cov(uit,ujt) = 0 for all t and i!=j


{title:Option}

{phang}
{cmd:trend} specifies a linear trend to be included in each individual
regression model.


{title:Stored results}

{pstd}
{cmd:xtcsi} stores the following in {cmd:r()}:

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: Scalars}{p_end}
{synopt:{cmd:r(N_g)}}number of panel members{p_end}
{synopt:{cmd:r(lm)}}Breusch and Pagan (1980) LM test statistic{p_end}
{synopt:{cmd:r(p_lm)}}p-value of chi-squared with N(N-1)/2 degrees of
freedom{p_end}
{synopt:{cmd:r(lm_adj)}}Pesaran, Ullah, and Yamagata (2008) bias-adjusted LM test statistic{p_end}
{synopt:{cmd:r(p_lm_adj)}}two-sided p-value of normal (0,1){p_end}
{synopt:{cmd:r(lm_cd)}}Pesaran (2004) cross-sectional dependence test statistic{p_end}
{synopt:{cmd:r(p_lm_cd)}}two-sided p-value of normal (0,1){p_end}


{title:References}

{phang}
Breusch, T. S., and A. R. Pagan. 1980. The Lagrange multiplier test and its
applications to model specification in econometrics. 
{it:Review of Economic Studies} 47: 239-253.

{phang}
Pesaran, M. H. 2004. General diagnostic tests for cross section dependence in
panels. Cambridge Working Papers in Economics No. 0435, University of
Cambridge, Faculty of Economics.

{phang}
Pesaran, M. H., A. Ullah, and T. Yamagata. 2008. A bias-adjusted LM
test of error cross-section independence. {it:Econometrics Journal}
11: 105-127.


{title:Acknowledgment}

{pstd}
This routine was made with the helpful advice of Tamara Burdisso.  Any errors
are my own.


{title:Author}

{pstd}M{c a'}ximo Sangi{c a'}como{break}
Central Bank of Argentina and Universidad Nacional de La Plata{break}
La Plata, Argentina{break}
maximo.sangiacomo@bcra.gob.ar


{title:Also see}

{p 4 14 2}Article:  {it:Stata Journal}, volume 16, number 2: {browse "http://www.stata-journal.com/article.html?article=st0439":st0439}{p_end}

{p 7 14 2}Help:  {helpb xtcsd}, {helpb xtmg} (if installed){p_end}
