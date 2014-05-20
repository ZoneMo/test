package com.tencent.mm.ai;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.n.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.h;

public final class v
{
  public static boolean a(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    return a(paramString1, paramInt1, paramString2, paramString3, paramInt2, "");
  }

  public static boolean a(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2, String paramString4)
  {
    q localq = new q();
    localq.gR(paramString1);
    localq.ez(paramInt1);
    localq.setUser(paramString2);
    localq.gS((String)f.c(2, ""));
    localq.G(cj.FC());
    localq.H(cj.FC());
    localq.gU(paramString4);
    localq.gT(paramString3);
    if (!cj.hX(paramString3))
      localq.eA(1);
    if (paramInt2 > 0)
      localq.eA(1);
    int i = r.hb(m.DE().gZ(paramString1));
    if (i <= 0)
    {
      aa.e("MicroMsg.VideoLogic", "get Video size failed :" + paramString1);
      return false;
    }
    localq.cJ(i);
    String str = m.DE().ha(paramString1);
    int j = r.hb(str);
    if (j <= 0)
    {
      aa.e("MicroMsg.VideoLogic", "get Thumb size failed :" + str + " size:" + j);
      return false;
    }
    localq.ey(j);
    aa.d("MicroMsg.VideoLogic", "init record file:" + paramString1 + " thumbsize:" + localq.DK() + " videosize:" + localq.vR());
    localq.setStatus(102);
    ak localak = new ak();
    localak.uK(localq.getUser());
    localak.setType(43);
    localak.bZ(1);
    localak.uN(paramString1);
    localak.setStatus(1);
    localak.G(bv.dA(localq.getUser()));
    localq.dy((int)bv.d(localak));
    return m.DE().a(localq);
  }

  public static void c(q paramq)
  {
    ak localak = new ak();
    localak.uK(paramq.getUser());
    localak.dA(paramq.AH());
    localak.setStatus(2);
    localak.setContent(o.a(paramq.DG(), paramq.DO(), false));
    localak.cL(266);
    be.uz().sw().a(paramq.AF(), localak);
  }

  public static boolean d(q paramq)
  {
    if (paramq == null);
    while (((paramq.getFileName() == null) || (paramq.getFileName().length() <= 0)) && (paramq.vU() == -1))
      return false;
    return m.DE().b(paramq);
  }

  public static int e(q paramq)
  {
    if (paramq.vR() == 0)
      return 0;
    aa.d("MicroMsg.VideoLogic", "cdntra getDownloadProgress :" + paramq.DH() + " " + paramq.vR());
    return 100 * paramq.DI() / paramq.vR();
  }

  public static boolean hc(String paramString)
  {
    if (paramString == null);
    q localq;
    do
    {
      return false;
      localq = hh(paramString);
    }
    while ((localq == null) || (localq.DP() >= 2500));
    localq.dw(1 + localq.DP());
    localq.cL(16384);
    return d(localq);
  }

  public static boolean hd(String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = cj.azV();
    aa.c("MicroMsg.VideoLogic", "setError file:%s stack:[%s]", arrayOfObject);
    boolean bool = false;
    if (paramString == null);
    q localq;
    do
    {
      return bool;
      localq = hh(paramString);
      if (localq == null)
      {
        aa.e("MicroMsg.VideoLogic", "Set error failed file:" + paramString);
        return false;
      }
      localq.setStatus(198);
      localq.H(System.currentTimeMillis() / 1000L);
      localq.cL(1280);
      bool = d(localq);
      aa.d("MicroMsg.VideoLogic", "setError file:" + paramString + " msgid:" + localq.AF() + " old stat:" + localq.getStatus());
    }
    while ((localq == null) || (localq.AF() == 0));
    ak localak = new ak();
    localak.bT(localq.AF());
    localak.setStatus(5);
    localak.uK(localq.getUser());
    localak.setContent(o.a(localq.DG(), -1L, true));
    localak.cL(264);
    be.uz().sw().a(localak.Bo(), localak);
    return bool;
  }

  public static boolean he(String paramString)
  {
    q localq = hh(paramString);
    if (localq == null)
      return false;
    ak localak = be.uz().sw().bU(localq.AF());
    localak.setContent(o.a(localq.DG(), localq.DO(), false));
    localak.setStatus(2);
    localak.cL(264);
    be.uz().sw().a(localq.AF(), localak);
    localq.setStatus(197);
    localq.H(cj.FC());
    localq.cL(1280);
    return d(localq);
  }

  public static int hf(String paramString)
  {
    q localq = hh(paramString);
    if (localq == null)
    {
      aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " getinfo failed: " + paramString);
      return 0 - j.qe();
    }
    if ((localq.getStatus() != 102) && (localq.getStatus() != 105))
    {
      aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " get status failed: " + paramString + " status:" + localq.getStatus());
      return 0 - j.qe();
    }
    int i = localq.getStatus();
    if ((localq.getStatus() != 102) && (localq.DK() == localq.DJ()))
      localq.setStatus(104);
    while (true)
    {
      aa.d("MicroMsg.VideoLogic", j.qg() + "startSend file:" + paramString + " status:[" + i + "->" + localq.getStatus() + "]");
      localq.I(cj.FC());
      localq.H(cj.FC());
      localq.cL(3328);
      if (d(localq))
        break;
      aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " update failed: " + paramString);
      return 0 - j.qe();
      localq.setStatus(103);
    }
    m.DF().DX();
    m.DF().run();
    return 0;
  }

  public static int hg(String paramString)
  {
    q localq = hh(paramString);
    if (localq == null)
    {
      aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " getinfo failed: " + paramString);
      return 0 - j.qe();
    }
    if ((localq.getStatus() != 111) && (localq.getStatus() != 113))
    {
      aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " get status failed: " + paramString + " status:" + localq.getStatus());
      return 0 - j.qe();
    }
    localq.setStatus(112);
    localq.I(cj.FC());
    localq.H(cj.FC());
    localq.cL(3328);
    if (!d(localq))
    {
      aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " update failed: " + paramString);
      return 0 - j.qe();
    }
    m.DF().DW();
    m.DF().run();
    return 0;
  }

  public static q hh(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    return m.DE().gW(paramString);
  }

  public static String hi(String paramString)
  {
    String str = h.cfG + cj.FD() + ".mp4";
    if (!com.tencent.mm.sdk.platformtools.m.aK(paramString, str))
      str = null;
    return str;
  }

  public static int w(String paramString, int paramInt)
  {
    q localq = hh(paramString);
    int j;
    if (localq == null)
    {
      aa.e("MicroMsg.VideoLogic", "ERR:" + j.qg() + " getinfo failed: " + paramString);
      j = 0 - j.qe();
    }
    do
    {
      return j;
      localq.ew(paramInt);
      localq.H(cj.FC());
      localq.cL(1040);
      int i = localq.vR();
      j = 0;
      if (i > 0)
      {
        int k = localq.vR();
        j = 0;
        if (paramInt >= k)
        {
          ak localak = new ak();
          localak.dA(localq.AH());
          localak.setContent(o.a(localq.DG(), localq.DO(), false));
          localak.uK(localq.getUser());
          aa.d("MicroMsg.VideoLogic", "set msg content :" + localak.getContent());
          localak.cL(256);
          be.uz().sw().a(localq.AH(), localak);
          localq.setStatus(199);
          localq.cL(0x100 | localq.vU());
          aa.d("MicroMsg.VideoLogic", "END!!! " + j.qg() + " updateRecv  file:" + paramString + " newsize:" + paramInt + " total:" + localq.vR() + " status:" + localq.getStatus() + " netTimes:" + localq.DP());
          j = 1;
        }
      }
      aa.d("MicroMsg.VideoLogic", "updateRecv " + j.qg() + " file:" + paramString + " newsize:" + paramInt + " total:" + localq.vR() + " status:" + localq.getStatus());
    }
    while (d(localq));
    return 0 - j.qe();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.v
 * JD-Core Version:    0.6.2
 */