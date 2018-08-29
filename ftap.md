The _market_ consists of _instruments_, $I$, that have
_prices_, $X_t$, and _cash flows_, $C_t$ at time $t$,
where the times come from a set of _trading times_, $T$.

Instruments can be stocks, bonds, convertable bonds, mortgage
backed securities, forwards, futures, etc.

The price is not really a number. There is a _bid/ask spread_
depending on if you are buying/selling. The spread widens
as the amount transacted increases. The price also depends
on who you are trading with. Let's ignore that for now.

Cash flows are associated with owning an instrument. Stocks have
dividends. Bonds have coupons. Convertable bonds have coupons until
converted to stock. Mortgage backed securities have cash flows composed
of principal and interest payments.  Forwards have a single cash flow
at expiration, but futures always have price zero and daily cash flows.
The sum of the futures cash flows equals the forwards cash flow.

Although most mathematical models assume trading times are all
non-negative real numbers, in the real world we can only trade when
markets are open. Also, different instruments have different trading
times.
