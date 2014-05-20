package com.tencent.mm.plugin.wallet.c;

import android.content.Context;
import android.util.SparseArray;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.v;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.address.model.g;
import com.tencent.mm.plugin.wallet.address.model.i;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public final class c
  implements bb
{
  private String eWI;
  private boolean eXG = true;
  private int eXI = -1;
  private ArrayList eYk = new ArrayList();
  private SparseArray faA = null;
  private d faB = null;
  private int fas;
  private boolean fat = false;
  private long fau = -1L;
  private i fav = null;
  private com.tencent.mm.plugin.wallet.c faw = new com.tencent.mm.plugin.wallet.c();
  private com.tencent.mm.plugin.wallet.a fax = new com.tencent.mm.plugin.wallet.a();
  private com.tencent.mm.plugin.wallet.address.model.f fay = new com.tencent.mm.plugin.wallet.address.model.f();
  private g faz = new g();

  static
  {
    System.loadLibrary("tenpay_utils");
  }

  public c()
  {
    File localFile = new File(com.tencent.mm.plugin.wallet.d.a.aoE());
    if (!localFile.exists())
      localFile.mkdir();
  }

  public static c anX()
  {
    c localc = (c)be.uh().dN("plugin.wallet");
    if (localc == null)
    {
      aa.w("MicroMsg.SubCoreMMWallet", "not found in MMCore, new one");
      localc = new c();
      be.uh().a("plugin.wallet", localc);
    }
    return localc;
  }

  public static i anY()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (anX().fav == null)
      anX().fav = new i();
    return anX().fav;
  }

  public static String aoh()
  {
    return (String)be.uz().sr().get(196612, null);
  }

  public static String aoi()
  {
    return (String)be.uz().sr().get(196615, null);
  }

  public static String getUsername()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    return v.th();
  }

  public static void pC(String paramString)
  {
    if (!cj.hX(paramString))
      be.uz().sr().set(196612, paramString);
  }

  public static void pD(String paramString)
  {
    if (!cj.hX(paramString))
      be.uz().sr().set(196613, paramString);
  }

  public static void pE(String paramString)
  {
    if (paramString != null)
      be.uz().sr().set(196615, paramString);
  }

  public final void N(boolean paramBoolean)
  {
    com.tencent.mm.sdk.b.a.ayH().a("GetA8KeyRedirect", this.faw);
    com.tencent.mm.sdk.b.a.ayH().a("SaveBankLogo", this.fax);
    com.tencent.mm.sdk.b.a.ayH().a("RcptAddress", this.fay);
    com.tencent.mm.sdk.b.a.ayH().a("RcptRecentAddr", this.faz);
    this.eXI = -1;
    this.eYk = null;
    this.fav = null;
    this.fau = -1L;
  }

  public final void a(SparseArray paramSparseArray)
  {
    this.faA = paramSparseArray;
  }

  public final void a(d paramd)
  {
    this.faB = paramd;
  }

  public final void a(ArrayList paramArrayList, int paramInt1, String paramString, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.eYk = paramArrayList;
    this.eXI = paramInt1;
    this.eWI = paramString;
    this.fas = paramInt2;
    this.eXG = paramBoolean1;
    this.fat = paramBoolean2;
    this.fau = (System.currentTimeMillis() / 1000L);
    aa.d("MicroMsg.SubCoreMMWallet", "isReg : " + paramInt1 + ", name : " + paramString);
  }

  public final String aN(Context paramContext)
  {
    return c(paramContext, this.fas);
  }

  public final boolean anZ()
  {
    long l = cj.M(this.fau);
    aa.d("MicroMsg.SubCoreMMWallet", "pass time " + l);
    return l > 600L;
  }

  public final ArrayList aoa()
  {
    return this.eYk;
  }

  public final int aob()
  {
    return this.eXI;
  }

  public final String aoc()
  {
    return this.eWI;
  }

  public final int aod()
  {
    return this.fas;
  }

  public final boolean aoe()
  {
    return this.eXG;
  }

  public final boolean aof()
  {
    return this.eXI == 1;
  }

  public final boolean aog()
  {
    return this.fat;
  }

  public final void aoj()
  {
    if (this.faB != null)
      this.faB.close();
    this.faB = null;
  }

  public final void bJ(int paramInt)
  {
  }

  public final String c(Context paramContext, int paramInt)
  {
    if (this.faA != null)
    {
      String str = (String)this.faA.get(paramInt);
      if (!cj.hX(str))
        return str;
    }
    return paramContext.getString(n.bFF);
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final Bankcard pB(String paramString)
  {
    if ((this.eYk == null) || (this.eYk.size() <= 0))
    {
      aa.d("MicroMsg.SubCoreMMWallet", "not found bankcard!");
      return null;
    }
    if (this.eYk.size() == 1)
    {
      aa.d("MicroMsg.SubCoreMMWallet", "only one bankcard!");
      return (Bankcard)this.eYk.get(0);
    }
    aa.d("MicroMsg.SubCoreMMWallet", "have multiple bankcards!");
    if (paramString == null)
    {
      String str1 = (String)be.uz().sr().get(196612, null);
      if (str1 != null)
      {
        Iterator localIterator3 = this.eYk.iterator();
        while (localIterator3.hasNext())
        {
          Bankcard localBankcard3 = (Bankcard)localIterator3.next();
          if ((localBankcard3 != null) && (str1.equals(localBankcard3.eWT)))
            return localBankcard3;
        }
      }
      String str2 = (String)be.uz().sr().get(196613, null);
      if (str2 != null)
      {
        Iterator localIterator2 = this.eYk.iterator();
        Bankcard localBankcard2;
        do
        {
          if (!localIterator2.hasNext())
            break;
          localBankcard2 = (Bankcard)localIterator2.next();
        }
        while ((localBankcard2 == null) || (!str2.equals(localBankcard2.eWT)));
        return localBankcard2;
      }
    }
    else
    {
      Iterator localIterator1 = this.eYk.iterator();
      while (localIterator1.hasNext())
      {
        Bankcard localBankcard1 = (Bankcard)localIterator1.next();
        if ((localBankcard1 != null) && (paramString.equals(localBankcard1.eWT)))
          return localBankcard1;
      }
    }
    return (Bankcard)this.eYk.get(0);
  }

  public final void qy()
  {
    com.tencent.mm.sdk.b.a.ayH().b("GetA8KeyRedirect", this.faw);
    com.tencent.mm.sdk.b.a.ayH().b("SaveBankLogo", this.fax);
    com.tencent.mm.sdk.b.a.ayH().b("RcptAddress", this.fay);
    com.tencent.mm.sdk.b.a.ayH().b("RcptRecentAddr", this.faz);
  }

  public final HashMap qz()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.c.c
 * JD-Core Version:    0.6.2
 */