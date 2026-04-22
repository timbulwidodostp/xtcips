{smcl}
{* *! version 1.0.0 May2014}{...}
{cmd:help xtcips}{right: ({browse "http://www.stata-journal.com/article.html?article=st0439":SJ16-2: st0439})}
{hline}

{title:Title}

{p2colset 5 15 17 2}{...}
{p2col:{cmd:xtcips} {hline 2}}Pesaran panel unit-root test in the presence of cross-section dependence{p_end}
{p2colreset}{...}


{title:Syntax}

{p 8 14 2}
{cmd:xtcips} {varname} {ifin}{cmd:,} {opt maxl:ags(#)} 
{cmdab:bgl:ags(}{it:numlist}{cmd:)} [{cmd:q} {cmdab:t:rend} {cmdab:n:oc}]

{pstd}
{cmd:xtcips} is used with balanced panel data.  You must {cmd:tsset} your data
before using {cmd:xtcips} with the panel form of {cmd:tsset}; see 
{helpb tsset}.

{pstd}
{it:varname} may contain time-series operators; see {help tsvarlist}.


{title:Description}

{pstd}
{cmd:xtcips} estimates the cross-sectional Im, Pesaran, and Shin (2003) test
for unit roots in heterogeneous panels developed by Pesaran (2007; sec. 4,
275-279).

{pstd}
There are three possible specifications:{p_end}
{pmore}
Case I: models without an intercept or trend (see the {cmd:noc} option){p_end}
{pmore}
Case II: models with an individual-specific intercept (default){p_end}
{pmore}
Case III: models with an incidental linear trend (see the {cmd:trend}
option){p_end}

{pstd}
The command allows the user to define individual dynamic specifications in each
regression using two alternative criteria (see {opt maxlags(#)}):{p_end}
{pmore}
i) the Wald test of compound linear hypothesis on the model parameters
(default){p_end}
{pmore}
ii) the Portmanteau (Q) test for white noise (see the {cmd:q} option){p_end}

{pstd}
{cmd:xtcips} reports the p-value of the Lagrange multiplier test on the
Breusch-Godfrey serial correlation of each individual regression (see the
{cmd:bglags(}{it:numlist}{cmd:)} option).

{pstd} 
The null hypothesis is (homogeneous nonstationary)

{pmore}
H0: bi = 0 for all i

{pstd}
versus the possibly heterogeneous alternatives

{pmore}
H1: bi < 0, i = 1, 2, . . . , N1{break}
    bi = 0, i = N1 + 1, N1 + 2, ... ,N

{pstd}
in the following cross-sectionally augmented Dickey-Fuller regression:

{pmore}
D_yit = ai + bi * yi,t-1 + ci * MEAN_yt-1 + di * MEAN_D_yt + eit


{title:Options}

{phang}
{opt maxlags(#)} defines the individual dynamic specification and specifies
the maximum number of lags to be included in the model to be estimated for
each unit.  Then, {cmd:xtcips} determines the number of lags to be included in
each individual regression with an iterative process of 0 to {cmd:maxlags()}
based on the level of significance of the test established to select the
dynamics. This may be done by selecting the highest significant lag, either i)
by rejecting H_0 (at 5% or lower) in the Wald test or ii) by not rejecting H_0
(at 95% or higher) in the Portmanteau test (Q) of white noise or
{cmd:maxlags()}, whichever occurs first.  {cmd:maxlags()} is required and must
be a positive integer.

{phang}
{cmd:bglags(}{it:numlist}{cmd:)} establishes the serial correlation order to
be tested in the Lagrange multiplier test by Breusch-Godfrey in each
individual regression.  If only one value is provided (a positive integer),
then that order is used for all units.  If a list of numbers is provided, its
length must match the number of units in the panel.  {cmd:bglags()} is
required.

{phang}
{cmd:q} sets the Portmanteau (Q) test for white noise as the criterion to
determine the dynamic specification.

{phang}
{cmd:trend} includes a time trend in the estimated equation (case III).

{phang}
{cmd:noc} eliminates the constant term (case I).


{title:Stored results}

{pstd}
{cmd:xtcips} stores the following in {cmd:r()}:

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: Scalars}{p_end}
{synopt:{cmd:r(cips)}}cross-sectional Im, Pesaran, and Shin (2003) statistic{p_end}

{p2col 5 15 19 2: Matrices}{p_end}
{synopt:{cmd:r(cv)}}critical values of average of individual cross-sectionally augmented Dickey-Fuller distribution{p_end}
{synopt:{cmd:r(W)}}individual regression diagnostics{p_end}
{p2colreset}{...}


{title:References}

{phang}
Im, K. S., M. H. Pesaran, and Y. Shin. 2003. Testing for unit roots in
heterogeneous panels. {it:Journal of Econometrics} 115: 53-74.

{phang}
Pesaran, M. H. 2007. A simple panel unit root test in the presence of
cross-section dependence.  {it:Journal Of Applied Econometrics} 22: 265-312.


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
