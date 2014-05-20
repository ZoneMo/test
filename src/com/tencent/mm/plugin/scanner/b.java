package com.tencent.mm.plugin.scanner;

import android.annotation.SuppressLint;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.platformtools.n;
import com.tencent.mm.platformtools.o;
import com.tencent.mm.plugin.scanner.a.h;
import com.tencent.mm.plugin.scanner.a.i;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.util.HashMap;

public final class b
  implements bb
{

  @SuppressLint({"UseSparseArrays"})
  private static HashMap eaQ;
  private o cAg;
  private String chB;
  private i eaO;
  private h eaP = new h();
  private g eaR = new e(this);

  static
  {
    HashMap localHashMap = new HashMap();
    eaQ = localHashMap;
    localHashMap.put(Integer.valueOf("PRODUCT_TABLE".hashCode()), new c());
    System.loadLibrary("QrMod");
    System.loadLibrary("ImgProcessScan");
  }

  public static b ZA()
  {
    b localb = (b)be.uh().dN("plugin.scanner");
    if (localb == null)
    {
      localb = new b();
      be.uh().a("plugin.scanner", localb);
    }
    return localb;
  }

  public static i ZB()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (ZA().eaO == null)
      ZA().eaO = new i(be.uz().sp());
    return ZA().eaO;
  }

  public static String sX()
  {
    return ZA().chB;
  }

  public final void N(boolean paramBoolean)
  {
    com.tencent.mm.sdk.b.a.ayH().a("AppMsgInsert", this.eaR);
    com.tencent.mm.sdk.b.a.ayH().a("ProductOperation", this.eaP);
    be.ut().o(new d(this));
  }

  public final String ai(String paramString1, String paramString2)
  {
    if ((be.se()) && (!cj.hX(paramString1)))
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = (this.chB + "image/scan/img");
      arrayOfObject[1] = paramString2;
      arrayOfObject[2] = com.tencent.mm.a.f.h(paramString1.getBytes());
      return String.format("%s/scanbook%s_%s", arrayOfObject);
    }
    return "";
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
    b localb = ZA();
    String str = paramString2 + "CommonOneMicroMsg.db";
    aa.d("MicroMsg.scanner.SubCoreScanner", "initProductDB on accPath : " + paramString1);
    localb.chB = paramString1;
    File localFile1 = new File(paramString1);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(paramString1 + "image/scan/img");
    if (!localFile2.exists())
      localFile2.mkdirs();
    File localFile3 = new File(paramString1 + "image/scan/music");
    if (!localFile3.exists())
      localFile3.mkdirs();
    localb.cAg = n.a(localb.hashCode(), str, eaQ);
    localb.eaO = new i(localb.cAg);
  }

  public final void qy()
  {
    com.tencent.mm.sdk.b.a.ayH().b("AppMsgInsert", this.eaR);
    com.tencent.mm.sdk.b.a.ayH().b("ProductOperation", this.eaP);
    if (this.cAg != null)
    {
      this.cAg.eN(hashCode());
      this.cAg = null;
    }
    this.chB = "";
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b
 * JD-Core Version:    0.6.2
 */