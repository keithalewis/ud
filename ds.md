# Derivative Securities

A _derivative security_ is a contract between two counterparties for
a sequence _exchanges_. An _exchange_ is the transfer of securities
between counterparties at some point in time.
There is a mathematical theory for valuing, hedging, and controlling
the risk involved with trading derivatives.

## Examples

Consider the simplest example of a derivative security that pays the
price, $S_t$, of an underlying instrument at some time, $t$.  Clearly the
value at time $0$ is $S_0$, the price of the security at time 0. Your
hedge is to buy one unit/share of the underlying at time $0$ then sell
it at time $t$ to satisfy the contract. In the real world you must
take into account the the price depends on whether you are buying or
selling the underlying &mdash; the bid/ask spread.

Actually, there are even more considerations to take into account to
control the risk. The credit worthiness of the counterparties will
effect the price each must must pay or take for a security.
Typically the bid/ask spread increases you increase the number of shares
involved. We will follow the custom mathematicians use (for now) and
assume frictionless markets with perfect liquidity &mdash; no bid/ask spread
for any transaction size.

Another simplification is to assume everthing is cash settled in a
single currency.

### Zero Coupon Bond

A _zero coupon bond_, $D(t)$, pays one unit of currency at maturity, $t$.
It is helpful to confuse the price of the zero coupon bond with a
shorthand name for it.

### Forward

A _forward_ contract specifies a time, $t$, an underlying, $S$, and a
strike, $k$. It pays $S_t - k$ at time $t$ where $S_t$ is the price of $S$
at time $t$. This can be hedged by selling $k$ units of a zero coupon bond
and purchasing one unit of the underlying.  The value of the forward is
$-kD(t) + S_0$. If this value is $0$ the strike is called the _forward_,
$f = S_0/D(t)$.

Stocks can pay _dividends_ $c_j$ at times $t_j$.
A company can pay any dividend at any time but the usual assumption for
models is they pay _fixed dividends_, $c_j = d_j$ at known times $t_j$,
or _proportional dividends_$, $c_j = p_jS_{t_j}$ at $t_j$.

If zero coupon bonds exist at maturities $t_j$ then the value of a forward
contract is $-kD(t) + \sum_{0 < t_j < t} d_jD(t_j) + S_0$.
