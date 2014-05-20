package com.tencent.mm.plugin.search.model;

public abstract class af
  implements Comparable
{
  private int Rt = 2147483647;
  private boolean ehR = false;

  final void aaT()
  {
    this.ehR = true;
  }

  public abstract boolean execute();

  public final int getPriority()
  {
    return this.Rt;
  }

  public final boolean isCancelled()
  {
    return this.ehR;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.af
 * JD-Core Version:    0.6.2
 */