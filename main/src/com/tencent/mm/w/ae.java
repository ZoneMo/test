package com.tencent.mm.w;

import android.graphics.BitmapFactory.Options;
import com.tencent.mm.modelcdntran.keep_SceneResult;
import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.ye;
import com.tencent.mm.protocal.a.yf;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.h;

public final class ae extends x
  implements ab
{
  private m cjh;
  private final a cke;
  private af cug;

  public ae(ye paramye, e parame, keep_SceneResult paramkeep_SceneResult, af paramaf)
  {
    b localb = new b();
    localb.a(new ye());
    localb.b(new yf());
    localb.es("/cgi-bin/micromsg-bin/uploadmsgimg");
    localb.cN(110);
    localb.cO(9);
    localb.cP(1000000009);
    this.cke = localb.wx();
    this.cug = paramaf;
    ye localye = (ye)this.cke.wr();
    localye.fzs = paramye.fzs;
    localye.fzt = paramye.fzt;
    localye.fYw = paramye.fYw;
    localye.fzu = paramye.fzu;
    BitmapFactory.Options localOptions = h.ss(ag.Ba().j(parame.AJ(), "", ""));
    int i;
    if (localOptions != null)
    {
      i = localOptions.outWidth;
      localye.fYE = i;
      if (localOptions == null)
        break label329;
    }
    label329: for (int j = localOptions.outHeight; ; j = 0)
    {
      localye.fYD = j;
      localye.fYB = paramkeep_SceneResult.field_fileId;
      localye.fYC = paramkeep_SceneResult.field_thumbimgLength;
      localye.fAL = paramkeep_SceneResult.field_thumbimgLength;
      localye.fEd = 0;
      localye.fAU = paramkeep_SceneResult.field_thumbimgLength;
      localye.fAJ = new rv().bM(new byte[0]);
      localye.fAN = 1;
      localye.fGB = paramkeep_SceneResult.field_aesKey;
      localye.fYF = paramkeep_SceneResult.field_aesKey;
      localye.fLx = paramye.fLx;
      if (paramye.fLx != 1)
        break label335;
      localye.fYz = paramkeep_SceneResult.field_fileLength;
      localye.fYA = paramkeep_SceneResult.field_midimgLength;
      localye.fYx = paramkeep_SceneResult.field_fileId;
      localye.fYy = paramkeep_SceneResult.field_fileId;
      return;
      i = 0;
      break;
    }
    label335: localye.fYz = 0;
    localye.fYA = paramkeep_SceneResult.field_fileLength;
    localye.fYx = "";
    localye.fYy = paramkeep_SceneResult.field_fileId;
  }

  public final int a(r paramr, m paramm)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ((ye)this.cke.wr()).toString();
    aa.d("MicroMsg.NetSceneUploadMsgImgForCdn", "cdntra req[%s]", arrayOfObject);
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.i("MicroMsg.NetSceneUploadMsgImgForCdn", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3);
    yf localyf = (yf)((a)paramaj).ws();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(localyf.fzy);
    arrayOfObject[1] = Integer.valueOf(localyf.fzo);
    aa.e("MicroMsg.NetSceneUploadMsgImgForCdn", "onGYNetEnd createtime:%d msgId:%d ", arrayOfObject);
    if (this.cug != null)
      this.cug.g(localyf.fzo, localyf.fzy, paramInt2, paramInt3);
    this.cjh.a(0, 0, "", this);
  }

  public final int getType()
  {
    return 110;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.ae
 * JD-Core Version:    0.6.2
 */