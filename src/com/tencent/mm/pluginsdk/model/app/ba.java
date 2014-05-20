package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.model.ar;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.l;
import com.tencent.mm.pluginsdk.ui.chat.ap;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import java.util.HashMap;

public class ba
  implements com.tencent.mm.model.bb
{
  private static HashMap bZd;
  private o cLv;
  private b cLw;
  private h fhU;
  private m fhV;
  private r fhW;
  private aw fhX = null;
  private p fhY = new p();
  private com.tencent.mm.pluginsdk.model.a fhZ = new com.tencent.mm.pluginsdk.model.a();
  private t fia;
  private c fib;
  private g fic = new bh(this);

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("APPATTACHINFO_TABLE".hashCode()), new bd());
    bZd.put(Integer.valueOf("APPINFO_TABLE".hashCode()), new be());
    bZd.put(Integer.valueOf("APPMESSAGE_TABLE".hashCode()), new bf());
    bZd.put(Integer.valueOf("PLUGININFO_TABLE".hashCode()), new bg());
  }

  public ba()
  {
    com.tencent.mm.pluginsdk.h.a(new bb(this));
    ap.a(new bc(this));
  }

  public static r HD()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().fhW == null)
      aqf().fhW = new r(com.tencent.mm.model.be.uz().sp());
    return aqf().fhW;
  }

  public static o HE()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().cLv == null)
      aqf().cLv = new o(com.tencent.mm.model.be.uz().sp(), com.tencent.mm.model.be.uz().sP());
    return aqf().cLv;
  }

  public static b HF()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().cLw == null)
      aqf().cLw = new b(com.tencent.mm.model.be.uz().sp());
    return aqf().cLw;
  }

  public static c PE()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().fib == null)
      aqf().fib = new c();
    return aqf().fib;
  }

  private static ba aqf()
  {
    ba localba = (ba)com.tencent.mm.model.be.uh().dN(ba.class.getName());
    if (localba == null)
      localba = new ba();
    return localba;
  }

  public static h aqg()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().fhU == null)
      aqf().fhU = new h();
    return aqf().fhU;
  }

  public static m aqh()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().fhV == null)
      aqf().fhV = new m();
    return aqf().fhV;
  }

  public static aw aqi()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().fhX == null)
      aqf().fhX = new aw();
    return aqf().fhX;
  }

  public static t aqj()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (aqf().fia == null)
      aqf().fia = new t();
    return aqf().fia;
  }

  public final void N(boolean paramBoolean)
  {
    ar.a(aqh());
    l.a(Integer.valueOf(47), this.fhZ);
    l.a(Integer.valueOf(49), this.fhY);
    com.tencent.mm.sdk.b.a.ayH().a("GetAppSetting", this.fic);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    aw localaw = aqf().fhX;
    if (localaw != null)
      localaw.stop();
    m localm = aqf().fhV;
    if (localm != null)
    {
      com.tencent.mm.model.be.uA().b(231, localm);
      PE().b(7, localm);
    }
    h localh = aqf().fhU;
    if (localh != null)
      localh.clear();
    t localt = aqf().fia;
    if (localt != null)
      localt.stop();
    if (this.fib != null)
      this.fib.Oj();
    Integer localInteger1 = Integer.valueOf(47);
    l.S(localInteger1);
    Integer localInteger2 = Integer.valueOf(49);
    l.S(localInteger2);
    com.tencent.mm.sdk.b.a.ayH().b("GetAppSetting", this.fic);
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.ba
 * JD-Core Version:    0.6.2
 */