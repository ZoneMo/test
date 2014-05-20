package com.tencent.mm.pluginsdk.model.app;

import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.h;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.modelcdntran.n;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.g;
import java.io.File;

final class q
  implements n
{
  q(p paramp, ak paramak, long paramLong, int paramInt, String paramString, boolean paramBoolean)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    if (paramInt != 0)
    {
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Long.valueOf(this.ctu.Bo());
      arrayOfObject4[1] = Integer.valueOf(paramInt);
      aa.b("MicroMsg.AppMessageExtension", "getThumbByCdn start failed: msgid:%d code:%d", arrayOfObject4);
      m localm2 = m.dZN;
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
    m localm1;
    Object[] arrayOfObject1;
    int i;
    if (paramkeep_SceneResult != null)
    {
      if (paramkeep_SceneResult.field_retCode != 0)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Long.valueOf(this.ctu.Bo());
        arrayOfObject3[1] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
        aa.b("MicroMsg.AppMessageExtension", "getThumbByCdn failed: msgid:%d code:%d", arrayOfObject3);
      }
    }
    else
    {
      localm1 = m.dZN;
      arrayOfObject1 = new Object[8];
      if (paramkeep_SceneResult != null)
        break label514;
      i = -1;
      label214: arrayOfObject1[0] = Integer.valueOf(i);
      arrayOfObject1[1] = Integer.valueOf(2);
      arrayOfObject1[2] = Long.valueOf(this.ctv);
      arrayOfObject1[3] = Long.valueOf(cj.FD());
      arrayOfObject1[4] = Integer.valueOf(h.M(al.getContext()));
      arrayOfObject1[5] = Integer.valueOf(CdnTransportEngine.coO);
      arrayOfObject1[6] = Integer.valueOf(this.ctw);
      if (paramkeep_SceneResult != null)
        break label523;
    }
    label514: label523: for (String str1 = ""; ; str1 = paramkeep_SceneResult.field_transInfo)
    {
      arrayOfObject1[7] = str1;
      localm1.d(10421, arrayOfObject1);
      ag.Ba().Ei();
      return 0;
      byte[] arrayOfByte = c.g(this.cty, 0, -1);
      String str2 = ag.Ba().a(arrayOfByte, this.fho, Bitmap.CompressFormat.PNG);
      aa.d("MicroMsg.AppMessageExtension", j.qg() + " thumbData MsgInfo path:" + str2);
      if (!cj.hX(str2))
      {
        this.ctu.cL(512);
        this.ctu.uN(str2);
        be.uz().sw().a(this.ctu.AH(), this.ctu);
        aa.d("MicroMsg.AppMessageExtension", "new thumbnail saved, path" + str2);
      }
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Long.valueOf(this.ctu.Bo());
      if (str2 != null);
      for (boolean bool = new File(str2).exists(); ; bool = false)
      {
        arrayOfObject2[1] = Boolean.valueOf(bool);
        aa.d("MicroMsg.AppMessageExtension", "getThumbByCdn finished msgid:%d  exist:%b", arrayOfObject2);
        break;
      }
      i = paramkeep_SceneResult.field_retCode;
      break label214;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.q
 * JD-Core Version:    0.6.2
 */