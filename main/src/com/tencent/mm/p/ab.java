package com.tencent.mm.p;

import android.content.Context;
import com.tencent.mm.model.a;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.q;
import com.tencent.mm.n.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.o;
import java.util.HashMap;
import java.util.Locale;

public class ab
  implements bb
{
  private static HashMap bZd;
  private q ciI = new q();
  private k coo;
  private v cop = null;
  private x coq = null;
  private r cor = null;
  private com.tencent.mm.compatible.loader.b cos = null;
  private com.tencent.mm.storage.r cot = new ad(this);
  private m cou = new ae(this);

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("BIZINFO_TABLE".hashCode()), new ac());
  }

  private static ab yd()
  {
    ab localab = (ab)be.uh().dN(ab.class.getName());
    if (localab == null)
    {
      localab = new ab();
      be.uh().a(ab.class.getName(), localab);
    }
    return localab;
  }

  public static k ye()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (yd().coo == null)
      yd().coo = new k(be.uz().sp());
    return yd().coo;
  }

  public static v yf()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (yd().cop == null)
      yd().cop = new v();
    return yd().cop;
  }

  public static x yg()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (yd().coq == null)
      yd().coq = new x();
    return yd().coq;
  }

  public static r yh()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (yd().cor == null)
      yd().cor = new r();
    return yd().cor;
  }

  public static com.tencent.mm.compatible.loader.b yi()
  {
    String str = z.a(al.getContext().getSharedPreferences(al.azs(), 0));
    if (str.equals("language_default"))
      z.a(yd().cos, Locale.ENGLISH);
    while (true)
    {
      return yd().cos;
      Locale localLocale = z.sA(str);
      z.a(yd().cos, localLocale);
    }
  }

  public static void yj()
  {
    ab localab = yd();
    aa.d("MicroMsg.SubCoreBiz", "resetResContextImp");
    localab.cos = com.tencent.mm.compatible.loader.b.a(al.getContext(), be.uz().sW() + "brand_i18n.apk", "com.tencent.mm.bizi18nres", true);
  }

  public final void N(boolean paramBoolean)
  {
    l.a(Integer.valueOf(55), this.ciI);
    l.a(Integer.valueOf(57), this.ciI);
    this.cos = com.tencent.mm.compatible.loader.b.a(al.getContext(), be.uz().sW() + "brand_i18n.apk", "com.tencent.mm.bizi18nres", false);
    be.uz().sx().b(this.cot);
    ye().a(this.cou);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    Integer localInteger1 = Integer.valueOf(55);
    l.S(localInteger1);
    Integer localInteger2 = Integer.valueOf(57);
    l.S(localInteger2);
    if (this.coq != null)
    {
      this.coq.release();
      this.coq = null;
    }
    if ((this.cor == null) || (be.se()))
    {
      be.uz().sx().c(this.cot);
      ye().b(this.cou);
    }
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.ab
 * JD-Core Version:    0.6.2
 */