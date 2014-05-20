package com.tencent.mm.modelvoice;

import com.tencent.mm.model.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.dr;
import com.tencent.mm.n.l;
import com.tencent.mm.storage.cj;
import java.util.HashMap;
import junit.framework.Assert;

public class bc
  implements bb
{
  private static HashMap bZd;
  private br cDa;
  private cj cDb;
  private al cDc;
  private bj cDd = new bj();

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("VOICE_TABLE".hashCode()), new bd());
    bZd.put(Integer.valueOf("VOICETRANSTEXT_TABLE".hashCode()), new be());
  }

  private static bc Eq()
  {
    bc localbc = (bc)com.tencent.mm.model.be.uh().dN(bc.class.getName());
    if (localbc == null)
    {
      localbc = new bc();
      com.tencent.mm.model.be.uh().a(bc.class.getName(), localbc);
    }
    return localbc;
  }

  public static br Er()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new a();
    if (Eq().cDa == null)
      if (com.tencent.mm.model.be.uz().sp() == null)
        break label69;
    label69: for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("dataDB is null ", bool);
      Eq().cDa = new br(com.tencent.mm.model.be.uz().sp());
      return Eq().cDa;
    }
  }

  public static cj Es()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new a();
    if (Eq().cDb == null)
      if (com.tencent.mm.model.be.uz().sp() == null)
        break label69;
    label69: for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("dataDB is null ", bool);
      Eq().cDb = new cj(com.tencent.mm.model.be.uz().sp());
      return Eq().cDb;
    }
  }

  public static al Et()
  {
    if (com.tencent.mm.model.be.uz().sd() == 0)
      throw new a();
    if (Eq().cDc == null)
      Eq().cDc = new al();
    return Eq().cDc;
  }

  public final void N(boolean paramBoolean)
  {
    l.a(Integer.valueOf(34), this.cDd);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    if (Eq().cDc != null)
      Eq().cDc.stop();
    Integer localInteger = Integer.valueOf(34);
    l.S(localInteger);
  }

  public final HashMap qz()
  {
    return bZd;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bc
 * JD-Core Version:    0.6.2
 */