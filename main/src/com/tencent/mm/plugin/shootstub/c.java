package com.tencent.mm.plugin.shootstub;

import com.tencent.mm.c.a.cg;
import com.tencent.mm.c.a.ch;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class c extends g
{
  c(b paramb)
  {
  }

  public final boolean a(e parame)
  {
    cg localcg = (cg)parame;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(localcg.bNI.bNK);
    aa.e("MicroMsg.SubCoreShootStub", "on op listener callback, type[%d]", arrayOfObject);
    switch (localcg.bNI.bNK)
    {
    default:
      return false;
    case 0:
      localcg.bNJ.bMh = b.a(this.etB, localcg.bNI.bNL);
      return false;
    case 1:
      localcg.bNJ.bMh = b.b(this.etB, localcg.bNI.bNL);
      return false;
    case 2:
      localcg.bNJ.bMh = b.c(this.etB, localcg.bNI.bNL);
      return false;
    case 3:
      localcg.bNJ.bMh = b.d(this.etB, localcg.bNI.bNL);
      return false;
    case 4:
      localcg.bNJ.bMh = b.e(this.etB, localcg.bNI.bNL);
      return false;
    case 5:
      localcg.bNJ.bMh = b.f(this.etB, localcg.bNI.bNL);
      return false;
    case 6:
      localcg.bNJ.bMh = b.g(this.etB, localcg.bNI.bNL);
      return false;
    case 7:
    }
    localcg.bNJ.bMh = b.h(this.etB, localcg.bNI.bNL);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.c
 * JD-Core Version:    0.6.2
 */