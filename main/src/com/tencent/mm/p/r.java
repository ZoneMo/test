package com.tencent.mm.p;

import com.tencent.mm.m.c;
import com.tencent.mm.model.at;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.LBSManager;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.k;

public final class r
{
  private String bPx = null;
  private LBSManager cnY;
  private int cnZ = 0;
  private int coa = 2;
  private int cob = 10;
  private com.tencent.mm.sdk.e.ar coc = new s(this);

  protected r()
  {
    if (this.cob < this.coa)
      this.cob = this.coa;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.cob);
    aa.e("MicroMsg.ReportLocation", "reportLocation interval %d", arrayOfObject);
  }

  private static void a(String paramString, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, int paramInt3)
  {
    if (paramInt2 == 3);
    Object[] arrayOfObject;
    for (String str = "<event></event>"; ; str = String.format("<event><location><errcode>%d</errcode><data><latitude>%f</latitude><longitude>%f</longitude><precision>%d</precision></data></location></event>", arrayOfObject))
    {
      aa.e("MicroMsg.ReportLocation", "doScene, info: %s", new Object[] { str });
      be.uA().d(new z(paramString, paramInt1, str));
      return;
      arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(paramInt2);
      arrayOfObject[1] = Float.valueOf(paramFloat1);
      arrayOfObject[2] = Float.valueOf(paramFloat2);
      arrayOfObject[3] = Integer.valueOf(paramInt3);
    }
  }

  public static void eK(String paramString)
  {
    a(paramString, 10, 0, 0.0F, 0.0F, 0);
  }

  public static void eL(String paramString)
  {
    a(paramString, 12, 0, 0.0F, 0.0F, 0);
  }

  public final void eM(String paramString)
  {
    aa.d("MicroMsg.ReportLocation", "Start report");
    this.bPx = paramString;
    a locala = p.eI(paramString);
    if (locala == null);
    f localf;
    do
    {
      do
      {
        return;
        if (this.cnZ != 0)
          xZ();
        this.cnZ = 0;
        if (locala.xA())
        {
          aa.e("MicroMsg.ReportLocation", "need update contact %s", new Object[] { paramString });
          be.uz().su().a(this.coc);
          this.cnZ = 1;
          com.tencent.mm.model.ar.tZ().jdMethod_do(paramString);
          c.dX(paramString);
          return;
        }
        localf = locala.xu();
      }
      while (localf == null);
      if ((localf.cns) && (locala.xz()))
      {
        this.cnY = new LBSManager(al.getContext(), new t(this, (byte)0));
        if (locala.xu().cnt);
        for (int i = 3; ; i = 2)
        {
          this.cnZ = i;
          if ((!this.cnY.ayX()) && (!this.cnY.ayY()))
            break;
          this.cnY.lE(1000 * this.cob);
          return;
        }
        a(paramString, 11, 2, 0.0F, 0.0F, 0);
        return;
      }
    }
    while ((!localf.cns) || (locala.xz()));
    a(paramString, 11, 1, 0.0F, 0.0F, 0);
  }

  public final void xZ()
  {
    aa.d("MicroMsg.ReportLocation", "Stop report");
    this.cnZ = 0;
    if (this.cnY != null)
    {
      this.cnY.ayZ();
      this.cnY = null;
    }
    if (be.se())
      be.uz().su().b(this.coc);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.r
 * JD-Core Version:    0.6.2
 */