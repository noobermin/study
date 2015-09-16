<TeXmacs|1.99.2>

<style|generic>

<\body>
  <section*|What needs to be \ done>

  <\itemize-dot>
    <item>I probably do not need to understand chapter 1, it's baby's first
    set theory. It introduces diagrams, which is kind of interesting, but
    I'll just fill it in as I go (as in it has no priority).

    <item>Chapter 2 is the ``concrete'' example of topological spaces. I
    might go back here, we'll see.

    <item>Chapter 3 is definitional, ``here is what a topological space is''
    This too is elementary, but everytime that I have to relearn what compact
    spaces are gives me hints that I may not understand this stuff very well
    anyway, so I might as well work this through.

    <item>I think I understand connectedness (chapter 4), although perhaps it
    might be because connectedness makes sense (I mean, sheesh, the intuition
    behind it is in the name...), but I'll work it through. This has less
    priority than chapter 3.

    <item>I can say ``hurr, compactness means coverable by finitely many
    sets'' but to this day, I have no deep intuition about it. Wikipedia says
    that it is the ``generalization'' of closed sets and bounded sets, but if
    I just say that, I might as well be parroting shit. I think if anything,
    I should make sure I focus on this chapter.
  </itemize-dot>

  <section|Chapter 1>

  <subsection|Section 1>

  <subsubsection|Exercises>

  <\enumerate>
    <item>

    <\description>
      <item*|a-b><math|2<rsup|A>> is his notation for the power set, which is
      the set of subsets of a set <math|A>. It written such-wise, I'd guess,
      since there are <math|2<rsup|n>> subsets of a finite set
      <math|A\<cong\>\<bbb-Z\><rsub|n>>. Since <math|2<rsup|A>> is a
      collection of sets, it <math|A> is an <em|element> of the power set,
      but not a subset of it.

      <item*|c>The set <math|<around*|{|A|}>>, which contains <math|A> as an
      element is a subset of <math|2<rsup|A>>, since <math|2<rsup|A>> is a
      set containing <math|A> an element, per the last problem. This is kind
      of a definitions play problem, if anything.

      <item*|d>Think about it, the empty set is a subset of anything, so yes.

      <item*|e>This is again true. We just said the empty set is a subset of
      anything, so it is a subset of the powerset of anything too.

      <item*|f><strong|>
    </description>
  </enumerate>

  <section|Chapter 5>

  <subsection|Section 1>

  <subsection|Discussion>

  <subsubsection|Compactness as Closed and Boundedness>

  So, our pal says every closed and bounded subset <math|A> of
  <math|\<bbb-R\>>, if one has a collection of open subsets of said <math|A>,
  then there is a finite subcollection that covers <math|A.> So,
  intuitionally, I'll define something that might describe this
  <around|(|unfortunately, I'm too lazy to make it too concrete, bear with
  me...|)> Consider the <math|<around*|[|0,1|]>\<subset\>\<bbb-R\>>, and
  consider the set of open sets from <math|<around*|(|0-\<varepsilon\>,1/2+\<varepsilon\>|)>,<around*|(|1/2-\<varepsilon\>,1/4+\<varepsilon\>|)>,\<ldots\>,<around*|(|1/2<rsup|n>-\<varepsilon\>,1/2<rsup|n+1>+\<varepsilon\>|)>>,
  obviously defineable for any natural number <math|n> and real number
  <math|\<varepsilon\>>. For a given <math|\<varepsilon\>>, this defines an
  open cover of the interval <math|<around*|[|0,1|]>>, by including all
  <math|n\<in\>\<bbb-N\>> in this open cover. This is not uncountable, but it
  is inifinite. Basically, the idea here is that we have a set of open ranges
  that overlap and span smaller and smaller ranges from 1/2 to 1,
  obstensively. This supposes then, that for a given <math|\<varepsilon\>>,
  there is a single, be it large, <math|n<rprime|'>> for which the sets from
  <math|<around*|(|0-\<varepsilon\>,1/2+\<varepsilon\>|)>> to
  <math|<around*|(|1/2<rsup|n<rprime|'>>-\<varepsilon\>,1/2<rsup|n<rprime|'>+1>+\<varepsilon\>|)>>
  covers <math|<around*|[|0,1|]>>. Clearly, when the <math|n<rprime|'>> we
  need is given by the constraint

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|1|2<rsup|n+1>>+\<varepsilon\>>|<cell|\<gtr\>>|<cell|1>>>>
  </eqnarray*>

  which is solveable for a given <math|\<varepsilon\>>. More importantly, for
  a fixed <math|\<varepsilon\>>, <math|n> can be defined, as any integer
  <math|n>

  <\eqnarray*>
    <tformat|<table|<row|<cell|n>|<cell|\<gtr\>>|<cell|log<rsub|2><around*|(|<frac|1|1-\<varepsilon\>>|)>-1.>>>>
  </eqnarray*>

  For <math|\<varepsilon\>=1>, the subset
  <math|<around*|(|-1,1/2+1|)>\<equiv\><around*|(|-1,1.5|)>> itself is a set
  of the collection and covers <math|<around*|[|0,1|]>>, and the above
  equation needs not be solved. So, this shows that, even if
  <math|n<rprime|'>> will be large , <math|n<rprime|'>> will be finite.

  The idea, odd as it is (and I'll probably have to prove it some point for
  <math|\<bbb-R\>>), <em|any> bounded, closed subset of <math|\<bbb-R\>> can
  be covered by a finite number of open subsets, open with respect to the
  metric open sets. Compactness takes this concept, a little more specific
  than the idea of boundedness (closed-ness is okay, since we have that for
  your vanilla topological space), and says, if you got this for your
  topo-space, then you'll get all this awesome stuff too. It's a
  characteristic of topological spaces you can add on, similar to how you can
  add on connectedness.

  <subsubsection|Compactness as...compactness>

  Something that helps is when things in math (or physics (or computer
  science (or...))) are named based on something familiar that is analogous
  to it. Obviously, groups and rings are violations of this, but open and
  closed match well. Something that might hurt my understand of compactness
  is that closed and bounded doesn't sound ``compact'' and neither does ``has
  the property where ever open cover has a finite sub-cover'' sound like
  ``compact'' In fact, compact seems to imply ``full'' or ``dense,'' while
  ``finite sub-cover'' seems to imply that it isn't as dense as it sounds.

  Another way to think of compactness is the idea of an accumulation point.
  The idea is that one can always find subsets of a given compact set that
  get ``arbitrarly close'' to these points, kind of like limits from baby's
  calculus (accumulation points are often termed limit points, I think). This
  idea, that you can always have a subset that gets close to a point in a
  compact set sounds more ``compact'', in that you have then, an infinite
  number of subsets that approach a given point. Apparently, these two
  definitions, an accumulation point, and ``finite subcoverable'' are
  equivalent for metric spaces, and I think, general compact spaces too(?).
  We'll see.

  <subsubsection|Exercises>

  <\enumerate-numeric>
    <item>Prove that the real line <math|\<bbb-R\>> is not compact.

    It suffices to consider a given open cover that does not have a finite
    subcover. An obvious example is the open cover

    <\eqnarray*>
      <tformat|<table|<row|<cell|U<rsub|n>>|<cell|=>|<cell|<around*|(|n-1,n+1|)>>>>>
    </eqnarray*>

    where <math|n\<in\>\<bbb-Z\>>. This is an open cover in the usual
    topology, since any real number can be stated as a integer part added
    with a fractional part, and if a given real number <math|x> has an
    integer part <math|n>, then <math|x\<in\>U<rsub|n>>, which we won't
    prove. Consider if there were a finite subcover of this
    <math|<around*|{|U<rsub|n>|}><rsub|n\<in\>\<bbb-Z\>>,> and thus, by the
    text on page 159 after definition 2.4, there is a subset <math|A> of
    <math|\<bbb-Z\>> that for <math|n\<in\>A>,
    <math|<big|cup><rsub|n\<in\>A>U<rsub|n>=\<bbb-R\>>. By the well-ordering
    of <math|\<bbb-Z\>>, and since <math|A> is finite, there exists a maximal
    <math|n<rsub|max>\<in\>A> such that <math|n\<less\>n<rsub|max>> for all
    <math|n\<in\>A>. However, <math|n<rsub|max>+1> is a real number and is
    not in any <math|<around*|{|U<rsub|n>|}><rsub|n\<in\>A>>, and so we
    cannot have a finite subcover of <math|<around*|{|U<rsub|n>|}><rsub|n\<in\>\<bbb-Z\>>.>

    <item>Prove that every finite subset of a topological space is compact.

    Consider a topological space <math|X> with <math|U\<subseteq\>X> which is
    finite. <math|U= \<varnothing\>> is trivial (<math|\<varnothing\>> is
    compact since it is closed), so for a non-empty, finite subset <math|U>,
    consider a open cover <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> of
    <math|U>. Thus, for each <math|x\<in\>U>, there is at least one
    <math|i<rsub|x>\<in\>I> such that <math|x\<in\>V<rsub|i<rsub|x>>>. Thus,
    one can obtain a set of <math|i<rsub|x>\<in\>I> for each <math|x\<in\>U>,
    and since <math|U> is finite, <math|i<rsub|x>> is finite.
  </enumerate-numeric>
</body>

<\initial>
  <\collection>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?>>
    <associate|auto-10|<tuple|2.2.3|?>>
    <associate|auto-2|<tuple|1|?>>
    <associate|auto-3|<tuple|1.1|?>>
    <associate|auto-4|<tuple|1.1.1|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|auto-6|<tuple|2.1|?>>
    <associate|auto-7|<tuple|2.2|?>>
    <associate|auto-8|<tuple|2.2.1|?>>
    <associate|auto-9|<tuple|2.2.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      needs to be \ done> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Chapter
      1> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Section 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1.1.1<space|2spc>Exercises
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Chapter
      5> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Section 1
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Discussion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|2.2.1<space|2spc>Compactness as Closed and
      Boundedness <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|2.2.2<space|2spc>Compactness
      as...compactness <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>