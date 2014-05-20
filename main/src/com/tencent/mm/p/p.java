package com.tencent.mm.p;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.protocal.a.nv;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.i;
import java.util.List;

public final class p
{
  public static void c(a parama)
  {
    if (parama != null)
    {
      nv localnv = new nv();
      localnv.cqC = parama.field_brandFlag;
      localnv.eBo = parama.field_username;
      be.uz().st().a(new az(47, localnv));
      ab.ye().a(parama, new String[0]);
    }
  }

  public static a eI(String paramString)
  {
    a locala = ab.ye().eG(paramString);
    if ((locala != null) && (locala.field_updateTime > 0L))
    {
      if (paramString.equals(v.th()))
        locala.a(new q());
      return locala;
    }
    return null;
  }

  public static boolean eJ(String paramString)
  {
    if (w.da(paramString))
      return true;
    i locali = be.uz().su().tO(paramString);
    if ((locali != null) && (locali.aAp()))
    {
      a locala = eI(locali.getUsername());
      if (locala != null)
      {
        f localf = locala.xu();
        if ((localf != null) && (localf.cnm))
        {
          aa.d("MicroMsg.BizInfoStorageLogic", "bizinfo name=" + locali.getUsername() + " canReceiveSpeexVoice");
          return true;
        }
      }
    }
    return false;
  }

  public static a xH()
  {
    return eI(v.th());
  }

  public static boolean xI()
  {
    return !ab.ye().cT(1).isEmpty();
  }

  public static boolean xJ()
  {
    return !ab.ye().cT(2).isEmpty();
  }

  public static boolean xK()
  {
    return !ab.ye().cT(4).isEmpty();
  }

  public static List xL()
  {
    return ab.ye().cT(8);
  }

  public static boolean xM()
  {
    return !xL().isEmpty();
  }

  public static List xN()
  {
    return ab.ye().cT(16);
  }

  public static boolean xO()
  {
    return !xN().isEmpty();
  }

  public static List xP()
  {
    return ab.ye().cT(32);
  }

  public static boolean xQ()
  {
    return !xP().isEmpty();
  }

  public static List xR()
  {
    return ab.ye().cT(64);
  }

  public static boolean xS()
  {
    return !xR().isEmpty();
  }

  public static List xT()
  {
    return ab.ye().cT(128);
  }

  public static boolean xU()
  {
    return !xT().isEmpty();
  }

  public static List xV()
  {
    return ab.ye().cT(256);
  }

  public static boolean xW()
  {
    return !xV().isEmpty();
  }

  public static List xX()
  {
    return ab.ye().cT(512);
  }

  public static boolean xY()
  {
    return !xX().isEmpty();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.p
 * JD-Core Version:    0.6.2
 */