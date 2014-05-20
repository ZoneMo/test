package com.tencent.mm.plugin.search.model;

final class ac extends af
{
  private ap egM;
  private int ehI;

  public ac(ap paramap)
  {
    this.egM = paramap;
    this.ehI = 200;
  }

  public final boolean execute()
  {
    ap localap = this.egM;
    localap.aaU();
    return true;
  }

  public final String toString()
  {
    return "OptimizeIndexTask(" + this.ehI + ")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ac
 * JD-Core Version:    0.6.2
 */