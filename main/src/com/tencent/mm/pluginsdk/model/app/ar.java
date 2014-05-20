package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class ar
  implements n
{
  ar(aq paramaq)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = aq.a(this.fhQ);
    arrayOfObject1[1] = Integer.valueOf(paramInt);
    arrayOfObject1[2] = paramkeep_ProgressInfo;
    arrayOfObject1[3] = paramkeep_SceneResult;
    aa.e("MicroMsg.NetSceneUploadAppAttach", "cdntra cdnCallback clientid:%s startRet:%d proginfo:[%s] res:[%s]", arrayOfObject1);
    if (paramInt == -21005)
    {
      Object[] arrayOfObject7 = new Object[1];
      arrayOfObject7[0] = aq.a(this.fhQ);
      aa.e("MicroMsg.NetSceneUploadAppAttach", "cdntra  ERR_CNDCOM_MEDIA_IS_UPLOADING clientid:%s", arrayOfObject7);
    }
    do
    {
      boolean bool2;
      do
      {
        return 0;
        if (paramInt != 0)
        {
          s.bu(aq.b(this.fhQ).gfy);
          aq.c(this.fhQ).a(3, paramInt, "", this.fhQ);
          com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
          Object[] arrayOfObject6 = new Object[8];
          arrayOfObject6[0] = Integer.valueOf(paramInt);
          arrayOfObject6[1] = Integer.valueOf(1);
          arrayOfObject6[2] = Long.valueOf(aq.d(this.fhQ));
          arrayOfObject6[3] = Long.valueOf(cj.FD());
          arrayOfObject6[4] = Integer.valueOf(h.M(al.getContext()));
          arrayOfObject6[5] = Integer.valueOf(CdnTransportEngine.coQ);
          arrayOfObject6[6] = Integer.valueOf(0);
          arrayOfObject6[7] = "";
          localm2.d(10421, arrayOfObject6);
          return 0;
        }
        if (paramkeep_ProgressInfo == null)
          break;
        if (aq.b(this.fhQ).field_offset > paramkeep_ProgressInfo.field_finishedLength)
        {
          Object[] arrayOfObject5 = new Object[2];
          arrayOfObject5[0] = Long.valueOf(aq.b(this.fhQ).field_offset);
          arrayOfObject5[1] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
          aa.c("MicroMsg.NetSceneUploadAppAttach", "cdntra cdnEndProc error oldpos:%d newpos:%d", arrayOfObject5);
          return 0;
        }
        aq.b(this.fhQ).field_lastModifyTime = cj.FC();
        aq.b(this.fhQ).field_offset = paramkeep_ProgressInfo.field_finishedLength;
        bool2 = ba.HF().a(aq.b(this.fhQ), new String[0]);
      }
      while (bool2);
      aa.e("MicroMsg.NetSceneUploadAppAttach", "onGYNetEnd update info ret:" + bool2);
      aq.a(this.fhQ, -10000 - j.qe());
      aq.c(this.fhQ).a(3, paramInt, "", this.fhQ);
      return 0;
    }
    while (paramkeep_SceneResult == null);
    if (paramkeep_SceneResult.field_retCode != 0)
    {
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject3[1] = paramkeep_SceneResult.field_arg;
      arrayOfObject3[2] = paramkeep_SceneResult.field_transInfo;
      aa.b("MicroMsg.NetSceneUploadAppAttach", "cdntra sceneResult.retCode :%d arg[%s] info[%s]", arrayOfObject3);
      s.bu(aq.b(this.fhQ).gfy);
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject4 = new Object[8];
      arrayOfObject4[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject4[1] = Integer.valueOf(1);
      arrayOfObject4[2] = Long.valueOf(aq.d(this.fhQ));
      arrayOfObject4[3] = Long.valueOf(cj.FD());
      arrayOfObject4[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject4[5] = Integer.valueOf(CdnTransportEngine.coQ);
      arrayOfObject4[6] = Integer.valueOf(paramkeep_SceneResult.field_fileLength);
      arrayOfObject4[7] = paramkeep_SceneResult.field_transInfo;
      localm1.d(10421, arrayOfObject4);
      aq.c(this.fhQ).a(3, paramkeep_SceneResult.field_retCode, "", this.fhQ);
      return 0;
    }
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Boolean.valueOf(paramkeep_SceneResult.field_isHitCacheUpload);
    aa.d("MicroMsg.NetSceneUploadAppAttach", "upload attach by cdn, isHitCacheUpload: %b", arrayOfObject2);
    aq.b(this.fhQ).field_status = 199L;
    boolean bool1 = ba.HF().a(aq.b(this.fhQ), new String[0]);
    if (!bool1)
    {
      aa.e("MicroMsg.NetSceneUploadAppAttach", "onGYNetEnd update info ret:" + bool1);
      aq.a(this.fhQ, -10000 - j.qe());
      aq.c(this.fhQ).a(3, paramInt, "", this.fhQ);
      return 0;
    }
    s.e(aq.b(this.fhQ).field_msgInfoId, aq.b(this.fhQ).field_mediaSvrId);
    be.uA().d(new an(aq.b(this.fhQ).field_msgInfoId, true, paramkeep_SceneResult, new as(this, paramkeep_SceneResult)));
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ar
 * JD-Core Version:    0.6.2
 */