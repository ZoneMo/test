package com.tencent.mm.plugin.search.model;

final class ak extends af
{
  private long ehW;
  private long ehX;

  public ak(ag paramag, long paramLong)
  {
    this.ehW = paramLong;
    this.ehX = -1L;
  }

  public final boolean execute()
  {
    if (this.ehX > 0L)
      ag.a(this.ehV).a(a.egw, this.ehW, this.ehX);
    while (true)
    {
      return true;
      ag.a(this.ehV).a(a.egw, this.ehW);
    }
  }

  public final String toString()
  {
    return "DeleteMessage(" + this.ehW + ")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ak
 * JD-Core Version:    0.6.2
 */