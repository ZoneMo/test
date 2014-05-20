package com.tencent.mm.plugin.ext;

import com.tencent.mm.c.a.aq;
import com.tencent.mm.c.a.ar;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.z.f;

public final class g extends com.tencent.mm.sdk.b.g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof aq))
    {
      aa.aM("MicroMsg.SubCoreExtAgent", "mismatched event");
      return false;
    }
    aq localaq = (aq)parame;
    String str1 = localaq.bMP.bMR;
    String str2 = localaq.bMP.content;
    int i = localaq.bMP.type;
    f localf = new f(str1, str2, i);
    localaq.bMQ.bMT = localf;
    localaq.bMQ.bMS = localf.Bo();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.g
 * JD-Core Version:    0.6.2
 */