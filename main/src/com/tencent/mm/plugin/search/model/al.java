package com.tencent.mm.plugin.search.model;

final class al extends af
{
  private String ehY;

  public al(ag paramag, String paramString)
  {
    this.ehY = paramString;
  }

  public final boolean execute()
  {
    ag.a(this.ehV).b(a.egw, this.ehY);
    return true;
  }

  public final String toString()
  {
    return "DeleteMessageByTalker(\"" + this.ehY + "\")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.al
 * JD-Core Version:    0.6.2
 */