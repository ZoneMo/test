package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.io.File;

public final class n
{
  public static String B(String paramString, boolean paramBoolean)
  {
    String str = com.tencent.mm.sdk.platformtools.l.a(be.uz().sH(), "recbiz_", paramString, ".rec", 2);
    if (au.hX(str))
      str = null;
    while ((paramBoolean) || (!new File(str).exists()))
      return str;
    return str;
  }

  public static boolean U(String paramString, int paramInt)
  {
    if (paramString == null);
    m localm;
    do
    {
      return false;
      aa.d("MicroMsg.VoiceRemindLogic", "StopRecord fileName[" + paramString + "]");
      localm = f.ali().pp(paramString);
    }
    while (localm == null);
    if ((localm.getStatus() != 97) && (localm.getStatus() != 98))
      localm.setStatus(3);
    localm.cJ(d.hb(B(paramString, false)));
    if (localm.vR() <= 0)
    {
      hd(paramString);
      return false;
    }
    localm.H(System.currentTimeMillis() / 1000L);
    localm.eD(paramInt);
    localm.cL(3424);
    ak localak = new ak();
    localak.uK(localm.getUser());
    localak.setType(34);
    localak.bZ(1);
    localak.uN(paramString);
    if (localm.getStatus() == 97)
    {
      localak.setStatus(2);
      localak.setContent(l.a(localm.DG(), localm.EA(), false));
    }
    while (true)
    {
      localak.G(bv.dA(localm.getUser()));
      localm.dy((int)bv.d(localak));
      return a(localm);
      if (localm.getStatus() == 98)
      {
        localak.setStatus(5);
        localak.setContent(l.a(localm.DG(), -1L, true));
      }
      else
      {
        localak.setStatus(1);
      }
    }
  }

  public static int a(String paramString1, int paramInt1, int paramInt2, String paramString2, int paramInt3)
  {
    int i = 1;
    if (paramString1 == null)
      i = -1;
    while (true)
    {
      return i;
      aa.d("MicroMsg.VoiceRemindLogic", "UpdateAfterSend file:[" + paramString1 + "] newOff:" + paramInt1 + " SvrID:" + paramInt2 + " clientID:" + paramString2 + " hasSendEndFlag " + paramInt3);
      m localm = f.ali().pp(paramString1);
      if (localm == null)
        return -1;
      localm.ev(paramInt1);
      localm.H(System.currentTimeMillis() / 1000L);
      localm.cL(264);
      if ((au.hX(localm.EB())) && (paramString2 != null))
      {
        localm.hn(paramString2);
        localm.cL(0x200 | localm.vU());
      }
      if ((localm.AH() == 0) && (paramInt2 != 0))
      {
        localm.dA(paramInt2);
        localm.cL(0x4 | localm.vU());
      }
      aa.d("MicroMsg.VoiceRemindLogic", "info.getTotalLen() " + localm.vR() + "  newOffset " + paramInt1 + "  " + localm.getStatus());
      if ((localm.vR() <= paramInt1) && (localm.getStatus() == 3) && (paramInt3 == i))
      {
        localm.setStatus(99);
        localm.cL(0x40 | localm.vU());
        ak localak = new ak();
        localak.uK(localm.getUser());
        localak.dA(localm.AH());
        localak.setStatus(2);
        localak.setContent(l.a(localm.DG(), localm.EA(), false));
        localak.cL(266);
        be.uz().sw().a(localm.AF(), localak);
        aa.d("MicroMsg.VoiceRemindLogic", "END!!! updateSend  file:" + paramString1 + " total:" + localm.vR() + " status:" + localm.getStatus() + " netTimes:" + localm.DP());
        hy(paramString1);
      }
      while (!a(localm))
      {
        return -4;
        i = 0;
      }
    }
  }

  private static boolean a(m paramm)
  {
    if (paramm == null);
    while (paramm.vU() == -1)
      return false;
    return f.ali().a(paramm.getFileName(), paramm);
  }

  public static boolean hd(String paramString)
  {
    if (paramString == null)
      return false;
    m localm = f.ali().pp(paramString);
    if (localm == null)
    {
      aa.e("MicroMsg.VoiceRemindLogic", "Set error failed file:" + paramString);
      return false;
    }
    localm.setStatus(98);
    localm.H(System.currentTimeMillis() / 1000L);
    localm.cL(320);
    boolean bool = a(localm);
    aa.d("MicroMsg.VoiceRemindLogic", "setError file:" + paramString + " msgid:" + localm.AF() + " old stat:" + localm.getStatus());
    if ((localm.AF() == 0) || (au.hX(localm.getUser())))
    {
      aa.e("MicroMsg.VoiceRemindLogic", "setError failed msg id:" + localm.AF() + " user:" + localm.getUser());
      return bool;
    }
    ak localak = new ak();
    localak.bT(localm.AF());
    localak.setStatus(5);
    localak.uK(localm.getUser());
    localak.setContent(l.a(localm.DG(), -1L, true));
    localak.cL(264);
    be.uz().sw().a(localak.Bo(), localak);
    return bool;
  }

  public static boolean he(String paramString)
  {
    m localm = f.ali().pp(paramString);
    if (localm == null)
      return false;
    if (localm.getStatus() == 3)
    {
      ak localak = be.uz().sw().bU(localm.AF());
      localak.setContent(l.a(localm.DG(), localm.EA(), false));
      localak.setStatus(2);
      localak.cL(264);
      be.uz().sw().a(localm.AF(), localak);
    }
    localm.setStatus(97);
    localm.H(System.currentTimeMillis() / 1000L);
    localm.cL(320);
    return a(localm);
  }

  public static boolean ho(String paramString)
  {
    if (paramString == null);
    m localm;
    do
    {
      return false;
      localm = f.ali().pp(paramString);
    }
    while ((localm == null) || (localm.DP() >= 80));
    localm.dw(1 + localm.DP());
    localm.cL(16384);
    return a(localm);
  }

  public static boolean hs(String paramString)
  {
    if (paramString == null);
    m localm;
    do
    {
      return false;
      localm = f.ali().pp(paramString);
      if (localm == null)
      {
        aa.d("MicroMsg.VoiceRemindLogic", "startSend null record : " + paramString);
        return false;
      }
    }
    while (localm.getStatus() != 1);
    localm.setStatus(2);
    localm.cL(64);
    return a(localm);
  }

  public static boolean ht(String paramString)
  {
    if (paramString == null);
    m localm;
    do
    {
      return false;
      aa.d("MicroMsg.VoiceRemindLogic", "Mark Canceled fileName[" + paramString + "]");
      localm = f.ali().pp(paramString);
    }
    while (localm == null);
    localm.setStatus(8);
    localm.cJ(d.hb(B(paramString, false)));
    localm.cL(64);
    return a(localm);
  }

  public static boolean hv(String paramString)
  {
    if (paramString == null);
    do
    {
      return false;
      m localm = f.ali().pp(paramString);
      if (localm == null)
      {
        aa.d("MicroMsg.VoiceRemindLogic", "cancel null record : " + paramString);
        return true;
      }
      aa.d("MicroMsg.VoiceRemindLogic", "cancel record : " + paramString + " LocalId:" + localm.AF());
      if (localm.AF() != 0)
        be.uz().sw().bV(localm.AF());
    }
    while (paramString == null);
    f.ali().hz(paramString);
    hy(paramString);
    return new File(B(paramString, false)).delete();
  }

  private static void hy(String paramString)
  {
    f.ali().hy(B(paramString, false));
  }

  public static boolean jp(int paramInt)
  {
    ak localak = be.uz().sw().bU(paramInt);
    if ((localak == null) || (localak.Bo() == 0L) || (localak.ot() == null));
    m localm;
    do
    {
      do
        return false;
      while (au.hX(localak.ot()));
      String str = localak.ot();
      localm = f.ali().pp(str);
    }
    while ((localm == null) || (au.hX(localm.getFileName())));
    localm.setStatus(3);
    localm.ev(0);
    localm.G(System.currentTimeMillis() / 1000L);
    localm.H(System.currentTimeMillis() / 1000L);
    localm.cL(16840);
    boolean bool = a(localm);
    aa.d("MicroMsg.VoiceRemindLogic", " file:" + localm.getFileName() + " msgid:" + localm.AF() + "  stat:" + localm.getStatus());
    if ((localm.AF() == 0) || (au.hX(localm.getUser())))
    {
      aa.e("MicroMsg.VoiceRemindLogic", " failed msg id:" + localm.AF() + " user:" + localm.getUser());
      return bool;
    }
    localak.setStatus(1);
    be.uz().sw().a(localak.Bo(), localak);
    f.alj().run();
    return true;
  }

  public static d pm(String paramString)
  {
    return f.ali().po(B(paramString, false));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.n
 * JD-Core Version:    0.6.2
 */