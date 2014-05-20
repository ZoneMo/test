package com.tencent.mm.ai;

import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.b;
import com.tencent.mm.modelcdntran.j;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class h
  implements n
{
  h(g paramg)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = g.a(this.cAI);
    arrayOfObject1[1] = Integer.valueOf(paramInt);
    arrayOfObject1[2] = paramkeep_ProgressInfo;
    arrayOfObject1[3] = paramkeep_SceneResult;
    aa.e("MicroMsg.NetSceneUploadVideo", "cdntra cdnCallback clientid:%s startRet:%d proginfo:[%s] res:[%s]", arrayOfObject1);
    if (paramInt == -21005)
    {
      Object[] arrayOfObject8 = new Object[1];
      arrayOfObject8[0] = g.a(this.cAI);
      aa.e("MicroMsg.NetSceneUploadVideo", "cdntra  ERR_CNDCOM_MEDIA_IS_UPLOADING clientid:%s", arrayOfObject8);
    }
    do
    {
      return 0;
      if (paramInt != 0)
      {
        v.hd(g.b(this.cAI));
        com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject7 = new Object[8];
        arrayOfObject7[0] = Integer.valueOf(paramInt);
        arrayOfObject7[1] = Integer.valueOf(1);
        arrayOfObject7[2] = Long.valueOf(g.c(this.cAI));
        arrayOfObject7[3] = Long.valueOf(cj.FD());
        arrayOfObject7[4] = Integer.valueOf(com.tencent.mm.modelcdntran.h.M(al.getContext()));
        arrayOfObject7[5] = Integer.valueOf(CdnTransportEngine.coP);
        arrayOfObject7[6] = Integer.valueOf(0);
        arrayOfObject7[7] = "";
        localm2.d(10421, arrayOfObject7);
        g.d(this.cAI).a(3, paramInt, "", this.cAI);
        return 0;
      }
      g.a(this.cAI, v.hh(g.b(this.cAI)));
      if ((g.e(this.cAI) == null) || (g.e(this.cAI).getStatus() == 105))
      {
        if (g.e(this.cAI) == null);
        for (int i = -1; ; i = g.e(this.cAI).getStatus())
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(i);
          aa.d("MicroMsg.NetSceneUploadVideo", "info is null or has paused, status:%d", arrayOfObject2);
          j.yy().eT(g.a(this.cAI));
          g.d(this.cAI).a(3, paramInt, "info is null or has paused, status" + i, this.cAI);
          return 0;
        }
      }
      if (paramkeep_ProgressInfo != null)
      {
        if (g.e(this.cAI).DH() > paramkeep_ProgressInfo.field_finishedLength)
        {
          Object[] arrayOfObject6 = new Object[2];
          arrayOfObject6[0] = Integer.valueOf(g.e(this.cAI).DH());
          arrayOfObject6[1] = Integer.valueOf(paramkeep_ProgressInfo.field_finishedLength);
          aa.c("MicroMsg.NetSceneUploadVideo", "cdntra cdnEndProc error oldpos:%d newpos:%d", arrayOfObject6);
          return 0;
        }
        g.e(this.cAI).H(cj.FC());
        g.e(this.cAI).ev(paramkeep_ProgressInfo.field_finishedLength);
        g.e(this.cAI).cL(1032);
        v.d(g.e(this.cAI));
        return 0;
      }
    }
    while (paramkeep_SceneResult == null);
    if (paramkeep_SceneResult.field_retCode != 0)
    {
      Object[] arrayOfObject4 = new Object[3];
      arrayOfObject4[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject4[1] = paramkeep_SceneResult.field_arg;
      arrayOfObject4[2] = paramkeep_SceneResult.field_transInfo;
      aa.b("MicroMsg.NetSceneUploadVideo", "cdntra sceneResult.retCode :%d arg[%s] info[%s]", arrayOfObject4);
      v.hd(g.b(this.cAI));
      com.tencent.mm.plugin.d.c.m localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject5 = new Object[8];
      arrayOfObject5[0] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
      arrayOfObject5[1] = Integer.valueOf(1);
      arrayOfObject5[2] = Long.valueOf(g.c(this.cAI));
      arrayOfObject5[3] = Long.valueOf(cj.FD());
      arrayOfObject5[4] = Integer.valueOf(com.tencent.mm.modelcdntran.h.M(al.getContext()));
      arrayOfObject5[5] = Integer.valueOf(CdnTransportEngine.coP);
      arrayOfObject5[6] = Integer.valueOf(paramkeep_SceneResult.field_fileLength);
      arrayOfObject5[7] = paramkeep_SceneResult.field_transInfo;
      localm1.d(10421, arrayOfObject5);
      g.d(this.cAI).a(3, paramkeep_SceneResult.field_retCode, "", this.cAI);
      return 0;
    }
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = Boolean.valueOf(paramkeep_SceneResult.field_isHitCacheUpload);
    aa.d("MicroMsg.NetSceneUploadVideo", "uploadvideo by cdn, isHitCacheUpload: %b", arrayOfObject3);
    g.a(this.cAI, v.hh(g.b(this.cAI)));
    if (cj.hX(g.e(this.cAI).DT()))
    {
      String str1 = "<msg><videomsg aeskey=\"" + paramkeep_SceneResult.field_aesKey + "\" cdnthumbaeskey=\"" + paramkeep_SceneResult.field_aesKey + "\" cdnvideourl=\"" + paramkeep_SceneResult.field_fileId + "\" ";
      String str2 = str1 + "cdnthumburl=\"" + paramkeep_SceneResult.field_fileId + "\" ";
      String str3 = str2 + "length=\"" + paramkeep_SceneResult.field_fileLength + "\" ";
      String str4 = str3 + "cdnthumblength=\"" + paramkeep_SceneResult.field_thumbimgLength + "\"/></msg>";
      aa.d("MicroMsg.NetSceneUploadVideo", "cdn callback new build cdnInfo:%s", new Object[] { str4 });
      g.e(this.cAI).gU(str4);
      v.d(g.e(this.cAI));
    }
    be.uA().d(new k(g.b(this.cAI), paramkeep_SceneResult, new i(this, paramkeep_SceneResult)));
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.h
 * JD-Core Version:    0.6.2
 */