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

  So, our pal says every closed and bounded subset <math|A> of
  <math|\<bbb-R\>>, if one has a collection of open subsets of said <math|A>,
  then there is a finite subcollection that covers <math|A.> So,
  intuitionally, I'll define something that might describe this
  (unfortunately, I'm too lazy to make it concrete, bear with me...) Consider
  the <math|<around*|[|0,1|]>\<subset\>\<bbb-R\>>, and consider the set of
  open sets from <math|<around*|(|0-\<varepsilon\>,1/2+\<varepsilon\>|)>,<around*|(|1/2-\<varepsilon\>,1/4+\<varepsilon\>|)>,\<ldots\>,<around*|(|1/2<rsup|n>-\<varepsilon\>,1/2<rsup|n+1>+\<varepsilon\>|)>>,
  obviously defineable for any natural number <math|n> and real number
  <math|\<varepsilon\>>. This is not uncountable, but it is inifinite.
  Basically, the idea here is that we have a set of open ranges that overlap
  and span smaller and smaller ranges from 1/2 to 1, obsensively. This
  supposes then, that for a given <math|\<varepsilon\>>, there is a <math|n>
  for which this subset covers <math|<around*|[|0,1|]>>. Clearly, when this
  is given by the constraint

  <\eqnarray*>
    <tformat|<table|<row|<cell|<frac|1|2<rsup|n+1>>+\<varepsilon\>>|<cell|\<gtr\>>|<cell|1>>>>
  </eqnarray*>

  which is solveable for a given <math|\<varepsilon\>> and <math|n>. More
  importantly, for a fixed <math|\<varepsilon\>>, <math|n> can be defined, as
  any integer <math|n>

  <\eqnarray*>
    <tformat|<table|<row|<cell|n>|<cell|\<gtr\>>|<cell|log<rsub|2><around*|(|<frac|1|1-\<varepsilon\>>|)>-1.>>>>
  </eqnarray*>

  For <math|\<varepsilon\>=1>, the subset
  <math|<around*|(|-1,1/2+1|)>\<equiv\><around*|(|-1,1.5|)>> itself is an
  element and covers <math|<around*|[|0,1|]>>, and this needs not be solved.
  So, this shows that as large as <math|n> can be, <math|n> will be finite.

  The idea, odd as it is (and I'll probably have to prove it some point for
  <math|\<bbb-R\>>), <em|any> bounded, closed subset of <math|\<bbb-R\>> can
  be covered by a finite number of open subsets, open with respect to the
  metric open sets. Compactness takes this concept, a little more specific
  than the idea of boundedness (closed-ness is okay, since we have that for
  your vanilla topological space), and says, if you got this for your
  topo-space, then you'll get all this awesome stuff too. That's the purpose
  of compactness, I suppose.
</body>

<\initial>
  <\collection>
    <associate|page-type|letter>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|?|../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-2|<tuple|1|?|../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-3|<tuple|1.1|?|../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-4|<tuple|1.1.1|?|../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-5|<tuple|2|?|../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
    <associate|auto-6|<tuple|2.1|?|../../../../.TeXmacs/texts/scratch/no_name_2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|What
      needs to be \ done> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|2tab>|1<space|2spc>Exercises
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>