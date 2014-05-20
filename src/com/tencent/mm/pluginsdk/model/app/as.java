package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class as
  implements ao
{
  as(ar paramar, keep_SceneResult paramkeep_SceneResult)
  {
  }

  public final void N(int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.NetSceneUploadAppAttach", "cdntra NetSceneSendAppMsgForCdn callback %d,%d", arrayOfObject1);
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject2 = new Object[8];
    arrayOfObject2[0] = Integer.valueOf(paramInt2);
    arrayOfObject2[1] = Integer.valueOf(1);
    arrayOfObject2[2] = Long.valueOf(aq.d(this.fhR.fhQ));
    arrayOfObject2[3] = Long.valueOf(cj.FD());
    arrayOfObject2[4] = Integer.valueOf(h.M(al.getContext()));
    arrayOfObject2[5] = Integer.valueOf(CdnTransportEngine.coQ);
    arrayOfObject2[6] = Integer.valueOf(this.cpl.field_fileLength);
    arrayOfObject2[7] = this.cpl.field_transInfo;
    localm.d(10421, arrayOfObject2);
    aq.c(this.fhR.fhQ).a(paramInt1, paramInt2, "", this.fhR.fhQ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.as
 * JD-Core Version:    0.6.2
 */