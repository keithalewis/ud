## Delta Function

Let's pretend there is a function $\delta_a(x)$ that has the property
that $\int_{-\infty}^\infty \delta_a(x) g(x)\,dx = g(a)$.

$\int_{-\infty}^\infty \delta_a(h(x)) g(x)\,dx = 
g(h^{-1}(a))/h'(h^{-1}(a)).$

Let $Z$ be a standard normal random variable with
density function $\phi(z) = \exp(-z^2/2)/\sqrt{2\pi}$.

$E f(Z) \exp(sZ - s^2/2) = E f(Z + s).$

Let $F = f\exp(sZ - s^2/2)$.

$E\delta_k(F) \exp(sZ - s^2/2) = E\delta_k(F\exp(s^2))$.

$h(z) = f\exp(sx - s^2/2)$

$h'(z) = h(z) s$.

$E\delta_k(F) \exp(sZ - s^2/2) =
E\delta_k(h(Z)) h(Z)/f =
k/f \phi(z)/ks = \phi(z)/fs$

$h_s(z) = f\exp(s(z + s) - s^2/2) = f\exp(sx + s^2/2)$

$h_s'(z) = h(z) s$.

$E\delta_k(F\exp(s^2)) =
\phi(z_s)/ks$.

$\phi(z)/fs = \phi(z_s)/ks$ so $k\phi(z) = f\phi(z_s)$.
