package com.tencent.mm.ui.voicetranstext;

import com.tencent.mm.modelvoice.bi;
import com.tencent.mm.modelvoice.u;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a.yi;
import com.tencent.mm.protocal.a.yj;
import com.tencent.mm.protocal.a.yk;
import com.tencent.mm.protocal.a.zi;
import com.tencent.mm.sdk.platformtools.aa;
import junit.framework.Assert;

public final class c extends x
  implements ab
{
  private final String TAG = "MicroMsg.NetSceneUploadVoiceForTrans";
  private a htS;
  private m htT;
  private String htU;
  private zi htW;
  private yi huc;
  private String mFileName;

  public c(c paramc)
  {
    this.htU = paramc.htU;
    this.htW = paramc.htW;
    this.huc = paramc.huc;
    this.mFileName = paramc.mFileName;
    aPs();
  }

  public c(String paramString1, yi paramyi, int paramInt, String paramString2)
  {
    if (paramString2 != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      this.htU = paramString1;
      this.huc = paramyi;
      this.htW = d.oF(paramInt);
      this.mFileName = paramString2;
      aPs();
      return;
    }
  }

  private void aPs()
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new yj());
    localb.b(new yk());
    localb.es("/cgi-bin/micromsg-bin/uploadvoicefortrans");
    localb.cN(547);
    localb.cO(0);
    localb.cP(0);
    this.htS = localb.wx();
  }

  public final int a(r paramr, m paramm)
  {
    this.htT = paramm;
    if ((!au.hX(this.mFileName)) && (!au.hX(this.htU)) && (this.huc != null) && (this.htW != null));
    for (int i = 1; i == 0; i = 0)
    {
      aa.e("MicroMsg.NetSceneUploadVoiceForTrans", "doScene: Value not Valid, so, do nothing.");
      return -1;
    }
    yj localyj = (yj)this.htS.wr();
    localyj.fDC = this.htU;
    localyj.fDD = this.htW;
    localyj.fDF = this.huc;
    String str = this.mFileName;
    int j = this.huc.fEd;
    int k = this.huc.fAU;
    localyj.fAJ = an.y(bi.hq(str).O(j, k).buf);
    return a(paramr, this.htS, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aPt();
    Object[] arrayOfObject2;
    if ((paramInt2 == 0) && (paramInt3 == 0))
    {
      this.huc = ((yk)this.htS.ws()).fDF;
      this.htT.a(paramInt2, paramInt3, paramString, this);
      if (aPt())
      {
        arrayOfObject2 = new Object[1];
        if (this.huc == null)
          break label120;
      }
    }
    label120: for (boolean bool = true; ; bool = false)
    {
      arrayOfObject2[0] = Boolean.valueOf(bool);
      aa.d("MicroMsg.NetSceneUploadVoiceForTrans", "succeeed finish: %B", arrayOfObject2);
      return;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt2);
      arrayOfObject1[1] = Integer.valueOf(paramInt3);
      aa.e("MicroMsg.NetSceneUploadVoiceForTrans", "error upload: errType:%d, errCode:%d", arrayOfObject1);
      break;
    }
  }

  public final yi aPo()
  {
    return this.huc;
  }

  public final boolean aPt()
  {
    return (this.huc == null) || (this.huc.fAU <= 0);
  }

  public final int getType()
  {
    return 547;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.c
 * JD-Core Version:    0.6.2
 */