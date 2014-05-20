package com.tencent.mm.modelfriend;

import com.tencent.mm.model.b;
import com.tencent.mm.model.dr;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import java.util.HashMap;
import java.util.LinkedList;

public class ax
  implements com.tencent.mm.model.bb
{
  private static HashMap bZd;
  private i crP;
  private o crQ;
  private y crR;
  private au crS;
  private aw crT;
  private af crU;
  private ad crV;
  private k crW = new k();
  private LinkedList crX = null;
  private j crY = new j();
  private l crZ = new l();
  private m csa = new m();
  private g csb = new bf(this);

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("ADDR_UPLOAD_TABLE".hashCode()), new ay());
    bZd.put(Integer.valueOf("FACE_BOOK_FIREND_TABLE".hashCode()), new az());
    bZd.put(Integer.valueOf("FRIEND_EXT_TABLE".hashCode()), new ba());
    bZd.put(Integer.valueOf("QQ_GROUP_TABLE".hashCode()), new bb());
    bZd.put(Integer.valueOf("QQ_LIST_TABLE".hashCode()), new bc());
    bZd.put(Integer.valueOf("INVITEFRIENDOPEN_TABLE".hashCode()), new bd());
    bZd.put(Integer.valueOf("GOOGLE_FRIEND_TABLE".hashCode()), new be());
  }

  private static ax Ak()
  {
    ax localax = (ax)com.tencent.mm.model.be.uh().dN(ax.class.getName());
    if (localax == null)
    {
      localax = new ax();
      com.tencent.mm.model.be.uh().a(ax.class.getName(), localax);
    }
    return localax;
  }

  public static i Al()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Ak().crP == null)
      Ak().crP = new i(com.tencent.mm.model.be.uz().sp());
    return Ak().crP;
  }

  public static o Am()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Ak().crQ == null)
      Ak().crQ = new o(com.tencent.mm.model.be.uz().sp());
    return Ak().crQ;
  }

  public static y An()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Ak().crR == null)
      Ak().crR = new y(com.tencent.mm.model.be.uz().sp());
    return Ak().crR;
  }

  public static au Ao()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Ak().crS == null)
      Ak().crS = new au(com.tencent.mm.model.be.uz().sp());
    return Ak().crS;
  }

  public static af Ap()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Ak().crU == null)
      Ak().crU = new af(com.tencent.mm.model.be.uz().sp());
    return Ak().crU;
  }

  public static aw Aq()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Ak().crT == null)
      Ak().crT = new aw(com.tencent.mm.model.be.uz().sp());
    return Ak().crT;
  }

  public static LinkedList Ar()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    return Ak().crX;
  }

  public static void As()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    Ak().crX = null;
  }

  public static ad At()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Ak().crV == null)
      Ak().crV = new ad(com.tencent.mm.model.be.uz().sp());
    return Ak().crV;
  }

  public static void c(LinkedList paramLinkedList)
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    Ak().crX = paramLinkedList;
  }

  public final void N(boolean paramBoolean)
  {
    com.tencent.mm.n.l.a(Integer.valueOf(42), this.crW);
    com.tencent.mm.sdk.b.a.ayH().a("SetLocalQQMobile", this.csb);
    com.tencent.mm.sdk.b.a.ayH().a("AddFMessageCardClick", this.csb);
    com.tencent.mm.sdk.b.a.ayH().a("BindQQ", this.crY);
    com.tencent.mm.sdk.b.a.ayH().a("FMessageMobileFilter", this.crZ);
    com.tencent.mm.sdk.b.a.ayH().a("FMsgGetName", this.csa);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    com.tencent.mm.sdk.b.a.ayH().b("SetLocalQQMobile", this.csb);
    com.tencent.mm.sdk.b.a.ayH().b("AddFMessageCardClick", this.csb);
    com.tencent.mm.sdk.b.a.ayH().b("BindQQ", this.crY);
    com.tencent.mm.sdk.b.a.ayH().b("FMessageMobileFilter", this.crZ);
    com.tencent.mm.sdk.b.a.ayH().b("FMsgGetName", this.csa);
    AddrBookObserver.yA();
    Integer localInteger = Integer.valueOf(42);
    com.tencent.mm.n.l.S(localInteger);
    this.crX = null;
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ax
 * JD-Core Version:    0.6.2
 */