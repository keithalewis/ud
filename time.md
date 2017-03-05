# Trading Times

Let $T$ be the set of all possible trading times.
These are assumed to have a
[_linear order_](https://ncatlab.org/nlab/show/linear+order).
In a _discrete time_ model the elements of $T$ can be
written $t_0 < t_1 < \cdots$.
In the Black-Scholes/Merton model $T = [0,\infty)$, the non-negative
real numbers.

From the financial perspective it is better to call these trading
dates since a trade at $t = 0$ makes no sense without specifying
a reference date, the _epoch_. Times are the difference from the
epoch in years. The generally accepted practice is to assume 365.25
days per year to take leap years into account.  Some people try to
take into account years evenly divisible by 100 are leap years,
unless it is also divisible by 400.  We do not and also ignore
Einstein's relativistic considerations of [_simultaneity_](
http://www.physik.uni-augsburg.de/annalen/history/einstein-papers/1905_17_891-921.pdf).

The important consideration is to be consistent when converting between
dates and times, i.e., if $t = d' - d$ is the time between two dates
then $d' = d + t$ for appropriate definitions of taking the difference
of dates and adding a date and a time.

When trying to reconcile two pricing models it is sometimes necessary
to do investigative work to determine the conventions.

One problem with the Black-Scholes/Model is that it is impossible to trade
at arbitrarily small time intervals. The Ito integral is a mathematical
limit as trading times tend to zero so it can only approximate the
limitations in the real world. Traders need to know when and by how
much to adjust their hedges. The classical answer of "infinitely often"
and by an "infinitesimal amount" is absurd. One goal of this pamphlet
is to develop a theory that makes it clear how nonsensical this is
and come up with answers that are more useful to practitioners.
