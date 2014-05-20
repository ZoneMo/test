package com.tencent.mm.ah;

import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.an;
import java.util.HashMap;

public class k
  implements bb
{
  private static HashMap bZd;
  private t cAk = new t();
  private f cAl;
  private b cAm;
  private c cAn = new c();
  private h cAo;
  private j cAp;
  private g cAq = new q(this);
  private g cAr = new r(this);

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("LBSVERIFYMESSAGE_TABLE".hashCode()), new l());
    bZd.put(Integer.valueOf("SHAKEVERIFYMESSAGE_TABLE".hashCode()), new m());
    bZd.put(Integer.valueOf("VERIFY_CONTACT_TABLE".hashCode()), new n());
    bZd.put(Integer.valueOf("FMESSAGE_MSGINFO_TABLE".hashCode()), new o());
    bZd.put(Integer.valueOf("FMESSAGE_CONVERSATION_TABLE".hashCode()), new p());
  }

  public static j DA()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Dw().cAp == null)
      Dw().cAp = new j(be.uz().sp());
    return Dw().cAp;
  }

  private static k Dw()
  {
    k localk = (k)be.uh().dN(k.class.getName());
    if (localk == null)
    {
      localk = new k();
      be.uh().a(k.class.getName(), localk);
    }
    return localk;
  }

  public static f Dx()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Dw().cAl == null)
    {
      Dw().cAl = new f(be.uz().sp());
      b localb = Dy();
      Dw().cAl.a(localb, be.ut().getLooper());
    }
    return Dw().cAl;
  }

  public static b Dy()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Dw().cAm == null)
      Dw().cAm = new b(be.uz().sp());
    return Dw().cAm;
  }

  public static h Dz()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Dw().cAo == null)
      Dw().cAo = new h(be.uz().sp());
    return Dw().cAo;
  }

  public final void N(boolean paramBoolean)
  {
    com.tencent.mm.n.l.a(Integer.valueOf(37), this.cAk);
    com.tencent.mm.n.l.a(Integer.valueOf(40), this.cAn);
    com.tencent.mm.sdk.b.a.ayH().a("FMessageConversationStateOp", this.cAq);
    com.tencent.mm.sdk.b.a.ayH().a("FMsgInfoQuery", this.cAr);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    Integer localInteger1 = Integer.valueOf(37);
    com.tencent.mm.n.l.S(localInteger1);
    Integer localInteger2 = Integer.valueOf(40);
    com.tencent.mm.n.l.S(localInteger2);
    com.tencent.mm.sdk.b.a.ayH().b("FMessageConversationStateOp", this.cAq);
    com.tencent.mm.sdk.b.a.ayH().b("FMsgInfoQuery", this.cAr);
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.k
 * JD-Core Version:    0.6.2
 */