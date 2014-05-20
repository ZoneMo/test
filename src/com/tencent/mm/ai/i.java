package com.tencent.mm.ai;

import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class i
  implements l
{
  i(h paramh, keep_SceneResult paramkeep_SceneResult)
  {
  }

  public final void N(int paramInt1, int paramInt2)
  {
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(1);
    arrayOfObject[2] = Long.valueOf(g.c(this.cAJ.cAI));
    arrayOfObject[3] = Long.valueOf(cj.FD());
    arrayOfObject[4] = Integer.valueOf(com.tencent.mm.modelcdntran.h.M(al.getContext()));
    arrayOfObject[5] = Integer.valueOf(CdnTransportEngine.coP);
    arrayOfObject[6] = Integer.valueOf(this.cpl.field_fileLength);
    arrayOfObject[7] = this.cpl.field_transInfo;
    localm.d(10421, arrayOfObject);
    g.d(this.cAJ.cAI).a(paramInt1, paramInt2, "", this.cAJ.cAI);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.i
 * JD-Core Version:    0.6.2
 */