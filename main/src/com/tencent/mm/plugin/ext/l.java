package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.az;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;

public final class l extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof az))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      return false;
    }
    aa.i("MicroMsg.SubCoreExtAgent", "requestAccountSync()");
    if (al.getContext() == null)
    {
      aa.w("MicroMsg.SubCoreExtAgent", "MMApplicationContext.getContext() == null");
      return false;
    }
    f.Y(al.getContext());
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.l
 * JD-Core Version:    0.6.2
 */