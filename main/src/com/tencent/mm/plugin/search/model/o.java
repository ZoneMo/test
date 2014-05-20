package com.tencent.mm.plugin.search.model;

import com.tencent.mm.modelfriend.h;

final class o extends af
{
  private String ehh;

  public o(b paramb, String paramString)
  {
    this.ehh = paramString;
  }

  public final boolean execute()
  {
    long l = h.eW(this.ehh);
    b.a(this.egV).a(a.egz, l);
    return true;
  }

  public final String toString()
  {
    return "DeleteFriend(\"" + this.ehh + "\")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.o
 * JD-Core Version:    0.6.2
 */