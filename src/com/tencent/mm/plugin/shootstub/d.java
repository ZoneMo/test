package com.tencent.mm.plugin.shootstub;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.shootstub.a.j;
import com.tencent.mm.sdk.platformtools.aa;

final class d
  implements m
{
  d(b paramb)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.SubCoreShootStub", "edw onSceneEnd, type = " + paramx.getType() + ", errType = " + paramInt1 + ", errCode = " + paramInt2);
    be.uA().b(paramx.getType(), this);
    com.tencent.mm.n.a locala = ((j)paramx).cke;
    int i;
    if (locala != null)
    {
      i = locala.getType();
      if (locala == null)
        break label118;
    }
    label118: for (com.tencent.mm.am.a locala1 = locala.ws(); ; locala1 = null)
    {
      b.b(i, paramInt1, paramInt2, paramString, locala, locala1);
      return;
      i = paramx.getType();
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.d
 * JD-Core Version:    0.6.2
 */