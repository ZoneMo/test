package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;

final class ac
  implements n
{
  ac(ab paramab)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    if (paramInt == -21006)
    {
      Object[] arrayOfObject6 = new Object[1];
      arrayOfObject6[0] = ab.a(this.fhB);
      aa.e("MicroMsg.NetSceneDownloadAppAttach", "cdntra  ERR_CNDCOM_MEDIA_IS_DOWNLOADING clientid:%s", arrayOfObject6);
    }
    do
    {
      return 0;
      if (paramInt != 0)
      {
        s.bu(ab.b(this.fhB).gfy);
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject5 = new Object[8];
        arrayOfObject5[0] = Integer.valueOf(paramInt);
        arrayOfObject5[1] = Integer.valueOf(2);
        arrayOfObject5[2] = Long.valueOf(ab.c(this.fhB));
        arrayOfObject5[3] = Long.valueOf(cj.FD());
        arrayOfObject5[4] = Integer.valueOf(h.M(al.getContext()));
        arrayOfObject5[5] = Integer.valueOf(CdnTransportEngine.coQ);
        arrayOfObject5[6] = Integer.valueOf(0);
        arrayOfObject5[7] = "";
        localm2.d(10421, arrayOfObject5);
        ab.d(this.fhB).a(3, paramInt, "", this.fhB);
        return 0;
      }
      if (paramkeep_ProgressInfo != null)
      {
        if (paramkeep_ProgressInfo.field_finishedLength == ab.b(this.fhB).field_totalLen)
        {
          aa.d("MicroMsg.NetSceneDownloadAppAttach", "cdntra ignore progress 100%");
          return 0;
        }
        if (ab.b(this.fhB).field_offset > paramkeep_ProgressInfo.field_finishedLength)
        {
          Object[] arrayOfObject4 = new Object[2];
          arrayOfObject4[0] = Long.valueOf(ab.b(this.fhB).field_offset);
          arrayOfObject4[1] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
          aa.b("MicroMsg.NetSceneDownloadAppAttach", "cdnEndProc error oldpos:%d newpos:%d", arrayOfObject4);
          s.bu(ab.b(this.fhB).gfy);
          ab.d(this.fhB).a(3, paramInt, "", this.fhB);
          return 0;
        }
        ab.b(this.fhB).field_offset = paramkeep_ProgressInfo.field_finishedLength;
        ba.HF().a(ab.b(this.fhB), new String[0]);
        if (ab.e(this.fhB) != null)
          an.i(new ad(this));
        Object[] arrayOfObject3 = new Object[3];
        arrayOfObject3[0] = ab.a(this.fhB);
        arrayOfObject3[1] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
        arrayOfObject3[2] = Integer.valueOf(paramkeep_ProgressInfo.field_toltalLength);
        aa.e("MicroMsg.NetSceneDownloadAppAttach", "cdntra progresscallback id:%s finish:%d total:%d", arrayOfObject3);
        return 0;
      }
    }
    while (paramkeep_SceneResult == null);
    if (paramkeep_SceneResult.field_retCode != 0)
    {
      s.bu(ab.b(this.fhB).gfy);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      aa.b("MicroMsg.NetSceneDownloadAppAttach", "cdntra sceneResult.retCode :%d", arrayOfObject2);
      ab.d(this.fhB).a(3, paramkeep_SceneResult.field_retCode, "", this.fhB);
    }
    while (true)
    {
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject1 = new Object[8];
      arrayOfObject1[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject1[1] = Integer.valueOf(2);
      arrayOfObject1[2] = Long.valueOf(ab.c(this.fhB));
      arrayOfObject1[3] = Long.valueOf(cj.FD());
      arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject1[5] = Integer.valueOf(CdnTransportEngine.coQ);
      arrayOfObject1[6] = Long.valueOf(ab.b(this.fhB).field_totalLen);
      arrayOfObject1[7] = paramkeep_SceneResult.field_transInfo;
      localm1.d(10421, arrayOfObject1);
      if (ab.e(this.fhB) == null)
        break;
      an.i(new ae(this));
      return 0;
      new File(ab.f(this.fhB)).renameTo(new File(ab.b(this.fhB).field_fileFullPath));
      ab.b(this.fhB).field_status = 199L;
      ab.b(this.fhB).field_offset = ab.b(this.fhB).field_totalLen;
      ba.HF().a(ab.b(this.fhB), new String[0]);
      ab.d(this.fhB).a(0, 0, "", this.fhB);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ac
 * JD-Core Version:    0.6.2
 */