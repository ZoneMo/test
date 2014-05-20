package com.tencent.mm.plugin.backup.model;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.a.c;
import com.tencent.mm.c.a.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.an;
import java.io.File;
import java.util.HashMap;

public final class d
{
  private static d cJN;
  private static int cJX = 0;
  private l cJO;
  private ar cJP;
  private aa cJQ;
  private x cJR;
  private am cJS;
  private ax cJT;
  private Handler cJU = null;
  private byte[] cJV;
  private HashMap cJW;

  public d()
  {
    Gh();
  }

  public static void F(byte[] paramArrayOfByte)
  {
    Gi().cJV = paramArrayOfByte;
    if (paramArrayOfByte == null)
    {
      c.deleteFile(Gr() + "mmbakinfo.ini");
      return;
    }
    af.iB(Gr());
    c.a(Gr() + "mmbakinfo.ini", paramArrayOfByte, paramArrayOfByte.length);
  }

  public static Handler Gg()
  {
    if (Gi().cJU == null)
      Gi().Gh();
    return Gi().cJU;
  }

  private void Gh()
  {
    new e(this).start();
  }

  private static d Gi()
  {
    if (cJN == null)
      cJN = new d();
    return cJN;
  }

  public static ax Gj()
  {
    if (Gi().cJT == null)
      Gi().cJT = new ax();
    return Gi().cJT;
  }

  public static l Gk()
  {
    if (Gi().cJO == null)
      Gi().cJO = new l();
    return Gi().cJO;
  }

  public static ar Gl()
  {
    if (Gi().cJP == null)
      Gi().cJP = new ar();
    return Gi().cJP;
  }

  public static aa Gm()
  {
    if (Gi().cJQ == null)
      Gi().cJQ = new aa();
    return Gi().cJQ;
  }

  public static am Gn()
  {
    if (Gi().cJS == null)
      Gi().cJS = new am();
    return Gi().cJS;
  }

  public static boolean Go()
  {
    if ((!c.as(be.uz().sU() + ".tem")) && (!c.as(be.uz().sV() + ".tem")))
    {
      com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.BackupCore", "openTempDB failed: tempDB file not exits");
      c.a(new File(Gr()));
      return false;
    }
    Gj().f(be.uz().sX(), be.uz().sW(), be.uz().sd());
    Gj().b(be.uz().sU() + ".tem", be.uz().sd(), be.uz().sV() + ".tem");
    return true;
  }

  private static void Gp()
  {
    i locali = new i();
    com.tencent.mm.sdk.b.a.ayH().f(locali);
  }

  public static void Gq()
  {
    c.deleteFile(be.uz().sU() + ".tem");
    c.deleteFile(be.uz().sU() + ".ini.tem");
    c.deleteFile(be.uz().sV() + ".tem");
    c.deleteFile(be.uz().sV() + ".ini.tem");
  }

  public static String Gr()
  {
    return be.uz().sX() + "backup/";
  }

  public static String Gs()
  {
    return be.uz().sX() + "backupReport/";
  }

  public static byte[] Gt()
  {
    if (Gi().cJV != null)
      Gi().cJV = c.h(Gr() + "mmbakinfo.ini", 0, -1);
    return Gi().cJV;
  }

  public static void a(j paramj)
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    cJX = 1 + cJX;
    be.ut().a(new f(paramj));
  }

  public static void a(Runnable paramRunnable, int paramInt)
  {
    Gk().g(false, false);
    Gl().g(false, false);
    Gm().cancel();
    if ((paramInt < 0) || ((Gk().Gy()) && (Gl().Gy()) && (Gm().Gy()) && (cJX == 0)))
    {
      if (paramInt < 0)
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.BackupCore", "closeTempDB no left tryCount!!");
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.BackupCore", "closeDB before");
      Gj().sh();
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.BackupCore", "closeDB after");
      paramRunnable.run();
      return;
    }
    new Handler(Looper.getMainLooper()).postDelayed(new g(paramRunnable, paramInt), 50L);
  }

  public static void e(Runnable paramRunnable)
  {
    a(new h(paramRunnable), 100);
  }

  public static y eV(int paramInt)
  {
    if (Gi().cJW == null)
    {
      d locald = Gi();
      locald.cJW = new HashMap();
      locald.cJW.put(Integer.valueOf(3), new ah());
      locald.cJW.put(Integer.valueOf(47), new ae());
      locald.cJW.put(Integer.valueOf(49), new ag());
      locald.cJW.put(Integer.valueOf(34), new ak());
      aj localaj = new aj();
      locald.cJW.put(Integer.valueOf(43), localaj);
      locald.cJW.put(Integer.valueOf(44), localaj);
      ai localai = new ai();
      locald.cJW.put(Integer.valueOf(48), localai);
      locald.cJW.put(Integer.valueOf(42), localai);
      locald.cJW.put(Integer.valueOf(10000), localai);
      locald.cJW.put(Integer.valueOf(1), localai);
      locald.cJW.put(Integer.valueOf(37), localai);
      locald.cJW.put(Integer.valueOf(40), localai);
      locald.cJW.put(Integer.valueOf(50), localai);
    }
    return (y)Gi().cJW.get(Integer.valueOf(paramInt));
  }

  public static com.tencent.mm.plugin.backup.a.f il(String paramString)
  {
    if (Gi().cJR == null)
      Gi().cJR = new x();
    return Gi().cJR.il(paramString);
  }

  public static com.tencent.mm.plugin.backup.a.f im(String paramString)
  {
    if (Gi().cJR == null)
      Gi().cJR = new x();
    return Gi().cJR.iy(paramString);
  }

  public static void reset()
  {
    if ((cJN != null) && (cJN.cJO != null))
      cJN.cJO.g(false, false);
    if ((cJN != null) && (cJN.cJP != null))
      cJN.cJP.g(false, false);
    if ((cJN != null) && (cJN.cJQ != null))
      cJN.cJQ.cancel();
    cJN = null;
  }

  public static ac uA()
  {
    return be.uA();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.d
 * JD-Core Version:    0.6.2
 */