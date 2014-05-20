package com.tencent.mm.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.n.aw;
import com.tencent.mm.protocal.a.ou;
import com.tencent.mm.protocal.a.pc;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.ay;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.cm;
import com.tencent.mm.storage.ai;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.cd;
import com.tencent.mm.storage.cf;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import junit.framework.Assert;

public final class b
  implements com.tencent.mm.n.e
{
  private static HashMap bZd;
  private String chA;
  private String chB;
  private String chC;
  private final o chD;
  private int chE = 0;
  private int chF;
  private List chG = new LinkedList();
  private com.tencent.mm.storage.e chl;
  private com.tencent.mm.storage.k chm;
  private cf chn;
  private ap cho;
  private com.tencent.mm.storage.o chp;
  private au chq;
  private cc chr;
  private com.tencent.mm.storage.c chs;
  private cd cht;
  private ai chu;
  private com.tencent.mm.as.a chv;
  private com.tencent.mm.ap.i chw = null;
  private com.tencent.mm.ap.i chx = null;
  private com.tencent.mm.ap.g chy = null;
  private SharedPreferences chz = null;
  private int uin = 0;

  static
  {
    HashMap localHashMap = new HashMap();
    bZd = localHashMap;
    localHashMap.put(Integer.valueOf("CONFIG_TABLE".hashCode()), new j());
    bZd.put(Integer.valueOf("CONTACT_TABLE".hashCode()), new k());
    bZd.put(Integer.valueOf("CHATROOM_MEMBERS_TABLE".hashCode()), new l());
    bZd.put(Integer.valueOf("CONVERSATION_TABLE".hashCode()), new m());
    bZd.put(Integer.valueOf("MESSAGE_TABLE".hashCode()), new n());
    bZd.put(Integer.valueOf("ROLEINFO_TABLE".hashCode()), new d());
    bZd.put(Integer.valueOf("STRANGER_TABLE".hashCode()), new e());
    bZd.put(Integer.valueOf("FILEDOWNLOAD_TABLE".hashCode()), new f());
  }

  public b(String paramString, o paramo)
  {
    this.chA = paramString;
    this.chD = paramo;
  }

  private void a(String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, String paramString5, int paramInt2, String paramString6, String paramString7, int paramInt3, int paramInt4, String paramString8, String paramString9, int paramInt5, String paramString10, String paramString11, String paramString12, String paramString13, int paramInt6)
  {
    if (this.uin == 0)
      Assert.assertTrue("AccountStorage.updateProfile uin == 0", false);
    StringBuilder localStringBuilder1;
    String str1;
    String str2;
    if (this.chl != null)
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Boolean.valueOf(be.se());
      arrayOfObject1[1] = v.th();
      aa.e("MicroMsg.AccountStorage", "updateProfile last_avatar_path hasUin:%b user:%s", arrayOfObject1);
      bd.cik.s("last_avatar_path", com.tencent.mm.m.c.dW(v.th()));
      bd.cik.a(paramString5, paramInt1, paramString4);
      aa.e("MicroMsg.AccountStorage", "updateProfile user:%s", new Object[] { paramString1 });
      this.chl.set(2, paramString1);
      this.chl.set(42, paramString2);
      this.chl.set(9, Integer.valueOf(paramInt1));
      com.tencent.mm.m.c.c(paramInt1, 3);
      this.chl.set(4, paramString3);
      this.chl.set(5, paramString4);
      this.chl.set(6, paramString5);
      this.chl.set(7, Integer.valueOf(paramInt2));
      this.chl.set(21, paramString6);
      this.chl.set(22, paramString7);
      this.chl.set(17, Integer.valueOf(paramInt3));
      this.chl.set(25, Integer.valueOf(paramInt4));
      this.chl.set(1, paramString8);
      this.chl.set(29, paramString9);
      this.chl.set(34, Integer.valueOf(paramInt5));
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.toHexString(paramInt5);
      aa.d("MicroMsg.AccountStorage", "pluginFlag %s", arrayOfObject2);
      this.chl.set(256, Boolean.valueOf(false));
      this.chl.set(-1535680990, paramString10);
      this.chl.set(46, paramString11);
      this.chl.set(72, paramString12);
      if ((paramString13 != null) && (paramString13.length() > 0))
      {
        this.chl.set(47, paramString13);
        be.us().set(18, paramString13);
      }
      this.chl.set(64, Integer.valueOf(paramInt6));
      be.uz().bZ(be.uz().sr().zz());
      aa.d("MicroMsg.AccountStorage", "update user profile:");
      aa.d("MicroMsg.AccountStorage", "|--username = " + paramString1);
      aa.d("MicroMsg.AccountStorage", "|--nickname = " + paramString3);
      aa.d("MicroMsg.AccountStorage", "|--alias = " + paramString2);
      aa.d("MicroMsg.AccountStorage", "|--qquin    = " + new com.tencent.mm.a.j(paramInt1));
      aa.d("MicroMsg.AccountStorage", "|--email    = " + paramString4);
      aa.d("MicroMsg.AccountStorage", "|--mobile   = " + paramString5);
      aa.d("MicroMsg.AccountStorage", "|--fsUrl   = " + paramString9);
      aa.d("MicroMsg.AccountStorage", "|--status   = " + com.tencent.mm.protocal.j.lh(paramInt2));
      localStringBuilder1 = new StringBuilder("|--pushmail = ");
      str1 = "code=" + Integer.toHexString(paramInt3);
      switch (paramInt3)
      {
      default:
        str2 = str1 + ", unknown";
      case 1:
      case 2:
      case 0:
      }
    }
    while (true)
    {
      aa.d("MicroMsg.AccountStorage", str2);
      StringBuilder localStringBuilder2 = new StringBuilder("|--sendcard = ");
      String str3 = "code=" + Integer.toHexString(paramInt4);
      if ((paramInt4 & 0x1) != 0)
        str3 = str3 + ", weibo";
      if ((paramInt4 & 0x2) != 0)
        str3 = str3 + ", signature";
      if ((paramInt4 & 0x4) != 0)
        str3 = str3 + ", qzone";
      if ((paramInt4 & 0x8) != 0)
        str3 = str3 + ", friend";
      aa.d("MicroMsg.AccountStorage", str3);
      aa.d("MicroMsg.AccountStorage", "|--qqmail = " + paramString10);
      aa.d("MicroMsg.AccountStorage", "|--a2 = " + paramString11);
      aa.d("MicroMsg.AccountStorage", "`--ksid = " + paramString13);
      aa.d("MicroMsg.AccountStorage", "|--safedevice = " + paramInt6);
      return;
      str2 = str1 + ", open";
      continue;
      str2 = str1 + ", close";
      continue;
      str2 = str1 + ", no-such-function";
    }
  }

  private void aI(String paramString)
  {
    aa.i("MicroMsg.AccountStorage", "closeDB " + paramString);
    if (this.chx != null)
      this.chx.sh();
    if (this.chw != null)
      this.chw.aI(paramString);
    if (this.chy != null)
    {
      this.chy.sh();
      this.chy = null;
    }
    this.chz = null;
  }

  public static void bJ(int paramInt)
  {
    be.uh().cG(paramInt);
    if ((paramInt & 0x10) != 0)
    {
      bv.a("medianote", null);
      be.uz().sx().tX("medianote");
    }
  }

  private String sK()
  {
    if (this.uin == 0)
      throw new a();
    return this.chA + "locallog";
  }

  private boolean si()
  {
    int i = com.tencent.mm.sdk.platformtools.cj.c((Integer)this.chl.get(14));
    int j = com.tencent.mm.protocal.a.fxr;
    aa.d("MicroMsg.AccountStorage", "tryDataTransfer, sVer = " + i + ", cVer = " + j);
    ak localak = be.uj();
    if (localak == null)
    {
      aa.e("MicroMsg.AccountStorage", "tryDataTransfer, dataTransferFactory is null");
      return false;
    }
    List localList = localak.nV();
    if (localList == null)
    {
      aa.e("MicroMsg.AccountStorage", "tryDataTransfer, dataTransferList is null");
      return false;
    }
    if ((com.tencent.mm.platformtools.at.cHC > 0) && (com.tencent.mm.platformtools.at.cHD > 0))
      aa.w("MicroMsg.AccountStorage", "tryDataTransfer, force data transfer");
    long l;
    boolean bool;
    do
    {
      aa.d("MicroMsg.AccountStorage", "tryDataTransfer dataTransferList size = " + localList.size());
      aa.d("MicroMsg.AccountStorage", "tryDataTransfer, threadId = " + Thread.currentThread().getId() + ", name = " + Thread.currentThread().getName());
      l = this.chw.ca(Thread.currentThread().getId());
      Iterator localIterator2 = localList.iterator();
      while (localIterator2.hasNext())
        ((aj)localIterator2.next()).co(i);
      if (i == j)
      {
        aa.i("MicroMsg.AccountStorage", "tryDataTransfer, no need to transfer, sVer = " + i + ", cVer = " + j);
        return false;
      }
      Iterator localIterator1 = localList.iterator();
      bool = false;
      do
      {
        if (!localIterator1.hasNext())
          break;
        bool = ((aj)localIterator1.next()).cn(i);
      }
      while (!bool);
      aa.d("MicroMsg.AccountStorage", "tryDataTransfer, needTransfer = " + bool);
    }
    while (bool);
    return false;
    int k;
    int m;
    if (com.tencent.mm.platformtools.at.cHC != 0)
    {
      k = com.tencent.mm.platformtools.at.cHD;
      m = 0;
    }
    while (true)
    {
      if ((k != 0) && (m < com.tencent.mm.platformtools.at.cHC));
      try
      {
        Thread.sleep(com.tencent.mm.platformtools.at.cHD);
        label380: m++;
        continue;
        if (l > 0L)
          this.chw.cb(l);
        return true;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label380;
      }
    }
  }

  public final void A(int paramInt1, int paramInt2)
  {
    int i = 1;
    if ((this.chE != paramInt1) || (this.chF != paramInt2));
    for (int j = i; ; j = 0)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[i] = Integer.valueOf(paramInt2);
      arrayOfObject[2] = Integer.valueOf(this.chE);
      aa.e("MicroMsg.AccountStorage", "online status, %d, %d, %d", arrayOfObject);
      if (j != 0)
        break;
      return;
    }
    com.tencent.mm.storage.n localn1;
    if (((0x1 & this.chE) == 0) && ((paramInt1 & 0x1) != 0))
      if (i != 0)
      {
        com.tencent.mm.storage.i locali = be.uz().su().tO("filehelper");
        if ((locali == null) || (com.tencent.mm.sdk.platformtools.cj.hX(locali.getUsername())))
          af.q(locali);
        if (!locali.rb())
        {
          locali.qI();
          be.uz().su().a(locali.getUsername(), locali);
        }
        localn1 = be.uz().sx().tZ("filehelper");
        if (localn1 != null)
          break label249;
        com.tencent.mm.storage.n localn2 = new com.tencent.mm.storage.n("filehelper");
        localn2.o(com.tencent.mm.sdk.platformtools.cj.FD());
        be.uz().sx().c(localn2);
      }
    while (true)
    {
      this.chE = paramInt1;
      this.chF = paramInt2;
      new Handler(Looper.getMainLooper()).post(new i(this));
      return;
      i = 0;
      break;
      label249: localn1.o(com.tencent.mm.sdk.platformtools.cj.FD());
      be.uz().sx().a(localn1, "filehelper");
    }
  }

  public final void a(com.tencent.mm.ap.h paramh)
  {
    if (this.chy == null)
      sg();
    this.chy.b(paramh);
  }

  public final void a(ba paramba)
  {
    if (this.chG == null)
    {
      this.chG = new LinkedList();
      return;
    }
    this.chG.add(paramba);
  }

  public final void a(ay paramay, String paramString1, int paramInt, String paramString2, String paramString3)
  {
    a(paramay.fyw.eBo, paramString1, paramInt, paramString2, paramay.fyw.fRk, paramString3, paramay.fyw.fzr, paramay.fyw.fRs, paramay.fyw.fRt, paramay.fyw.fCf, paramay.fyw.fQK, paramay.fyw.fRr, paramay.fyw.fQM, 0, paramay.fyw.fQO, null, null, null, -1);
  }

  public final void a(com.tencent.mm.protocal.l paraml)
  {
    rw localrw1 = paraml.fxM.fEI;
    rw localrw2 = paraml.fxM.fNa;
    rw localrw3 = paraml.fxM.fPI;
    rw localrw4 = paraml.fxM.fPJ;
    rw localrw5 = paraml.fxM.fQF;
    rw localrw6 = paraml.fxM.fQG;
    rv localrv = paraml.fxM.fCd;
    byte[] arrayOfByte1 = new byte[0];
    byte[] arrayOfByte2 = new byte[0];
    byte[] arrayOfByte3;
    int i;
    label148: int j;
    label165: String str1;
    label193: String str2;
    int k;
    String str3;
    label220: String str4;
    label230: String str5;
    label240: int m;
    String str6;
    if ((paraml.fxM.fRb != null) && (paraml.fxM.fRb.ayg() > 0))
    {
      arrayOfByte2 = be.ur().v(new com.tencent.mm.a.j(paraml.fxM.fPH).longValue());
      arrayOfByte3 = arrayOfByte1;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paraml.fxM.fQO;
      if (arrayOfByte3 != null)
        break label377;
      i = -1;
      arrayOfObject[1] = Integer.valueOf(i);
      if (arrayOfByte2 != null)
        break label385;
      j = -1;
      arrayOfObject[2] = Integer.valueOf(j);
      aa.e("MicroMsg.AccountStorage", "dkwt authkey:%s  a2key:%d  newa2key:%d", arrayOfObject);
      if (localrw1 != null)
        break label393;
      str1 = "";
      str2 = paraml.fxM.cqt;
      k = paraml.fxM.fPH;
      if (localrw2 != null)
        break label402;
      str3 = "";
      if (localrw3 != null)
        break label411;
      str4 = "";
      if (localrw4 != null)
        break label421;
      str5 = "";
      m = paraml.fxM.fzr;
      if (localrw5 != null)
        break label431;
      str6 = "";
      label259: if (localrw6 != null)
        break label441;
    }
    label385: label393: label402: label411: label421: label431: label441: for (String str7 = ""; ; str7 = localrw6.getString())
    {
      a(str1, str2, k, str3, str4, str5, m, str6, str7, paraml.fxM.fCf, paraml.fxM.fQK, paraml.fxM.fAW.avA(), paraml.fxM.fQM, paraml.fxM.fPK, paraml.fxM.fQO, com.tencent.mm.sdk.platformtools.cj.cp(arrayOfByte3), com.tencent.mm.sdk.platformtools.cj.cp(arrayOfByte2), com.tencent.mm.sdk.platformtools.cj.cp(com.tencent.mm.platformtools.an.a(localrv)), paraml.fxM.fBQ);
      return;
      arrayOfByte3 = com.tencent.mm.platformtools.an.a(paraml.fxM.fCj);
      break;
      label377: i = arrayOfByte3.length;
      break label148;
      j = arrayOfByte2.length;
      break label165;
      str1 = localrw1.getString();
      break label193;
      str3 = localrw2.getString();
      break label220;
      str4 = localrw3.getString();
      break label230;
      str5 = localrw4.getString();
      break label240;
      str6 = localrw5.getString();
      break label259;
    }
  }

  public final void b(ba paramba)
  {
    if (this.chG == null)
    {
      aa.w("MicroMsg.AccountStorage", "userStatusChangeListeners == null");
      return;
    }
    this.chG.remove(paramba);
  }

  public final void bX(String paramString)
  {
    aI(paramString);
  }

  public final SharedPreferences bY(String paramString)
  {
    if ((this.chz == null) && (this.uin != 0))
      this.chz = com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs() + paramString + this.uin, 0);
    return this.chz;
  }

  public final int bZ(String paramString)
  {
    if (com.tencent.mm.sdk.platformtools.cj.hX(paramString))
      return -1;
    if ((this.chy == null) || (this.chy.aDx()))
      return -2;
    this.chy.vN(paramString);
    return 0;
  }

  public final Object cl(int paramInt)
  {
    return this.chl.get(paramInt);
  }

  public final boolean isSDCardAvailable()
  {
    boolean bool = com.tencent.mm.compatible.g.i.qd();
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Boolean.valueOf(bool);
    arrayOfObject[1] = com.tencent.mm.a.j.getString(this.uin);
    arrayOfObject[2] = this.chA;
    arrayOfObject[3] = com.tencent.mm.storage.h.cfD;
    aa.f("MicroMsg.AccountStorage", "isSDCardAvail:%b uin:%s sysPath:[%s] sdRoot:[%s]", arrayOfObject);
    if (!bool)
      return bool;
    if (this.chA.startsWith(com.tencent.mm.storage.h.cfD))
      return true;
    if (se())
      be.uy();
    return true;
  }

  final void k(String paramString, int paramInt)
  {
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = com.tencent.mm.a.j.getString(paramInt);
    arrayOfObject1[1] = paramString;
    arrayOfObject1[2] = com.tencent.mm.a.j.getString(this.uin);
    arrayOfObject1[3] = this.chA;
    aa.d("MicroMsg.AccountStorage", "new[%s,%s] old[%s,%s]", arrayOfObject1);
    SharedPreferences localSharedPreferences = com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0);
    if (paramInt == 0)
    {
      if (this.uin != 0)
        release();
      paramInt = this.uin;
      this.uin = 0;
      localSharedPreferences.edit().putBoolean("isLogin", false).commit();
    }
    int i;
    if ((be.ut().azC()) && (!be.ut().azy()))
    {
      i = 1;
      if (i != 0)
        be.ut().azx();
      Object[] arrayOfObject2 = new Object[6];
      arrayOfObject2[0] = com.tencent.mm.a.j.getString(paramInt);
      arrayOfObject2[1] = paramString;
      arrayOfObject2[2] = com.tencent.mm.a.j.getString(this.uin);
      arrayOfObject2[3] = this.chA;
      arrayOfObject2[4] = Thread.currentThread().getName();
      arrayOfObject2[5] = com.tencent.mm.sdk.platformtools.cj.azV();
      aa.d("MicroMsg.AccountStorage", "dkacc setAccuin uin:%s[%s] this(old):%s[%s] thread:%s stack:%s", arrayOfObject2);
      if ((this.uin != 0) || (paramInt != this.uin) || (!com.tencent.mm.sdk.platformtools.cj.hX(paramString)))
        break label247;
      aa.w("MicroMsg.AccountStorage", "setAccUin, Reset by MMCore.resetAccUin");
    }
    while (true)
    {
      if (i != 0)
        be.ut().azz();
      return;
      i = 0;
      break;
      label247: if ((this.uin == paramInt) && (this.chA.equals(paramString)))
      {
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = Integer.valueOf(paramInt);
        aa.f("MicroMsg.AccountStorage", "setAccUin, uin not changed, return :%d", arrayOfObject5);
        continue;
      }
      if (!com.tencent.mm.sdk.platformtools.cj.hX(paramString))
        this.chA = paramString;
      if (this.uin != 0)
        release();
      if (this.chD != null)
        this.chD.td();
      this.uin = paramInt;
      com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0).edit().putBoolean("isLogin", true).commit();
      String str1 = com.tencent.mm.a.f.h(("mm" + paramInt).getBytes());
      this.chB = (this.chA + str1 + "/");
      this.chC = (com.tencent.mm.storage.h.cfC + str1 + "/");
      File localFile1 = new File(this.chC);
      aa.d("MicroMsg.AccountStorage", "dkacc cachePath:" + this.chC + " accPath:" + this.chB);
      if (!localFile1.exists())
      {
        Object[] arrayOfObject4 = new Object[3];
        arrayOfObject4[0] = com.tencent.mm.a.j.getString(paramInt);
        arrayOfObject4[1] = this.chC;
        arrayOfObject4[2] = this.chB;
        aa.c("MicroMsg.AccountStorage", "setUin REBUILD data now ! DO NOT FUCKING TELL ME DB BROKEN !!! uin:%s data:%s sd:%s", arrayOfObject4);
        localFile1.mkdirs();
        if (!this.chC.equalsIgnoreCase(this.chB))
        {
          long l2 = System.currentTimeMillis();
          File localFile30 = new File(this.chB);
          String str6 = str1 + "temp" + System.currentTimeMillis();
          String str7 = com.tencent.mm.storage.h.cfE + str6;
          localFile30.renameTo(new File(str7));
          aa.e("MicroMsg.AccountStorage", "find the old files and rename then %s" + (System.currentTimeMillis() - l2), new Object[] { str7 });
        }
      }
      File localFile2 = new File(this.chB);
      if (!localFile2.exists())
        localFile2.mkdir();
      File localFile3 = new File(sB());
      if (!localFile3.exists())
        localFile3.mkdir();
      File localFile4 = new File(sN());
      if (!localFile4.exists())
        localFile4.mkdir();
      File localFile5 = new File(sC());
      if (!localFile5.exists())
        localFile5.mkdir();
      File localFile6 = new File(sD());
      if (!localFile6.exists())
        localFile6.mkdir();
      File localFile7 = new File(sJ());
      if (!localFile7.exists())
        localFile7.mkdir();
      File localFile8 = new File(sK());
      if (!localFile8.exists())
        localFile8.mkdir();
      File localFile9 = new File(sL());
      if (!localFile9.exists())
        localFile9.mkdir();
      File localFile10 = new File(sF());
      if (!localFile10.exists())
        localFile10.mkdir();
      File localFile11 = new File(sG());
      if (!localFile11.exists())
        localFile11.mkdir();
      File localFile12 = new File(sM());
      if (!localFile12.exists())
        localFile12.mkdir();
      File localFile13 = new File(sO());
      if (!localFile13.exists())
        localFile13.mkdir();
      File localFile14 = new File(sP());
      if (!localFile14.exists())
        localFile14.mkdir();
      File localFile15 = new File(sQ());
      if (!localFile15.exists())
        localFile15.mkdir();
      File localFile16 = new File(sR());
      if (!localFile16.exists())
        localFile16.mkdir();
      File localFile17 = new File(sS());
      if (!localFile17.exists())
        localFile17.mkdir();
      File localFile18 = new File(sE());
      if (!localFile18.exists())
        localFile18.mkdir();
      if ((com.tencent.mm.compatible.g.i.qd()) && (this.chA.equals(com.tencent.mm.storage.h.cfE)))
        new p(this.chC, this.chB).start();
      File localFile19 = new File(sB() + ".nomedia");
      if (!localFile19.exists());
      try
      {
        localFile19.createNewFile();
        localFile20 = new File(sC() + ".nomedia");
        if (localFile20.exists());
      }
      catch (IOException localIOException2)
      {
        try
        {
          File localFile20;
          localFile20.createNewFile();
          localFile21 = new File(sD() + ".nomedia");
          if (localFile21.exists());
        }
        catch (IOException localIOException2)
        {
          try
          {
            File localFile21;
            localFile21.createNewFile();
            localFile22 = new File(sF() + ".nomedia");
            if (localFile22.exists());
          }
          catch (IOException localIOException2)
          {
            try
            {
              File localFile22;
              localFile22.createNewFile();
              localFile23 = new File(sG() + ".nomedia");
              if (localFile23.exists());
            }
            catch (IOException localIOException2)
            {
              try
              {
                File localFile23;
                localFile23.createNewFile();
                localFile24 = new File(sM() + ".nomedia");
                if (localFile24.exists());
              }
              catch (IOException localIOException2)
              {
                try
                {
                  File localFile24;
                  localFile24.createNewFile();
                  localFile25 = new File(sO() + ".nomedia");
                  if (localFile25.exists());
                }
                catch (IOException localIOException2)
                {
                  try
                  {
                    File localFile25;
                    localFile25.createNewFile();
                    localFile26 = new File(sP() + ".nomedia");
                    if (localFile26.exists());
                  }
                  catch (IOException localIOException2)
                  {
                    try
                    {
                      File localFile26;
                      localFile26.createNewFile();
                      localFile27 = new File(sR() + ".nomedia");
                      if (localFile27.exists());
                    }
                    catch (IOException localIOException2)
                    {
                      try
                      {
                        File localFile27;
                        localFile27.createNewFile();
                        StringBuilder localStringBuilder = new StringBuilder();
                        if (this.uin == 0)
                          throw new a();
                        localFile28 = new File(new StringBuilder().append(this.chB).append("favorite/").toString() + ".nomedia");
                        if (localFile28.exists());
                      }
                      catch (IOException localIOException2)
                      {
                        try
                        {
                          File localFile28;
                          localFile28.createNewFile();
                          localFile29 = new File(sE() + ".nomedia");
                          if (localFile29.exists());
                        }
                        catch (IOException localIOException2)
                        {
                          try
                          {
                            while (true)
                            {
                              File localFile29;
                              localFile29.createNewFile();
                              String str2 = this.chC + "MicroMsg.db";
                              String str3 = this.chC + "EnMicroMsg.db";
                              aI(null);
                              this.chw = new com.tencent.mm.ap.i(new c(this));
                              com.tencent.mm.ap.i locali = this.chw;
                              long l1 = paramInt;
                              String str4 = s.pU();
                              HashMap localHashMap = new HashMap();
                              localHashMap.putAll(bZd);
                              localHashMap.putAll(be.uh().vG());
                              if (!locali.a(str2, str3, l1, str4, localHashMap, true))
                                throw new a((byte)0);
                              String str5 = this.chw.aDA();
                              if (!com.tencent.mm.sdk.platformtools.cj.hX(str5))
                              {
                                aa.e("MicroMsg.AccountStorage", "dbinit failed :" + str5);
                                com.tencent.mm.sdk.platformtools.at.azE().aN("init db Failed: [ " + str5 + "]", "DBinit");
                              }
                              this.chl = new com.tencent.mm.storage.e(this.chw);
                              this.chq = new au(this.chB);
                              this.chm = new com.tencent.mm.storage.k(this.chw, this.chy);
                              ci.a(this.chw);
                              this.chn = new cf(this.chw);
                              this.chu = new ai(this.chw);
                              this.cho = new ap(this.chw);
                              this.chp = new com.tencent.mm.storage.o(this.chw);
                              cj.a(this.chw);
                              this.cho.a(this.chp, null);
                              this.chr = new cc(this.chw);
                              this.chs = new com.tencent.mm.storage.c(this.chw);
                              ch.a(this.chw);
                              this.chx = new com.tencent.mm.ap.i(new g(this));
                              if (!this.chx.a(str2, str3, paramInt, s.pU(), new HashMap(), true))
                                throw new a((byte)0);
                              this.cht = new cd(this.chl);
                              this.cht.e(new h(this));
                              this.cht.aDm();
                              com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs() + paramInt, 0);
                              boolean bool1 = si();
                              aa.d("MicroMsg.AccountStorage", "edw setAccUin, needTransfer = " + bool1);
                              aa.d("MicroMsg.AccountStorage", "edw postDataTransfer begin");
                              this.chv = new com.tencent.mm.as.a(sK());
                              if (this.chD != null)
                                this.chD.b(this);
                              int j = com.tencent.mm.sdk.platformtools.cj.c((Integer)this.chl.get(14));
                              int k = com.tencent.mm.protocal.a.fxr;
                              if (j == 0)
                                be.uk();
                              label2354: boolean bool3;
                              if (k == j)
                              {
                                bool2 = false;
                                if (bool2)
                                {
                                  this.chl.set(8197, "");
                                  this.chl.set(15, Integer.valueOf(0));
                                }
                                if (j == k)
                                  break label2773;
                                bool3 = true;
                                label2395: if ((j > 620822536) || (j == k))
                                  break label2779;
                                this.chl.set(274480, Boolean.valueOf(true));
                                label2424: if (j == k)
                                  break label2796;
                                aa.w("MicroMsg.AccountStorage", "account storage version changed from " + Integer.toHexString(j) + " to " + Integer.toHexString(k) + ", init=" + bool2);
                                if (((Integer)be.us().get(37, Integer.valueOf(0))).intValue() == 0)
                                  be.us().set(37, Integer.valueOf(j));
                                this.chl.set(14, Integer.valueOf(k));
                                be.uz().sr().set(30, Boolean.valueOf(false));
                                this.chl.set(-2046825377, Boolean.valueOf(false));
                                this.chl.set(-2046825369, Boolean.valueOf(false));
                                com.tencent.mm.i.i.rX().e(262145, false);
                                com.tencent.mm.i.i.rX().e(262146, true);
                                this.chl.set(54, Boolean.valueOf(false));
                                this.chl.set(-2046825368, Boolean.valueOf(false));
                                this.chl.set(-29414083, Integer.valueOf(0));
                                this.chl.set(-2046825366, Boolean.valueOf(true));
                                this.chl.set(62, Boolean.valueOf(true));
                                this.chl.set(274496, Integer.valueOf(0));
                                aa.i("MicroMsg.AccountStorage", "cpan update qq browser recommend count.");
                              }
                              while (true)
                              {
                                if (this.chD != null)
                                  this.chD.a(this, bool3);
                                Object[] arrayOfObject3 = new Object[1];
                                arrayOfObject3[0] = com.tencent.mm.a.j.getString(paramInt);
                                aa.f("MicroMsg.AccountStorage", "setAccUin done :%s", arrayOfObject3);
                                break;
                                if ((k > 570425344) && (j <= 570425344))
                                {
                                  bool2 = true;
                                  break label2354;
                                }
                                if ((k <= 570556456) || (j > 570556456))
                                  break label2861;
                                bool2 = true;
                                break label2354;
                                label2773: bool3 = false;
                                break label2395;
                                label2779: this.chl.set(274480, Boolean.valueOf(false));
                                break label2424;
                                label2796: am.sE("show_whatsnew");
                              }
                              localIOException11 = localIOException11;
                              continue;
                              localIOException10 = localIOException10;
                              continue;
                              localIOException9 = localIOException9;
                              continue;
                              localIOException8 = localIOException8;
                              continue;
                              localIOException7 = localIOException7;
                              continue;
                              localIOException6 = localIOException6;
                              continue;
                              localIOException5 = localIOException5;
                              continue;
                              localIOException4 = localIOException4;
                              continue;
                              localIOException3 = localIOException3;
                            }
                            localIOException2 = localIOException2;
                          }
                          catch (IOException localIOException1)
                          {
                            while (true)
                            {
                              continue;
                              label2861: boolean bool2 = false;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  final void release()
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = com.tencent.mm.a.j.getString(this.uin);
    arrayOfObject1[1] = Thread.currentThread().getName();
    arrayOfObject1[2] = com.tencent.mm.sdk.platformtools.cj.azV();
    aa.c("MicroMsg.AccountStorage", "account storage release  uin:%s thread:%s stack:%s", arrayOfObject1);
    if (this.uin == 0)
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = com.tencent.mm.sdk.platformtools.cj.azV().toString();
      arrayOfObject2[1] = be.ug();
      aa.b("MicroMsg.AccountStorage", "[arthurdan.AccountNR] Fatal crash error!!! uin is 0 when release(), this callStack is:%s, last reset stack is:%s", arrayOfObject2);
      return;
    }
    if (this.chv != null)
      this.chv.Dc();
    be.uh().vF();
    if (this.chm != null)
      this.chm.wa();
    if (be.nS() != null)
    {
      aa.i("MicroMsg.AccountStorage", "DownloadPlayer().release");
      be.nS().release();
      aa.i("MicroMsg.AccountStorage", "DownloadPlayer().clearCallBack");
      be.nS().ou();
    }
    aI(null);
    reset();
  }

  final void reset()
  {
    this.uin = 0;
    com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences(com.tencent.mm.sdk.platformtools.al.azs(), 0).edit().putBoolean("isLogin", false).commit();
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSZ", Locale.getDefault());
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.uin);
    arrayOfObject[1] = be.ug();
    arrayOfObject[2] = localSimpleDateFormat.format(new Date());
    aa.c("MicroMsg.AccountStorage", "[arthurdan.AccountNR] account storage reset! uin:%d, resetStack is:%s, resetTime:%s", arrayOfObject);
  }

  public final com.tencent.mm.storage.c sA()
  {
    if (this.uin == 0)
      throw new a();
    return this.chs;
  }

  public final String sB()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "image/";
  }

  public final String sC()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "image2/";
  }

  public final String sD()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "avatar/";
  }

  public final String sE()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "remark/";
  }

  public final String sF()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "voice/";
  }

  public final String sG()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "voice2/";
  }

  public final String sH()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "recbiz/";
  }

  public final String sI()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "speextemp/";
  }

  public final String sJ()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "emoji/";
  }

  public final String sL()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "mailapp/";
  }

  public final String sM()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "video/";
  }

  public final String sN()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "image/shakeTranImg/";
  }

  public final String sO()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "package/";
  }

  public final String sP()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "openapi/";
  }

  public final String sQ()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "attachment/";
  }

  public final String sR()
  {
    if (this.uin == 0)
      throw new a();
    return this.chB + "brandicon/";
  }

  public final String sS()
  {
    if (this.uin == 0)
      throw new a();
    return this.chC + "logcat/";
  }

  public final com.tencent.mm.as.a sT()
  {
    if (this.uin == 0)
      throw new a();
    return this.chv;
  }

  public final String sU()
  {
    return this.chC + "MicroMsg.db";
  }

  public final String sV()
  {
    return this.chC + "EnMicroMsg.db";
  }

  public final String sW()
  {
    return this.chC;
  }

  public final String sX()
  {
    return this.chB;
  }

  public final void sY()
  {
    String str1 = com.tencent.mm.a.f.h(("mm" + this.uin).getBytes());
    this.chC = (com.tencent.mm.storage.h.cfC + str1 + "/");
    String str2 = com.tencent.mm.storage.h.cfE + str1 + "/";
    com.tencent.mm.a.c.deleteFile(str2 + "EnMicroMsg.db.dump");
    com.tencent.mm.a.c.a(str2, "EnMicroMsg.db.dump", "", com.tencent.mm.a.c.g(this.chC + "EnMicroMsg.db", 0, -1));
    com.tencent.mm.a.c.deleteFile(str2 + "EnMicroMsg.db.dumptmp");
    com.tencent.mm.a.c.a(str2, "EnMicroMsg.db.dumptmp", "", com.tencent.mm.a.c.g(this.chC + "MicroMsg.db.tem", 0, -1));
  }

  public final void sZ()
  {
    String str1 = com.tencent.mm.a.f.h(("mm" + this.uin).getBytes());
    this.chC = (com.tencent.mm.storage.h.cfC + str1 + "/");
    String str2 = com.tencent.mm.storage.h.cfE + str1 + "/dump_logcat/";
    com.tencent.mm.a.c.a(new File(str2));
    com.tencent.mm.sdk.platformtools.m.f(this.chC + "logcat/", str2, false);
  }

  public final int sd()
  {
    return this.uin;
  }

  final boolean se()
  {
    return this.uin != 0;
  }

  public final String sf()
  {
    return this.chA;
  }

  public final void sg()
  {
    this.chy = new com.tencent.mm.ap.g(this.chw);
    this.chy.b(this.chr);
    this.chy.b(this.chs);
    this.chy.b(this.chl);
  }

  public final void sh()
  {
    aI(null);
  }

  public final void sj()
  {
    Iterator localIterator = this.chG.iterator();
    while (localIterator.hasNext())
      ((ba)localIterator.next()).uf();
  }

  public final boolean sk()
  {
    return (0x1 & this.chE) != 0;
  }

  public final int sl()
  {
    return this.chF;
  }

  public final boolean sm()
  {
    return (0x2 & this.chE) != 0;
  }

  public final boolean sn()
  {
    return (0x4 & this.chE) != 0;
  }

  public final boolean so()
  {
    return (0x8 & this.chE) != 0;
  }

  public final com.tencent.mm.ap.i sp()
  {
    return this.chw;
  }

  public final com.tencent.mm.ap.i sq()
  {
    return this.chx;
  }

  public final com.tencent.mm.storage.e sr()
  {
    if (this.uin == 0)
      throw new a();
    return this.chl;
  }

  public final cd ss()
  {
    if (this.uin == 0)
      throw new a();
    return this.cht;
  }

  public final au st()
  {
    if (this.uin == 0)
      throw new a();
    return this.chq;
  }

  public final com.tencent.mm.storage.k su()
  {
    if (this.uin == 0)
      throw new a();
    return this.chm;
  }

  public final cf sv()
  {
    if (this.uin == 0)
      throw new a();
    return this.chn;
  }

  public final ap sw()
  {
    if (this.uin == 0)
      throw new a();
    return this.cho;
  }

  public final com.tencent.mm.storage.o sx()
  {
    if (this.uin == 0)
      throw new a();
    return this.chp;
  }

  public final ai sy()
  {
    if (this.uin == 0)
      throw new a();
    return this.chu;
  }

  public final cc sz()
  {
    if (this.uin == 0)
      throw new a();
    return this.chr;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.b
 * JD-Core Version:    0.6.2
 */