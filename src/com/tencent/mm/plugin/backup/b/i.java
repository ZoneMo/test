package com.tencent.mm.plugin.backup.b;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.a.c;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.n;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.bm;
import com.tencent.mm.plugin.backup.model.AesEcb;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.protocal.a.aq;
import com.tencent.mm.protocal.a.ar;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.al;
import java.util.HashMap;
import java.util.Map;

public final class i extends a
{
  private static Map cLF = new HashMap();
  private static boolean cbK = false;
  private final long cAE = 1800000L;
  private n cLE = null;
  private int cLK = 100;
  private String cLL;
  private String cLM = "";
  private com.tencent.mm.n.a cke;
  private final String cnG;
  private String mediaId;
  private int offset = 0;

  public i(int paramInt, String paramString1, String paramString2, String paramString3, n paramn, String paramString4)
  {
    b localb = new b();
    localb.a(new aq());
    localb.b(new ar());
    localb.es("/cgi-bin/micromsg-bin/bakchatuploadmedia");
    localb.cN(324);
    localb.cO(0);
    localb.cP(1000000137);
    this.cke = localb.wx();
    this.cLy = paramInt;
    this.cJa = paramString1;
    this.mediaId = paramString2;
    this.cLM = paramString3;
    this.cLL = paramString4;
    aq localaq = (aq)this.cke.wr();
    localaq.fAi = paramString1;
    localaq.fAj = paramInt;
    localaq.fAG = 0;
    localaq.fAK = 0;
    localaq.fAS = paramString2;
    this.ckU = c.ar(this.cLM);
    this.cnG = (paramInt + "," + paramString1 + paramString2);
    Integer localInteger = (Integer)cLF.get(this.cnG);
    if (localInteger == null);
    for (int i = 0; ; i = localInteger.intValue())
    {
      this.offset = i;
      if (this.ckU <= 0)
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBakChatUploadMedia", "error totalen < 0 " + this.cLM);
      this.cLK = (10 + this.ckU / 8192);
      if (this.cLK < 100)
        this.cLK = 100;
      this.cLE = paramn;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatUploadMedia", "mediaId: " + paramString2 + " totalLen " + this.ckU);
      HK();
      return;
    }
  }

  public static void HJ()
  {
    cLF.clear();
  }

  private boolean HK()
  {
    int i;
    int j;
    if (bm.ac(al.getContext()))
    {
      i = 16384;
      j = this.ckU - this.offset;
      if (j <= i)
        break label250;
    }
    while (true)
    {
      byte[] arrayOfByte1 = c.g(this.cLM, this.offset, i);
      byte[] arrayOfByte2;
      if (d.Gt() != null)
      {
        arrayOfByte2 = d.Gt();
        if (i + this.offset != this.ckU)
          break label96;
      }
      label96: for (boolean bool = true; ; bool = false)
      {
        arrayOfByte1 = AesEcb.aesCryptEcb(arrayOfByte1, arrayOfByte2, true, bool);
        if ((arrayOfByte1 != null) && (arrayOfByte1.length > 0))
          break label102;
        return false;
        i = 8192;
        break;
      }
      label102: rv localrv = new rv();
      localrv.bM(arrayOfByte1);
      aq localaq = (aq)this.cke.wr();
      localaq.fAJ = localrv;
      localaq.fAI = arrayOfByte1.length;
      localaq.fAE = this.offset;
      localaq.fAG = 0;
      if (this.offset + arrayOfByte1.length >= this.ckU)
        localaq.fAK = 1;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatUploadMedia", "req " + localaq.fAK + " " + localaq.fAE + " " + localaq.fAI + " mediaId: " + this.mediaId);
      this.cLz = arrayOfByte1.length;
      return true;
      label250: i = j;
    }
  }

  public static void pause()
  {
    cbK = true;
  }

  public static void resume()
  {
    cbK = false;
  }

  public final aj HH()
  {
    return this.cke;
  }

  public final String HQ()
  {
    return this.cLL;
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatUploadMedia", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    ar localar = (ar)((com.tencent.mm.n.a)paramaj).ws();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatUploadMedia", "resp " + localar.fAj + " " + localar.fAK + " " + localar.fAF + " " + localar.fAE + " mediaId: " + this.mediaId);
    if (paramInt2 == 4)
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    do
    {
      return;
      if ((paramInt2 != 0) || (paramInt3 != 0))
      {
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      if ((localar.fAE < 0) || ((localar.fAE > this.ckU) && (this.ckU > 0)))
      {
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      if (localar.fAE < this.offset)
      {
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      this.offset = localar.fAE;
      cLF.put(this.cnG, Integer.valueOf(this.offset));
      if (this.cLE != null)
        new Handler(Looper.getMainLooper()).post(new j(this));
      if ((this.offset == this.ckU) && (this.ckU != 0))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatUploadMedia", "mediaId : " + this.mediaId + " finish!");
        cLF.remove(this.cnG);
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatUploadMedia", "upload media finish!");
        return;
      }
    }
    while ((!HK()) || ((!cbK) && (a(wM(), this.cjh) >= 0)));
    if (cbK);
    for (int i = 9999; ; i = -1)
    {
      this.cjh.a(3, i, "doScene failed", this);
      return;
    }
  }

  protected final void cancel()
  {
    super.cancel();
    cLF.remove(this.cnG);
  }

  public final int getType()
  {
    return 324;
  }

  public final String oJ()
  {
    return this.mediaId;
  }

  protected final int we()
  {
    return this.cLK;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.i
 * JD-Core Version:    0.6.2
 */