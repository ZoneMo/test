package com.tencent.mm.plugin.backup.b;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.n.m;
import com.tencent.mm.n.n;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.bm;
import com.tencent.mm.plugin.backup.model.AesEcb;
import com.tencent.mm.plugin.backup.model.r;
import com.tencent.mm.protocal.a.ag;
import com.tencent.mm.protocal.a.ah;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.sdk.platformtools.al;
import java.util.HashMap;
import java.util.Map;

public final class c extends a
{
  private static Map cLF = new HashMap();
  private static boolean cbK = false;
  private final long cAE = 1800000L;
  private int cIS = 8192;
  private String cJh;
  private String cLB = "";
  private int cLC = 0;
  private int cLD = 0;
  private n cLE = null;
  private com.tencent.mm.n.a cke;
  private final String cnG;
  private int offset = 0;

  public c(int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, n paramn)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ag());
    localb.b(new ah());
    localb.es("/cgi-bin/micromsg-bin/bakchatrecoverdata");
    localb.cN(327);
    localb.cO(0);
    localb.cP(1000000140);
    this.cke = localb.wx();
    int i;
    Integer localInteger;
    if (bm.ac(al.getContext()))
    {
      i = 131072;
      this.cIS = i;
      this.cLy = paramInt1;
      this.cJa = paramString1;
      this.cJh = paramString2;
      this.cLC = paramInt2;
      ag localag = (ag)this.cke.wr();
      localag.fAi = paramString1;
      localag.fAj = paramInt1;
      localag.fzT = paramString2;
      localag.dGR = paramInt2;
      this.cLE = paramn;
      this.cLB = (paramString3 + "mmbakItem/" + r.ip(paramString2));
      if (paramInt2 == 2)
        this.cLB = (paramString3 + "mmbakMeida/" + r.ip(paramString2));
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatRecoverData", "req recover clientMsgId: " + paramString2);
      this.cnG = (this.cLy + "," + paramString1 + paramString2);
      localInteger = (Integer)cLF.get(this.cnG);
      if (localInteger != null)
        break label397;
    }
    label397: for (int j = 0; ; j = localInteger.intValue())
    {
      this.offset = j;
      if (this.offset == 0)
        com.tencent.mm.a.c.deleteFile(this.cLB + paramString2);
      HK();
      return;
      i = 16384;
      break;
    }
  }

  public static void HJ()
  {
    cLF.clear();
  }

  private boolean HK()
  {
    ag localag = (ag)this.cke.wr();
    localag.fAG = 0;
    localag.fAF = this.cIS;
    localag.fAE = this.offset;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatRecoverData", "req offset : " + this.offset + " clientMsgId " + this.cJh + " " + this.cIS + " bakchatSvrID: " + this.cLy);
    return true;
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

  public final String HL()
  {
    return this.cJh;
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatRecoverData", "onGYNetEnd errType:" + paramInt2 + " errCode:" + paramInt3);
    if ((paramInt2 != 0) || (paramInt3 != 0))
      this.cjh.a(paramInt2, paramInt3, paramString, this);
    label433: 
    while (true)
    {
      return;
      ah localah = (ah)((com.tencent.mm.n.a)paramaj).ws();
      this.offset = localah.fAE;
      this.ckU = localah.fAL;
      byte[] arrayOfByte1 = localah.fAJ.ayh().getBytes();
      byte[] arrayOfByte3;
      boolean bool;
      if (com.tencent.mm.plugin.backup.model.d.Gt() != null)
      {
        arrayOfByte3 = com.tencent.mm.plugin.backup.model.d.Gt();
        if (this.offset == this.ckU)
          bool = true;
      }
      label122: for (byte[] arrayOfByte2 = AesEcb.aesCryptEcb(arrayOfByte1, arrayOfByte3, false, bool); ; arrayOfByte2 = arrayOfByte1)
      {
        if ((this.ckU == 0) || (arrayOfByte2 == null) || (arrayOfByte2.length == 0))
          break label433;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatRecoverData", "resp " + this.cJh + " " + localah.fAL + "  endFlag " + localah.fAK + " buf: " + arrayOfByte2.length);
        this.cLz = arrayOfByte2.length;
        this.cLD = 0;
        if (this.cLE != null)
          new Handler(Looper.getMainLooper()).post(new d(this));
        com.tencent.mm.a.c.b(this.cLB, this.cJh, arrayOfByte2);
        cLF.put(this.cnG, Integer.valueOf(this.offset));
        if ((this.offset == this.ckU) && (this.ckU != 0))
        {
          cLF.remove(this.cnG);
          this.cjh.a(paramInt2, paramInt3, paramString, this);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBakChatRecoverData", "recover media finish! clientMsgId :" + this.cJh);
          return;
          bool = false;
          break label122;
        }
        HK();
        if ((!cbK) && (a(wM(), this.cjh) >= 0))
          break;
        if (cbK);
        for (int i = 9999; ; i = -1)
        {
          this.cjh.a(3, i, "doScene failed", this);
          return;
        }
      }
    }
  }

  protected final void cancel()
  {
    super.cancel();
    cLF.remove(this.cnG);
  }

  public final int getType()
  {
    return 327;
  }

  protected final int we()
  {
    return 1000;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.b.c
 * JD-Core Version:    0.6.2
 */