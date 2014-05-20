package com.tencent.mm.ai;

import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;

final class e
  implements n
{
  e(d paramd)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    if (paramInt == -21006)
    {
      Object[] arrayOfObject7 = new Object[1];
      arrayOfObject7[0] = d.a(this.cAB);
      aa.e("MicroMsg.NetSceneDownloadVideo", "cdntra  ERR_CNDCOM_MEDIA_IS_DOWNLOADING clientid:%s", arrayOfObject7);
    }
    do
    {
      return 0;
      if (paramInt != 0)
      {
        v.hd(d.b(this.cAB));
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject6 = new Object[8];
        arrayOfObject6[0] = Integer.valueOf(paramInt);
        arrayOfObject6[1] = Integer.valueOf(2);
        arrayOfObject6[2] = Long.valueOf(d.c(this.cAB));
        arrayOfObject6[3] = Long.valueOf(cj.FD());
        arrayOfObject6[4] = Integer.valueOf(h.M(al.getContext()));
        arrayOfObject6[5] = Integer.valueOf(CdnTransportEngine.coP);
        arrayOfObject6[6] = Integer.valueOf(d.d(this.cAB));
        arrayOfObject6[7] = "";
        localm2.d(10421, arrayOfObject6);
        d.e(this.cAB).a(3, paramInt, "", this.cAB);
        return 0;
      }
      if (paramkeep_ProgressInfo != null)
      {
        if (paramkeep_ProgressInfo.field_finishedLength == d.d(this.cAB))
        {
          aa.d("MicroMsg.NetSceneDownloadVideo", "cdntra ignore progress 100%");
          return 0;
        }
        if (d.f(this.cAB).DI() > paramkeep_ProgressInfo.field_finishedLength)
        {
          Object[] arrayOfObject5 = new Object[2];
          arrayOfObject5[0] = Integer.valueOf(d.f(this.cAB).DI());
          arrayOfObject5[1] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
          aa.b("MicroMsg.NetSceneDownloadVideo", "cdnEndProc error oldpos:%d newpos:%d", arrayOfObject5);
          v.hd(d.b(this.cAB));
          d.e(this.cAB).a(3, paramInt, "", this.cAB);
          return 0;
        }
        d.f(this.cAB).H(cj.FC());
        d.f(this.cAB).ew(paramkeep_ProgressInfo.field_finishedLength);
        d.f(this.cAB).cL(1040);
        v.d(d.f(this.cAB));
        Object[] arrayOfObject4 = new Object[3];
        arrayOfObject4[0] = d.a(this.cAB);
        arrayOfObject4[1] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
        arrayOfObject4[2] = Integer.valueOf(paramkeep_ProgressInfo.field_toltalLength);
        aa.e("MicroMsg.NetSceneDownloadVideo", "cdntra progresscallback id:%s finish:%d total:%d", arrayOfObject4);
        return 0;
      }
    }
    while (paramkeep_SceneResult == null);
    if (paramkeep_SceneResult.field_retCode != 0)
    {
      v.hd(d.b(this.cAB));
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      aa.b("MicroMsg.NetSceneDownloadVideo", "cdntra sceneResult.retCode :%d", arrayOfObject3);
      d.e(this.cAB).a(3, paramkeep_SceneResult.field_retCode, "", this.cAB);
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject2 = new Object[8];
      arrayOfObject2[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject2[1] = Integer.valueOf(2);
      arrayOfObject2[2] = Long.valueOf(d.c(this.cAB));
      arrayOfObject2[3] = Long.valueOf(cj.FD());
      arrayOfObject2[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject2[5] = Integer.valueOf(CdnTransportEngine.coP);
      arrayOfObject2[6] = Integer.valueOf(d.d(this.cAB));
      arrayOfObject2[7] = paramkeep_SceneResult.field_transInfo;
      localm1.d(10421, arrayOfObject2);
      return 0;
    }
    new File(m.DE().gZ(d.b(this.cAB)) + ".tmp").renameTo(new File(m.DE().gZ(d.b(this.cAB))));
    int i = v.w(d.b(this.cAB), paramkeep_SceneResult.field_fileLength);
    Object[] arrayOfObject1 = new Object[5];
    arrayOfObject1[0] = d.b(this.cAB);
    arrayOfObject1[1] = Integer.valueOf(d.f(this.cAB).AH());
    arrayOfObject1[2] = d.f(this.cAB).DG();
    arrayOfObject1[3] = d.f(this.cAB).getUser();
    if (i == 1);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject1[4] = Boolean.valueOf(bool);
      aa.d("MicroMsg.NetSceneDownloadVideo", "cdntra !FIN! file:%s svrid:%d human:%s user:%s updatedbsucc:%b", arrayOfObject1);
      d.e(this.cAB).a(0, 0, "", this.cAB);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.e
 * JD-Core Version:    0.6.2
 */