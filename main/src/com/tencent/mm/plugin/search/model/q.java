package com.tencent.mm.plugin.search.model;

import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;

final class q extends af
{
  private String ehh;
  private boolean ehi = false;

  public q(b paramb, String paramString)
  {
    this.ehh = paramString;
  }

  public final boolean execute()
  {
    h localh = ax.Al().fs(this.ehh);
    if (localh == null)
    {
      this.ehi = true;
      return true;
    }
    i locali = new i(localh);
    if (b.a(locali))
    {
      b.a(this.egV, locali);
      return true;
    }
    this.ehi = true;
    return true;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("InsertFriend(\"").append(this.ehh).append("\")");
    if (this.ehi);
    for (String str = " [skipped]"; ; str = "")
      return str;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.q
 * JD-Core Version:    0.6.2
 */