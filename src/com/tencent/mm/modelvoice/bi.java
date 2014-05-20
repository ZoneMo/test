package com.tencent.mm.modelvoice;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.compatible.g.k;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.l;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.io.File;

public final class bi
{
  public static int a(bh parambh, byte[] paramArrayOfByte, int paramInt, String paramString)
  {
    k localk = new k();
    int j;
    if (parambh == null)
    {
      aa.e("MicroMsg.VoiceLogic", "setRecvSync voice is null");
      j = -1;
    }
    bh localbh;
    do
    {
      int k;
      do
      {
        return j;
        localbh = bc.Er().eE(parambh.AH());
        if (localbh == null)
          break;
        k = localbh.getStatus();
        j = 0;
      }
      while (k == 99);
      ak localak = be.uz().sw().ae(parambh.getUser(), parambh.AH());
      if ((localak == null) || (localak.AH() != parambh.AH()))
        break;
      j = 0;
    }
    while (localbh == null);
    String str;
    int i;
    boolean bool;
    if (localbh != null)
    {
      parambh.gR(localbh.getFileName());
      parambh.cL(0x1 | parambh.vU());
      aa.d("MicroMsg.VoiceLogic", j.qg() + "checktime :" + localk.qh());
      if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 1))
        break label822;
      if (localbh != null)
        aa.e("MicroMsg.VoiceLogic", "Sync Voice Buf , But  VoiceInfo is not new !");
      str = parambh.getFileName();
      i = hp(str).write(paramArrayOfByte, paramArrayOfByte.length, 0);
      if (i >= 0)
        break label534;
      aa.e("MicroMsg.VoiceLogic", "Write Failed File:" + str + " newOffset:" + i);
      bool = false;
    }
    while (true)
    {
      label246: aa.d("MicroMsg.VoiceLogic", j.qg() + "checktime :" + localk.qh());
      parambh.H(System.currentTimeMillis() / 1000L);
      parambh.cL(0x100 | parambh.vU());
      if (bool)
        parambh.setStatus(99);
      while (true)
      {
        parambh.cL(0x40 | parambh.vU());
        if (localbh != null)
          break label700;
        if (bool)
          parambh.dy((int)a(parambh, bool, paramInt, paramString));
        aa.d("MicroMsg.VoiceLogic", j.qg() + "checktime :" + localk.qh());
        parambh.cL(-1);
        aa.d("MicroMsg.VoiceLogic", "Insert fileName:" + parambh.getFileName() + " stat:" + parambh.getStatus() + " net:" + parambh.DH() + " total:" + parambh.vR());
        if (bc.Er().c(parambh))
          break label659;
        aa.d("MicroMsg.VoiceLogic", "Insert Error fileName:" + parambh.getFileName() + " stat:" + parambh.getStatus() + " net:" + parambh.DH() + " total:" + parambh.vR());
        return -2;
        parambh.gR(br.hx(parambh.DG()));
        break;
        label534: if (paramArrayOfByte.length != i)
        {
          aa.e("MicroMsg.VoiceLogic", "Write File:" + str + " fileOff:" + i + " bufLen:" + paramArrayOfByte.length);
          bool = false;
          break label246;
        }
        aa.d("MicroMsg.VoiceLogic", "writeVoiceFile file:[" + str + "] + buf:" + paramArrayOfByte.length);
        bc.Er().hy(str);
        bool = true;
        break label246;
        if (parambh.vR() == 0)
          parambh.setStatus(5);
        else
          parambh.setStatus(6);
      }
      label659: aa.d("MicroMsg.VoiceLogic", j.qg() + "checktime :" + localk.qh());
      if (bool)
      {
        return 1;
        label700: aa.d("MicroMsg.VoiceLogic", "Sync Update file:" + parambh.getFileName() + " stat:" + parambh.getStatus());
        if (!b(parambh))
          return -44;
        if (bool)
        {
          a(parambh);
          return 1;
        }
      }
      if ((localbh != null) && (localbh.DI() == parambh.vR()))
      {
        w(localbh.getFileName(), localbh.DI());
        aa.w("MicroMsg.VoiceLogic", "Sync TotalLen not Change (send endflag but TotoalLen == FileLen) :" + localbh.getFileName());
      }
      bc.Et().run();
      return 0;
      label822: bool = false;
    }
  }

  private static long a(bh parambh, boolean paramBoolean, int paramInt, String paramString)
  {
    ak localak = new ak();
    localak.dA(parambh.AH());
    localak.uN(parambh.getFileName());
    localak.setStatus(paramInt);
    localak.G(bv.b(parambh.getUser(), parambh.DL()));
    localak.uK(parambh.getUser());
    int i;
    if (v.cm(parambh.DG()))
    {
      i = 1;
      localak.bZ(i);
      localak.setType(34);
      localak.uL(paramString);
      localak.mi(parambh.Ez());
      if (paramBoolean)
        break label130;
      localak.setContent(bf.a(parambh.DG(), 0L, false));
    }
    while (true)
    {
      return bv.d(localak);
      i = 0;
      break;
      label130: localak.setContent(bf.a(parambh.DG(), parambh.EA(), false));
    }
  }

  private static boolean a(bh parambh)
  {
    try
    {
      parambh.dy((int)a(parambh, true, 3, ""));
      parambh.cL(0x800 | parambh.vU());
      boolean bool = b(parambh);
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static boolean b(bh parambh)
  {
    if (parambh == null);
    while (parambh.vU() == -1)
      return false;
    return bc.Er().a(parambh.getFileName(), parambh);
  }

  public static String c(String paramString1, String paramString2, int paramInt)
  {
    if (cj.hX(paramString1));
    String str;
    do
    {
      return null;
      if ((!cj.hX(paramString2)) && (!paramString2.startsWith("amr_")))
        paramString2.startsWith("spx_");
      str = hr(paramString1);
    }
    while ((cj.hX(str)) || (!m.f(fU(paramString2), fU(str), false)));
    n(str, paramInt, 1);
    return str;
  }

  public static String fU(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    return n(paramString, false);
  }

  public static boolean hd(String paramString)
  {
    if (paramString == null)
      return false;
    bh localbh = bc.Er().hB(paramString);
    if (localbh == null)
    {
      aa.e("MicroMsg.VoiceLogic", "Set error failed file:" + paramString);
      return false;
    }
    localbh.setStatus(98);
    localbh.H(System.currentTimeMillis() / 1000L);
    localbh.cL(320);
    boolean bool = b(localbh);
    aa.d("MicroMsg.VoiceLogic", "setError file:" + paramString + " msgid:" + localbh.AF() + " old stat:" + localbh.getStatus());
    if ((localbh.AF() == 0) || (cj.hX(localbh.getUser())))
    {
      aa.e("MicroMsg.VoiceLogic", "setError failed msg id:" + localbh.AF() + " user:" + localbh.getUser());
      return bool;
    }
    ak localak = new ak();
    localak.bT(localbh.AF());
    localak.setStatus(5);
    localak.uK(localbh.getUser());
    localak.setContent(bf.a(localbh.DG(), -1L, true));
    localak.cL(264);
    be.uz().sw().a(localak.Bo(), localak);
    return bool;
  }

  public static boolean ho(String paramString)
  {
    if (paramString == null);
    bh localbh;
    do
    {
      return false;
      localbh = bc.Er().hB(paramString);
    }
    while ((localbh == null) || (localbh.DP() >= 250));
    localbh.dw(1 + localbh.DP());
    localbh.cL(8192);
    return b(localbh);
  }

  public static b hp(String paramString)
  {
    return bc.Er().o(paramString, true);
  }

  public static b hq(String paramString)
  {
    return bc.Er().o(paramString, false);
  }

  public static String hr(String paramString)
  {
    String str = br.hx(v.th());
    bh localbh = new bh();
    localbh.gR(str);
    localbh.setUser(paramString);
    localbh.G(System.currentTimeMillis() / 1000L);
    localbh.hn(str);
    localbh.H(System.currentTimeMillis() / 1000L);
    localbh.setStatus(1);
    localbh.gS(v.th());
    localbh.cL(-1);
    if (!bc.Er().c(localbh))
      str = null;
    return str;
  }

  public static boolean hs(String paramString)
  {
    if (paramString == null);
    bh localbh;
    do
    {
      return false;
      localbh = bc.Er().hB(paramString);
      if (localbh == null)
      {
        aa.d("MicroMsg.VoiceLogic", "startSend null record : " + paramString);
        return false;
      }
    }
    while (localbh.getStatus() != 1);
    localbh.setStatus(2);
    localbh.cL(64);
    return b(localbh);
  }

  public static boolean ht(String paramString)
  {
    if (paramString == null);
    bh localbh;
    do
    {
      return false;
      aa.d("MicroMsg.VoiceLogic", "Mark Canceled fileName[" + paramString + "]");
      localbh = bc.Er().hB(paramString);
    }
    while (localbh == null);
    localbh.setStatus(8);
    localbh.cJ(bg.hb(paramString));
    localbh.cL(64);
    return b(localbh);
  }

  public static boolean hu(String paramString)
  {
    if (paramString == null)
      return false;
    bh localbh = bc.Er().hB(paramString);
    if (localbh == null)
    {
      aa.d("MicroMsg.VoiceLogic", "cancel null download : " + paramString);
      return true;
    }
    aa.d("MicroMsg.VoiceLogic", "cancel download : " + paramString + " SvrlId:" + localbh.AH());
    if (localbh.AH() != 0)
      be.uz().sw().ah(localbh.getUser(), localbh.AH());
    return hw(paramString);
  }

  public static boolean hv(String paramString)
  {
    if (paramString == null)
      return false;
    bh localbh = bc.Er().hB(paramString);
    if (localbh == null)
    {
      aa.d("MicroMsg.VoiceLogic", "cancel null record : " + paramString);
      return true;
    }
    aa.d("MicroMsg.VoiceLogic", "cancel record : " + paramString + " LocalId:" + localbh.AF());
    if (localbh.AF() != 0)
      be.uz().sw().bV(localbh.AF());
    return hw(paramString);
  }

  public static boolean hw(String paramString)
  {
    if (paramString == null)
      return false;
    bc.Er().hz(paramString);
    bc.Er().hy(paramString);
    return new File(fU(paramString)).delete();
  }

  public static boolean j(ak paramak)
  {
    if ((paramak == null) || (!paramak.aBV()))
      return false;
    return new bf(paramak.getContent()).Ev();
  }

  public static boolean k(ak paramak)
  {
    int i = 1;
    if ((paramak == null) || (!paramak.aBV()) || (paramak.rO() == i))
      i = 0;
    while (new bf(paramak.getContent()).getTime() == 0L)
      return i;
    return false;
  }

  public static void l(ak paramak)
  {
    if ((paramak == null) || (!paramak.aBV()));
    bf localbf;
    do
    {
      ak localak;
      do
      {
        return;
        localak = be.uz().sw().bU(paramak.Bo());
      }
      while ((localak == null) || (localak.Bo() != paramak.Bo()));
      localbf = new bf(localak.getContent());
    }
    while (localbf.Ev());
    localbf.Ew();
    paramak.setContent(localbf.Eu());
    paramak.cL(256);
    be.uz().sw().a(paramak.Bo(), paramak);
  }

  public static String n(String paramString, boolean paramBoolean)
  {
    String str1 = l.a(be.uz().sG(), "msg_", paramString, ".amr", 2);
    if (cj.hX(str1))
      str1 = null;
    String str2;
    do
    {
      do
        return str1;
      while ((paramBoolean) || (new File(str1).exists()));
      str2 = be.uz().sF() + paramString;
      if (new File(str2 + ".amr").exists())
      {
        m.f(str2 + ".amr", str1, true);
        return str1;
      }
    }
    while (!new File(str2).exists());
    m.f(str2, str1, true);
    return str1;
  }

  public static boolean n(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString == null);
    bh localbh;
    do
    {
      return false;
      aa.d("MicroMsg.VoiceLogic", "StopRecord fileName[" + paramString + "]");
      localbh = bc.Er().hB(paramString);
    }
    while (localbh == null);
    if ((localbh.getStatus() != 97) && (localbh.getStatus() != 98))
      localbh.setStatus(3);
    localbh.cJ(bg.hb(paramString));
    if (localbh.vR() <= 0)
    {
      hd(paramString);
      return false;
    }
    localbh.H(System.currentTimeMillis() / 1000L);
    localbh.eD(paramInt1);
    localbh.cL(3424);
    ak localak = new ak();
    localak.uK(localbh.getUser());
    localak.setType(34);
    localak.bZ(1);
    localak.uN(paramString);
    if (localbh.getStatus() == 97)
    {
      localak.setStatus(2);
      localak.setContent(bf.a(localbh.DG(), localbh.EA(), false));
    }
    while (true)
    {
      localak.G(bv.dA(localbh.getUser()));
      localak.mi(paramInt2);
      localbh.dy((int)bv.d(localak));
      return b(localbh);
      if (localbh.getStatus() == 98)
      {
        localak.setStatus(5);
        localak.setContent(bf.a(localbh.DG(), -1L, true));
      }
      else
      {
        localak.setStatus(1);
        localak.setContent(bf.a(localbh.DG(), localbh.EA(), false));
      }
    }
  }

  public static int w(String paramString, int paramInt)
  {
    int i = -1;
    if (paramString == null);
    bh localbh;
    do
    {
      do
      {
        return i;
        localbh = bc.Er().hB(paramString);
      }
      while (localbh == null);
      localbh.ew(paramInt);
      localbh.H(System.currentTimeMillis() / 1000L);
      localbh.cL(272);
      int j = localbh.vR();
      i = 0;
      if (j > 0)
      {
        int k = localbh.vR();
        i = 0;
        if (paramInt >= k)
        {
          a(localbh);
          localbh.setStatus(99);
          localbh.cL(0x40 | localbh.vU());
          aa.d("MicroMsg.VoiceLogic", "END!!! updateRecv  file:" + paramString + " newsize:" + paramInt + " total:" + localbh.vR() + " status:" + localbh.getStatus() + " netTimes:" + localbh.DP());
          i = 1;
          bc.Er().hy(paramString);
        }
      }
      aa.d("MicroMsg.VoiceLogic", "updateRecv file:" + paramString + " newsize:" + paramInt + " total:" + localbh.vR() + " status:" + localbh.getStatus());
    }
    while (b(localbh));
    return -3;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.bi
 * JD-Core Version:    0.6.2
 */