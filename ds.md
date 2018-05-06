# Derivative Securities

A _derivative security_ is a contract between two _counterparties_ for a
sequence of _exchanges_. An exchange is the transfer of securities between
two legal entities at some point in time.  These can be valued, hedged,
and have a rational basis for making the risks involved understandable
to practitioners.

## Examples

Consider the trivial example of a derivative security that pays, $S_t$,
at time $t$ for some underlying $S$.  The value is $S_0$, the price now.
Buy one unit/share of the underlying then sell it at time $t$ to satisfy
the contract.

In the real world you have to take into account that the price depends on
whether you are buying or selling the underlying &mdash; the bid/ask
spread.

There are even more considerations to take into account: The credit
worthiness of the counterparties will effect the price each must pay or
take for a security.  Also, the bid/ask spread increases the more you
buy.

We will follow the custom mathematicians use (for now) and assume
frictionless markets with perfect liquidity &mdash; no bid/ask spread
for any transaction size.

Another simplification is to assume everthing is cash settled in a
single currency.

### Zero Coupon Bond

A _zero coupon bond_, $D(t)$, pays one unit of currency at maturity, $t$.
It is helpful to confuse the price of the zero coupon bond with its name.

### Forward

A _forward_ contract specifies a time, $t$, an underlying, $S$, and a
strike, $k$. It pays $S_t - k$ at time $t$ where $S_t$ is the price of $S$
at time $t$. This can be hedged by selling $k$ units of a zero coupon bond
and purchasing one unit of the underlying.  The value of the forward is
$S_0 - kD(t)$. If this value is $0$ the strike is called the _forward_,
$f = S_0/D(t)$.

(Insert an example of why linearity does not hold.)

Stocks can pay _dividends_ $c_j$ at random times $\tau_j$.
A company can pay any dividend at any time but the usual assumption for
models is they pay _fixed dividends_, $c_j = d_j$ at known times $t_j$,
or _proportional dividends_, $c_j = p_jS_{t_j}$ at $t_j$.

If zero coupon bonds exist at maturities $t_j$ then the value of a
forward contract is $S_0 -kD(t) + \sum_{0 < t_j < t} d_jD(t_j) - kD(t)$.
