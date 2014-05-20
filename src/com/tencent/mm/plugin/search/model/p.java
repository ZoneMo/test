package com.tencent.mm.plugin.search.model;

import com.tencent.mm.model.be;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class p extends af
{
  private String ehg;
  private boolean ehi = false;

  public p(b paramb, String paramString)
  {
    this.ehg = paramString;
  }

  public final boolean execute()
  {
    i locali = be.uz().su().tN(this.ehg);
    if ((locali != null) && (locali.getUsername().length() > 0) && (b.a(locali)))
    {
      b.a(this.egV, locali);
      return true;
    }
    this.ehi = true;
    return true;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("InsertContact(\"").append(this.ehg).append("\")");
    if (this.ehi);
    for (String str = " [skipped]"; ; str = "")
      return str;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.p
 * JD-Core Version:    0.6.2
 */