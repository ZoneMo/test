package com.tencent.mm.plugin.search.model;

final class t extends af
{
  private String eho;
  private aq ehp;

  public t(b paramb, String paramString, aq paramaq)
  {
    this.eho = paramString;
    this.ehp = paramaq;
  }

  public final boolean execute()
  {
    b.a(this.egV).b(this.eho, this.ehp);
    return true;
  }

  public final String toString()
  {
    return "RankTopHitsTask(\"" + this.eho + "\", \"" + this.ehp.eid + "\")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.t
 * JD-Core Version:    0.6.2
 */