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

final class x
  implements n
{
  x(w paramw, q paramq, long paramLong, int paramInt, String paramString1, String paramString2)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    if (paramInt != 0)
    {
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = this.cBh.getFileName();
      arrayOfObject4[1] = Integer.valueOf(paramInt);
      aa.b("MicroMsg.VideoMsgExtension", "getThumbByCdn start failed: file:%s code:%d", arrayOfObject4);
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject5 = new Object[8];
      arrayOfObject5[0] = Integer.valueOf(paramInt);
      arrayOfObject5[1] = Integer.valueOf(2);
      arrayOfObject5[2] = Long.valueOf(this.ctv);
      arrayOfObject5[3] = Long.valueOf(cj.FD());
      arrayOfObject5[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject5[5] = Integer.valueOf(CdnTransportEngine.coO);
      arrayOfObject5[6] = Integer.valueOf(this.ctw);
      arrayOfObject5[7] = "";
      localm2.d(10421, arrayOfObject5);
      return paramInt;
    }
    com.tencent.mm.plugin.d.c.m localm1;
    Object[] arrayOfObject1;
    int i;
    if (paramkeep_SceneResult != null)
    {
      if (paramkeep_SceneResult.field_retCode != 0)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = this.cBh.getFileName();
        arrayOfObject3[1] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
        aa.b("MicroMsg.VideoMsgExtension", "getThumbByCdn failed: file:%s code:%d", arrayOfObject3);
      }
    }
    else
    {
      localm1 = com.tencent.mm.plugin.d.c.m.dZN;
      arrayOfObject1 = new Object[8];
      if (paramkeep_SceneResult != null)
        break label392;
      i = -1;
      label208: arrayOfObject1[0] = Integer.valueOf(i);
      arrayOfObject1[1] = Integer.valueOf(2);
      arrayOfObject1[2] = Long.valueOf(this.ctv);
      arrayOfObject1[3] = Long.valueOf(cj.FD());
      arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject1[5] = Integer.valueOf(CdnTransportEngine.coO);
      arrayOfObject1[6] = Integer.valueOf(this.ctw);
      if (paramkeep_SceneResult != null)
        break label401;
    }
    label392: label401: for (String str = ""; ; str = paramkeep_SceneResult.field_transInfo)
    {
      arrayOfObject1[7] = str;
      localm1.d(10421, arrayOfObject1);
      m.DE().gV(this.cBh.getFileName());
      return 0;
      File localFile = new File(this.ctx);
      new File(this.cty).renameTo(localFile);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = this.cBh.getFileName();
      arrayOfObject2[1] = Boolean.valueOf(localFile.exists());
      aa.d("MicroMsg.VideoMsgExtension", "getThumbByCdn finished file:%s exist:%b", arrayOfObject2);
      break;
      i = paramkeep_SceneResult.field_retCode;
      break label208;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.x
 * JD-Core Version:    0.6.2
 */