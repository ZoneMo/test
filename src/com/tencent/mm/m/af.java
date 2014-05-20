package com.tencent.mm.m;

import android.content.Context;
import android.graphics.Bitmap;
import com.tencent.mm.a.f;
import com.tencent.mm.model.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;

public class af
  implements bb
{
  private static HashMap bZd;
  private y clv;
  private m clw;
  private e clx;
  private w cly;
  private ay clz = new ay(be.ut().getLooper(), new ai(this), false);

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("IMG_FLAG_TABLE".hashCode()), new ag());
    bZd.put(Integer.valueOf("HDHEADIMGINFO_TABLE".hashCode()), new ah());
  }

  static Context getContext()
  {
    return al.getContext();
  }

  public static m vJ()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (wl().clw == null)
      wl().clw = new m(be.uz().sD());
    return wl().clw;
  }

  public static af wl()
  {
    af localaf = (af)be.uh().dN(af.class.getName());
    if (localaf == null)
    {
      localaf = new af();
      be.uh().a(af.class.getName(), localaf);
    }
    return localaf;
  }

  public static y wm()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (wl().clv == null)
      wl().clv = new y(be.uz().sp());
    return wl().clv;
  }

  public static w wn()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (wl().cly == null)
      wl().cly = new w(be.uz().sp());
    return wl().cly;
  }

  public static e wo()
  {
    if (be.uz().sd() == 0)
      throw new a();
    if (wl().clx == null)
      wl().clx = new e();
    return wl().clx;
  }

  public static boolean wp()
  {
    if (cj.a((Boolean)be.uz().sr().get(59), false))
      return true;
    if (vJ().ed(v.th()))
      return true;
    String str = v.th();
    Bitmap localBitmap = q.z(be.uz().sB() + "user_" + f.h(str.getBytes()) + ".png", str);
    if ((localBitmap == null) || (localBitmap.isRecycled()))
      return false;
    return vJ().d(str, localBitmap);
  }

  public final void N(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      aa.d("MicroMsg.SubCoreAvatar", "update all plugin avatars");
      be.uz().sr().set(90113, Boolean.valueOf(true));
    }
    this.clz.bO(10000L);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    if (wl().clw != null)
      m.reset();
    e locale = wl().clx;
    if (locale != null)
      be.uA().b(123, locale);
    y localy = wl().clv;
    if (localy != null)
      localy.wa();
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.af
 * JD-Core Version:    0.6.2
 */