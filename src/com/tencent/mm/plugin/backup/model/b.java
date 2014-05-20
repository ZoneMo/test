package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.sdk.platformtools.by;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Map;

final class b
{
  Map cJK = null;
  private boolean cJL = true;

  public b(String paramString)
  {
    this.cJK = by.sM(paramString);
    if (this.cJK == null)
    {
      this.cJL = false;
      this.cJK = new HashMap();
    }
  }

  private int getInt(String paramString)
  {
    if (!this.cJK.containsKey(paramString))
      return 0;
    return cj.getInt((String)this.cJK.get(paramString), 0);
  }

  public final int Gd()
  {
    return getInt(".msg.appmsg.showtype");
  }

  public final int Ge()
  {
    return getInt(".msg.appmsg.appattach.totallen");
  }

  public final int Gf()
  {
    return getInt(".msg.scene");
  }

  public final int getType()
  {
    return getInt(".msg.appmsg.type");
  }

  public final boolean isValid()
  {
    return this.cJL;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.b
 * JD-Core Version:    0.6.2
 */