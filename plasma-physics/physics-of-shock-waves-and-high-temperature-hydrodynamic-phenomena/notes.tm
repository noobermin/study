<TeXmacs|1.99.4>

<style|generic>

<\body>
  <name|><section|Chapter 1>

  <subsection|Section 1>

  <\description>
    <item*|(1.1)>For equation (1.1), one way to think of this is that it is
    just the chain rule. Consider a 2D system (with time, of course). Taking
    a total time derivative of something like <math|f<around*|(|x,y,t|)>>, it
    does not suffice to take partial derivatives of <math|f> with respect to
    <math|t>. Consider the case

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x,y,t|)>>|<cell|=>|<cell|x
      y,>>|<row|<cell|x>|<cell|=>|<cell|sin
      t>>|<row|<cell|y>|<cell|=>|<cell|cos
      t>>|<row|<cell|\<Rightarrow\>f<around*|(|x,y,t|)>=f<around*|(|t|)>>|<cell|=>|<cell|sin
      t cos t>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>sin 2t.>>>>
    </eqnarray*>

    Thus,

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|d|d
      t><around*|(|f|)>>|<cell|=>|<cell|cos 2t>>>>
    </eqnarray*>

    Note that if we did a partial derivative, which really means \Pkeep other
    variables, like <math|x> and <math|y> constant, and take a derivative,\Q
    this wouldn't be right. This is important, because in solving DE's, we
    often don't know <math|x> or <math|y>, and generally, any function of
    time, so it'd be nice if we could take implicit derivatives, and leave
    them. This will turn, generally, a PDE into and ODE for <math|t>, albeit
    the result might not be solveable easy, it is more correct.

    To show this, let's try using chain rule for <math|f<around*|(|x,y,t|)>>.
    \ Note that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|d f|d t>>|<cell|=>|<cell|<frac|d|d
      t><around*|(|x y|)>>>|<row|<cell|>|<cell|=>|<cell|y<frac|d|d t>x
      +x<frac|d|d t>y.>>>>
    </eqnarray*>

    Obviously, though, since <math|\<partial\>x/\<partial\>x=1>, we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|d f|d
      t>>|<cell|=>|<cell|<frac|\<partial\>|\<partial\>x><around*|(|y
      x|)><frac|d|d t>x +<frac|\<partial\>|\<partial\>y><around*|(|y
      x|)><frac|d|d t>y.>>|<row|<cell|>|<cell|=>|<cell|<frac|\<partial\>|\<partial\>x>f
      <frac|d|d t>x+<frac|\<partial\>|\<partial\>y>f<frac|d|d t>y.>>>>
    </eqnarray*>

    Realize that each individual term is chain rule. In fact, this is the
    general chain rule in multiple variables. Generally, we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|D f<around*|(|x,y,t|)>|D
      t>>|<cell|=>|<cell|<frac|\<partial\>f|\<partial\>t>+<frac|\<partial\>f|\<partial\>x>
      <frac|d|d t>x+<frac|\<partial\>f|\<partial\>y><frac|d|d t>y.>>>>
    </eqnarray*>

    where to emphasize the total time derivatives (and be consistent with the
    book), we capitalized the <math|d\<rightarrow\>D>,

    In the case that <math|x,y> are spatial positions, then we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|D f<around*|(|x,y,t|)>|D
      t>>|<cell|=>|<cell|<frac|\<partial\>f|\<partial\>t>+<frac|\<partial\>f|\<partial\>x>
      u<rsub|x>+<frac|\<partial\>f|\<partial\>y>u<rsub|y>>>>>
    </eqnarray*>

    where <math|<wide|u|\<vect\>>=<around*|(|v<rsub|x>,v<rsub|y>|)>> is the
    velocity. Henceforth,

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|D f<around*|(|x,y,t|)>|D
      t>>|<cell|=>|<cell|<frac|\<partial\>f|\<partial\>t>+<around*|(|<frac|\<partial\>f|\<partial\>x>,<frac|\<partial\>f|\<partial\>y>|)>\<cdot\><wide|u|\<vect\>>>>>>
    </eqnarray*>

    but the other vector factor is the gradient of <math|f>, so

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|D f<around*|(|x,y,t|)>|D
      t>>|<cell|=>|<cell|<frac|\<partial\>f|\<partial\>t>+<wide|u|\<vect\>>\<cdot\><wide|\<nabla\>|\<vect\>>f>>>>
    </eqnarray*>

    which yields (1.1).

    Does it work? In our case, of <math|f=x y>,

    <\eqnarray*>
      <tformat|<table|<row|<cell|d f/d t>|<cell|=>|<cell|y v<rsub|x>+x
      v<rsub|y>>>|<row|<cell|>|<cell|=>|<cell|cos t<around*|(|cos t|)>-sin
      t<around*|(|sin t|)>>>|<row|<cell|>|<cell|=>|<cell|cos<rsup|2>t-sin<rsup|2>t>>|<row|<cell|>|<cell|=>|<cell|cos
      2t.>>>>
    </eqnarray*>

    <item*|(1.3,1.4)>We have that from continuity, and using vector product
    rules

    <\eqnarray*>
      <tformat|<table|<row|<cell|0=<frac|\<partial\>\<rho\>|\<partial\>t>+<wide|\<nabla\>|\<vect\>>\<cdot\><around*|(|\<rho\><wide|u|\<vect\>>|)>>|<cell|=>|<cell|<frac|\<partial\>\<rho\>|\<partial\>t>+\<rho\><wide|\<nabla\>|\<vect\>>\<cdot\><wide|u|\<vect\>>+<around*|(|<wide|u|\<vect\>>\<cdot\><wide|\<nabla\>|\<vect\>>|)>\<rho\>>>|<row|<cell|>|<cell|=>|<cell|<frac|D\<rho\>|D
      t>+\<rho\><wide|\<nabla\>|\<vect\>>\<cdot\><wide|u|\<vect\>>.>>>>
    </eqnarray*>

    Note that the idea of <em|incompressibility> means that, yes,
    <math|D\<rho\>/D t=0>, due to the fact mass does not accumulate over time
    (density is constant). Instead, te fluid just moves. We can under (1.4)
    in this light, by saying that the velocity field is divergence-less
    implies that the \Pflow lines\Q of velocity, (basically, the path of
    fluid parts) doesn't have sources or sinks, it doesn't \Pclump up\Q or
    disappear, motion simply transfers thuough the fluid.

    <item*|(1.7)>One way to derive this is consider the \Pmomentum\Q density.
    It should have units of momentum per volume. The length unit in the
    momentum will essentially make this a mass flux, that is,

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|m L|T><frac|1|V>>|<cell|\<sim\>>|<cell|<frac|m|T
      L<rsup|2>>,>>>>
    </eqnarray*>

    thus, mass, per unit area, per unit time. It specified then, flow (since
    it is per time) per area. Therefore, if we integrate over an area (say, a
    sphere), it would specify the flow of <em|mass> out of the volume. This
    is a similar to <em|intensity>, which is energy per time per area.

    The best way to state this momentum density is
    <math|\<rho\><wide|u|\<vect\>>> (note that it has to have a direction,
    since it is momentum density). You can verify this has the right units

    Consider then, the time derivative of this

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|D|D
      t><around*|(|\<rho\><wide|u|\<vect\>>|)>>|<cell|=>|<cell|\<rho\><frac|D|D
      t><wide|u|\<vect\>>+<wide|u|\<vect\>><frac|D|D t>\<rho\>.>>>>
    </eqnarray*>

    The first term is Newton's 2nd Law (1.5). We can rewrite the second term
    using (1.3), so

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|D|D
      t><around*|(|\<rho\><wide|u|\<vect\>>|)>>|<cell|=>|<cell|-<wide|\<nabla\>|\<vect\>>p-<wide|u|\<vect\>>\<rho\><wide|\<nabla\>|\<vect\>>\<cdot\><wide|u|\<vect\>>>>|<row|<cell|\<Rightarrow\><frac|\<partial\>|\<partial\>t><around*|(|\<rho\><wide|u|\<vect\>>|)>>|<cell|=>|<cell|-<around*|(|<wide|u|\<vect\>>\<cdot\><wide|\<nabla\>|\<vect\>>|)><around*|(|\<rho\><wide|u|\<vect\>>|)>-<wide|\<nabla\>|\<vect\>>p-<wide|u|\<vect\>>\<rho\><wide|\<nabla\>|\<vect\>>\<cdot\><wide|u|\<vect\>>.>>>>
    </eqnarray*>

    We note that if we can take out a gradient out of this, we can make this
    look like a contuity equation, which will be the contuity of the
    stress-momentum tensor, it turns out. Realize that first and second terms
    are a product rule of sorts. To see this, for one dimension,

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|v<rsub|x><frac|\<partial\>|\<partial\>x>|)><around*|(|\<rho\>v<rsub|x>|)>+<around*|(|<frac|\<partial\>|\<partial\>x>v<rsub|x>|)><around*|(|\<rho\>v<rsub|x>|)>>|<cell|=>|<cell|<frac|\<partial\>|\<partial\>x><around*|(|v<rsub|x><around*|(|\<rho\>v<rsub|x>|)>|)>.>>>>
    </eqnarray*>

    This is okay in one dimension, but it appears a little confusing in 3D
    given it's hard to define a product of vectors. However, these is such a
    construct, called the <em|tensor product>, denoted <math|\<otimes\>>.
    Specifically, it makes a <math|N\<times\>N> matrix out of and <math|N>
    dimensional vector. Specficially, if <math|v<rsub|i>> is the <math|i>th
    member of a vector, then the tensor product
    <math|<wide|v|\<vect\>>\<otimes\><wide|w|\<vect\>>> is a matrix, in which
    the <math|i,j>th component is just the <math|i>th component of
    <math|<wide|v|\<vect\>>> times the <math|j>th component of
    <math|<wide|w|\<vect\>>>. Or,

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<wide|w|\<vect\>>\<otimes\><wide|v|\<vect\>>|)><rsub|i
      j>>|<cell|=>|<cell|v<rsub|i>w<rsub|j>.>>>>
    </eqnarray*>

    Obviously, as a vector changes components from basis to basis, a tensor's
    components change from basis too basis too (as does a usual matrix).
    Thus, a tensor transforms like two vectors smashed together. This
    sometimes warrants the term <em|bivector> for a tensor of this specific
    form. It should be noted that not every matrix can be written as tensor
    product of two vectors, so tensors, due to their transformation as two
    vectors from basis to, makes them special.

    One thing that complicates the picture with tensors is we have to now be
    careful with our notation. For example, a dot product of a vector with a
    bivector tensor yields a vector. Specifically,

    <\eqnarray*>
      <tformat|<table|<row|<cell|v<rsub|i><around*|(|<wide|a|\<vect\>>\<otimes\><wide|b|\<vect\>>|)><rsub|i
      j>>|<cell|=>|<cell|<around*|(|<wide|v|\<vect\>>\<cdot\><wide|a|\<vect\>>|)><wide|b|\<vect\>>.>>>>
    </eqnarray*>

    Of course, which index we sum with is important as it will give us a
    different result! Thus, when dealing with tensors, it's often easier to
    discard the vector decorations and use index notation and Einstein
    notation instead.

    Finally, returning to our equation, we can write

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|\<partial\>|\<partial\>t><around*|(|\<rho\>u<rsub|i>|)>>|<cell|=>|<cell|-u<rsub|j><frac|\<partial\>|\<partial\>x<rsub|j>><around*|(|\<rho\>u<rsub|i>|)>-<frac|\<partial\>|\<partial\>x<rsub|i>>p-u<rsub|i>\<rho\><frac|\<partial\>|\<partial\>x<rsub|j>>u<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|-<frac|\<partial\>|\<partial\>x<rsub|j>><around*|(|\<rho\>u<rsub|i>u<rsub|j>+\<delta\><rsub|i
      j>p|)>>>>>
    </eqnarray*>

    which is the momentum density flux tensor of (1.8). Note that this is a
    sort of \Pcontinuity equation\Q for a vector field rather than for a
    scalar. Given that we need a \Pcurrent term\Q for a continuity equation
    that we need to take a gradient of (here, on the right hand side of
    (1.8)), this necessitates usage of a tensor, specifically, a bivector in
    this case.

    <item*|(1.9)>To get units right here, note that <math|\<varepsilon\>> is
    the <em|specific energy>, and thus, the energy per unit mass. One to
    understand this is starting from <math|\<varepsilon\>> and considering
    conservation of energy. If it has a change, it can either be a) lost or
    gained to heat or to the environment (signified by the <math|Q> term) or
    change due to the the fuild getting denser, which is the second term. The
    reason for this is the specific energy weighs the energy per a given mass
    of fluid. If the fluid gets denser, say in an adiabatic process where
    <math|Q=0>, then a given amount of mass will occupy a smaller volume,
    which changes how much energy per mass we can measure. It is important to
    note that such a change, then, is an internal process, while <math|Q>,
    the part that actually talks about external losses/gains or frictional
    losses/gains (although friction is usually a loss, amiright).

    <item*|(1.19)>To get this form, note that for general quantity
    <math|\<chi\>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|\<partial\>\<rho\>|\<partial\>\<chi\>>>|<cell|=>|<cell|<frac|\<partial\>|\<partial\>\<chi\>><around*|(|<frac|1|V>|)>>>|<row|<cell|>|<cell|=>|<cell|-<frac|1|V<rsup|2>><frac|\<partial\>V|\<partial\>\<chi\>>>>|<row|<cell|>|<cell|=>|<cell|-\<rho\><rsup|2><frac|\<partial\>V|\<partial\>\<chi\>>.>>>>
    </eqnarray*>

    From this

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|\<partial\>\<rho\>|\<partial\>t>>|<cell|=>|<cell|-<frac|\<partial\>|\<partial\>x><around*|(|\<rho\>u<rsub|x>|)>>>|<row|<cell|\<Rightarrow\><frac|\<partial\>V|\<partial\>t>>|<cell|=>|<cell|V<rsup|2><frac|\<partial\>|\<partial\>x><around*|(|\<rho\>u<rsub|x>|)>>>|<row|<cell|>|<cell|=>|<cell|V<rsup|2>\<rho\><frac|\<partial\>|\<partial\>x>u<rsub|x>+V<rsup|2>u<rsub|x><frac|\<partial\>|\<partial\>x>\<rho\>>>|<row|<cell|\<Rightarrow\><frac|\<partial\>V|\<partial\>t>+u<rsub|x><frac|\<partial\>|\<partial\>x>V>|<cell|=>|<cell|<frac|\<partial\>|\<rho\>\<partial\>m>u<rsub|x>>>|<row|<cell|\<Rightarrow\><frac|D
      V|D t>>|<cell|=>|<cell|<frac|\<partial\>|\<partial\>m>u<rsub|x>.>>>>
    </eqnarray*>

    <item*|Fig. 1.1>Let

    <\eqnarray*>
      <tformat|<table|<row|<cell|u<around*|(|x,0|)>>|<cell|=>|<cell|0,>>|<row|<cell|\<Delta\>\<rho\><around*|(|x,0|)>>|<cell|=>|<cell|\<Delta\>\<rho\><rsub|0>\<theta\><around*|(|x-L/2|)>\<theta\><around*|(|x+L/2|)>>>|<row|<cell|\<Rightarrow\>\<Delta\>\<rho\><around*|(|x,t|)>>|<cell|=>|<cell|<frac|\<Delta\>\<rho\><rsub|0>|2><around*|[|\<theta\><around*|(|x-c
      t-L/2|)>\<theta\><around*|(|x-c t+L/2|)>+\<theta\><around*|(|x+c
      t-L/2|)>\<theta\><around*|(|x+c t+L/2|)>|]>.>>>>
    </eqnarray*>

    \;
  </description>

  <subsection|Section 6>

  This is probably the most important part of the first Chapter. After
  transforming to a set of coordinates motivated by the solutions of the form

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|d x|d t>
    >|<cell|=>|<cell|u+c>>|<row|<cell|<frac|d x|d t>>|<cell|=>|<cell|u-c>>>>
  </eqnarray*>

  One obtains a set of curves through spacetime that conserve the "Riemannian
  invariants." The basic cool thing is that onces one specifies these
  quantities, defined in 1.43, on the initial conditions and boundaries, one
  can obtain the future state at all times by propagating these quantities
  along the curves. Since they are conserved along the curves, one gets the
  solutions at a spacetime point later by finding which
  <math|J<rsub|\<pm\>>>'s are connected to that point from the initial
  conditions, and no other dynamics required, just a linear combination of
  the initial conditions. Of course, the curves <em|are> dynamic, and so one
  doesn't avoid having to solve the full problem, but in likewise manner as
  finite element, one can approximate the \Qcurves\Q by inifinitesimal
  triangles (the curves are "straight" on a small enough scale, ie., constant
  velocity), so one can obtain the future state this way, wash, rinse, and
  repeat and obtain the future solution.
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-2|<tuple|1.1|?>>
    <associate|auto-3|<tuple|1.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Chapter
      1> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Section 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>