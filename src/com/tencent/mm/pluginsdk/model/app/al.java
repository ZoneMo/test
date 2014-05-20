package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ap;

final class al
  implements n
{
  al(ak paramak)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = ak.a(this.fhJ);
    arrayOfObject1[1] = Integer.valueOf(paramInt);
    arrayOfObject1[2] = paramkeep_ProgressInfo;
    arrayOfObject1[3] = paramkeep_SceneResult;
    aa.e("MicroMsg.NetSceneSendAppMsg", "cdntra cdnCallback clientid:%s startRet:%d proginfo:[%s] res:[%s]", arrayOfObject1);
    if (paramInt == -21005)
    {
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = ak.a(this.fhJ);
      aa.e("MicroMsg.NetSceneSendAppMsg", "cdntra  ERR_CNDCOM_MEDIA_IS_UPLOADING clientid:%s", arrayOfObject5);
    }
    do
    {
      return 0;
      if (paramInt != 0)
      {
        ak.b(this.fhJ).cL(8);
        ak.b(this.fhJ).setStatus(5);
        be.uz().sw().a(ak.b(this.fhJ).Bo(), ak.b(this.fhJ));
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject4 = new Object[8];
        arrayOfObject4[0] = Integer.valueOf(paramInt);
        arrayOfObject4[1] = Integer.valueOf(1);
        arrayOfObject4[2] = Long.valueOf(ak.c(this.fhJ));
        arrayOfObject4[3] = Long.valueOf(cj.FD());
        arrayOfObject4[4] = Integer.valueOf(h.M(com.tencent.mm.sdk.platformtools.al.getContext()));
        arrayOfObject4[5] = Integer.valueOf(CdnTransportEngine.coQ);
        arrayOfObject4[6] = Integer.valueOf(0);
        arrayOfObject4[7] = "";
        localm2.d(10421, arrayOfObject4);
        ak.d(this.fhJ).a(3, paramInt, "", this.fhJ);
        return 0;
      }
    }
    while (paramkeep_SceneResult == null);
    if (paramkeep_SceneResult.field_retCode != 0)
    {
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject2[1] = paramkeep_SceneResult.field_arg;
      arrayOfObject2[2] = paramkeep_SceneResult.field_transInfo;
      aa.b("MicroMsg.NetSceneSendAppMsg", "cdntra sceneResult.retCode :%d arg[%s] info[%s]", arrayOfObject2);
      ak.b(this.fhJ).cL(8);
      ak.b(this.fhJ).setStatus(5);
      be.uz().sw().a(ak.b(this.fhJ).Bo(), ak.b(this.fhJ));
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject3 = new Object[8];
      arrayOfObject3[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject3[1] = Integer.valueOf(1);
      arrayOfObject3[2] = Long.valueOf(ak.c(this.fhJ));
      arrayOfObject3[3] = Long.valueOf(cj.FD());
      arrayOfObject3[4] = Integer.valueOf(h.M(com.tencent.mm.sdk.platformtools.al.getContext()));
      arrayOfObject3[5] = Integer.valueOf(CdnTransportEngine.coQ);
      arrayOfObject3[6] = Integer.valueOf(paramkeep_SceneResult.field_fileLength);
      arrayOfObject3[7] = paramkeep_SceneResult.field_transInfo;
      localm1.d(10421, arrayOfObject3);
      ak.d(this.fhJ).a(3, paramkeep_SceneResult.field_retCode, "", this.fhJ);
      return 0;
    }
    be.uA().d(new an(ak.e(this.fhJ), false, paramkeep_SceneResult, new am(this, paramkeep_SceneResult)));
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.al
 * JD-Core Version:    0.6.2
 */