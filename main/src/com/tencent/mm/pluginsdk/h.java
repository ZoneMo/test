package com.tencent.mm.pluginsdk;

import android.content.Context;
import com.tencent.mm.pluginsdk.a.a;
import com.tencent.mm.pluginsdk.a.b;
import com.tencent.mm.pluginsdk.a.c;
import com.tencent.mm.sdk.platformtools.aa;

public final class h
{
  private static k eBg;
  private static aj fgj;
  private static ak fgk;
  private static o fgl;
  private static q fgm;
  private static p fgn;
  private static ah fgo;
  private static i fgp;
  private static s fgq;
  private static ag fgr;
  private static r fgs;
  private static an fgt;
  private static m fgu;
  private static ap fgv;
  private static am fgw;

  public static void a(ag paramag)
  {
    fgr = paramag;
  }

  public static void a(ah paramah)
  {
    fgo = paramah;
  }

  public static void a(aj paramaj)
  {
    fgj = paramaj;
  }

  public static void a(ak paramak)
  {
    fgk = paramak;
  }

  public static void a(am paramam)
  {
    fgw = paramam;
  }

  public static void a(an paraman)
  {
    fgt = paraman;
  }

  public static void a(ap paramap)
  {
    fgv = paramap;
  }

  public static void a(i parami)
  {
    fgp = parami;
  }

  public static void a(k paramk)
  {
    eBg = paramk;
  }

  public static void a(m paramm)
  {
    fgu = paramm;
  }

  public static void a(o paramo)
  {
    fgl = paramo;
  }

  public static void a(p paramp)
  {
    fgn = paramp;
  }

  public static void a(q paramq)
  {
    fgm = paramq;
  }

  public static void a(r paramr)
  {
    fgs = paramr;
  }

  public static void a(s params)
  {
    fgq = params;
  }

  public static s api()
  {
    if (fgq == null)
    {
      aa.w("MicroMsg.IPluginEvent.Factory", "get shake mgr is null, new default");
      fgq = new c();
    }
    return fgq;
  }

  public static i apj()
  {
    if (fgp == null)
    {
      aa.w("MicroMsg.IPluginEvent.Factory", "get emoji mgr is null, new default");
      fgp = new a();
    }
    return fgp;
  }

  public static q apk()
  {
    return fgm;
  }

  public static aj apl()
  {
    return fgj;
  }

  public static ak apm()
  {
    return fgk;
  }

  public static k apn()
  {
    return eBg;
  }

  public static p apo()
  {
    return fgn;
  }

  public static ah app()
  {
    return fgo;
  }

  public static ag apq()
  {
    return fgr;
  }

  public static r apr()
  {
    if (fgs == null)
      fgs = new b();
    return fgs;
  }

  public static an aps()
  {
    return fgt;
  }

  public static m apt()
  {
    return fgu;
  }

  public static ap apu()
  {
    return fgv;
  }

  public static am apv()
  {
    return fgw;
  }

  public static ad b(Context paramContext, ae paramae)
  {
    if (fgl != null)
      return fgl.a(paramContext, paramae);
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.h
 * JD-Core Version:    0.6.2
 */