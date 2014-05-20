package com.tencent.mm.sandbox.updater;

import android.os.Handler;
import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.compatible.g.l;
import com.tencent.mm.sandbox.b;
import com.tencent.mm.sandbox.monitor.j;

public final class w extends j
{
  private String bKC;
  private boolean cuA = false;
  private String[] gaW;
  private b gbn;
  private aa gbt = null;
  private int gbu = 0;
  private boolean gbv = false;
  private String gbw;
  private Handler gbx = new x(this);
  private b gby = new z(this);

  public w(int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, String paramString4)
  {
    super(paramInt1, paramString1, paramInt2);
    this.gaW = new String[] { paramString2 };
    this.gbv = true;
    this.bKC = paramString3;
    this.gbw = paramString4;
  }

  public w(int paramInt1, String paramString, int paramInt2, String[] paramArrayOfString)
  {
    super(paramInt1, paramString, paramInt2);
    this.gaW = paramArrayOfString;
  }

  private int ayF()
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneGetUpdatePackFromCDN", "requestCount=" + this.gbu + ", curLinkIdx = " + this.gbu / 5);
    return this.gbu / 5;
  }

  public final void a(b paramb)
  {
    this.gbn = paramb;
    if (!l.getExternalStorageState().equals("mounted"))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "SDCard not available.");
      paramb.a(-1, -1, null);
      return;
    }
    if (this.cuA)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "netscene had been canceled.");
      paramb.a(-1, -1, null);
      return;
    }
    if (ayF() >= this.gaW.length)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "exceed max download url. url count = " + this.gaW.length);
      if (this.gbv)
      {
        paramb.a(1, -1, null);
        return;
      }
      paramb.a(-1, -1, null);
      return;
    }
    if (!i.m(this.gaP))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "SDCard full");
      if (this.gbv)
      {
        paramb.a(13, -1, null);
        return;
      }
      paramb.a(-1, -1, null);
      return;
    }
    this.gbt = new aa(this, this.gaP, c.ar(ayA()), this.gby);
    aa localaa = this.gbt;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.gaW[ayF()];
    localaa.execute(arrayOfString);
  }

  protected final String ayA()
  {
    if (this.gbv)
      return gaN + this.bKC + ".temp";
    return super.ayA();
  }

  public final String ayB()
  {
    if (this.gbv)
      return gaN + this.gbw + ".apk";
    return gaN + this.gaR + ".apk";
  }

  public final void cancel()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "cancle netscene");
    this.cuA = true;
    if ((this.gbt != null) && (!this.gbt.isCancelled()))
      this.gbt.cancel(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.w
 * JD-Core Version:    0.6.2
 */