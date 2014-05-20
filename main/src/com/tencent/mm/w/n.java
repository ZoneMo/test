package com.tencent.mm.w;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelcdntran.CdnTransportEngine;
import com.tencent.mm.modelcdntran.keep_ProgressInfo;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.io.File;

final class n
  implements com.tencent.mm.modelcdntran.n
{
  n(m paramm, int paramInt1, ak paramak, long paramLong, int paramInt2, String paramString1, String paramString2)
  {
  }

  public final int a(int paramInt, keep_ProgressInfo paramkeep_ProgressInfo, keep_SceneResult paramkeep_SceneResult)
  {
    if (paramInt != 0)
    {
      Object[] arrayOfObject5 = new Object[2];
      arrayOfObject5[0] = Integer.valueOf(this.ctt);
      arrayOfObject5[1] = Integer.valueOf(paramInt);
      aa.b("MicroMsg.ImgMsgExtension", "getThumbByCdn start failed: file:%s code:%d", arrayOfObject5);
      this.ctu.setStatus(5);
      be.uz().sw().a(this.ctu.AH(), this.ctu);
      com.tencent.mm.plugin.d.c.m localm2 = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject6 = new Object[8];
      arrayOfObject6[0] = Integer.valueOf(paramInt);
      arrayOfObject6[1] = Integer.valueOf(2);
      arrayOfObject6[2] = Long.valueOf(this.ctv);
      arrayOfObject6[3] = Long.valueOf(cj.FD());
      arrayOfObject6[4] = Integer.valueOf(com.tencent.mm.modelcdntran.h.M(al.getContext()));
      arrayOfObject6[5] = Integer.valueOf(CdnTransportEngine.coO);
      arrayOfObject6[6] = Integer.valueOf(this.ctw);
      arrayOfObject6[7] = "";
      localm2.d(10421, arrayOfObject6);
      ag.Ba().Ei();
      return 0;
    }
    if (paramkeep_SceneResult != null)
    {
      com.tencent.mm.plugin.d.c.m localm1;
      Object[] arrayOfObject3;
      if (paramkeep_SceneResult.field_retCode != 0)
      {
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = Integer.valueOf(this.ctt);
        arrayOfObject4[1] = Integer.valueOf(paramkeep_SceneResult.field_retCode);
        aa.b("MicroMsg.ImgMsgExtension", "getThumbByCdn failed: file:%s code:%d", arrayOfObject4);
        this.ctu.setStatus(5);
        if (!cj.hX(this.ctu.aCl()))
          be.uz().sw().a(this.ctu.AH(), this.ctu);
        localm1 = com.tencent.mm.plugin.d.c.m.dZN;
        arrayOfObject3 = new Object[8];
        if (paramkeep_SceneResult != null)
          break label590;
        label280: arrayOfObject3[0] = Integer.valueOf(paramInt);
        arrayOfObject3[1] = Integer.valueOf(2);
        arrayOfObject3[2] = Long.valueOf(this.ctv);
        arrayOfObject3[3] = Long.valueOf(cj.FD());
        arrayOfObject3[4] = Integer.valueOf(com.tencent.mm.modelcdntran.h.M(al.getContext()));
        arrayOfObject3[5] = Integer.valueOf(CdnTransportEngine.coO);
        arrayOfObject3[6] = Integer.valueOf(this.ctw);
        if (paramkeep_SceneResult != null)
          break label598;
      }
      label590: label598: for (String str = ""; ; str = paramkeep_SceneResult.field_transInfo)
      {
        arrayOfObject3[7] = str;
        localm1.d(10421, arrayOfObject3);
        ag.Ba().Ei();
        return 0;
        File localFile = new File(this.ctx);
        new File(this.cty).renameTo(localFile);
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(this.ctt);
        arrayOfObject1[1] = Boolean.valueOf(localFile.exists());
        aa.e("MicroMsg.ImgMsgExtension", "getThumbByCdn finished file:%s exist:%b", arrayOfObject1);
        this.ctu.setStatus(6);
        PInt localPInt1 = new PInt();
        PInt localPInt2 = new PInt();
        com.tencent.mm.sdk.platformtools.h.a(this.ctx, localPInt1, localPInt2);
        this.ctu.bXI = localPInt1.value;
        this.ctu.bXJ = localPInt2.value;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(localPInt1.value);
        arrayOfObject2[1] = Integer.valueOf(localPInt2.value);
        aa.d("MicroMsg.ImgMsgExtension", "thumbImg w:%d, h:%d", arrayOfObject2);
        if (cj.hX(this.ctu.aCl()))
          break;
        be.uz().sw().a(this.ctu.AH(), this.ctu);
        break;
        paramInt = paramkeep_SceneResult.field_retCode;
        break label280;
      }
    }
    ag.Ba().Ei();
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.n
 * JD-Core Version:    0.6.2
 */