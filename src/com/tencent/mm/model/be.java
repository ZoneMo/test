package com.tencent.mm.model;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.os.RemoteException;
import android.os.StatFs;
import com.tencent.mm.a.c;
import com.tencent.mm.a.j;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.aw;
import com.tencent.mm.n.g;
import com.tencent.mm.network.ag;
import com.tencent.mm.network.k;
import com.tencent.mm.protocal.a.bx;
import com.tencent.mm.protocal.a.by;
import com.tencent.mm.protocal.a.bz;
import com.tencent.mm.protocal.a.lr;
import com.tencent.mm.protocal.a.ls;
import com.tencent.mm.protocal.a.os;
import com.tencent.mm.protocal.a.ou;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.l;
import com.tencent.mm.protocal.u;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.cm;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.cd;
import com.tencent.mm.storage.d;
import com.tencent.mm.storage.m;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import junit.framework.Assert;

public final class be
  implements com.tencent.mm.n.h
{
  private static String ciA = "NoResetUinStack";
  private static be cim = null;
  private static boolean cir = true;
  private static boolean cis = false;
  private static boolean cit = false;
  private static boolean ciu = false;
  private static ak ciz;
  private final String chA;
  private g ciB;
  private String ciC = "";
  private Map ciD = new HashMap();
  private HashSet ciE = new HashSet();
  private ag ciF = new bf(this);
  private du ciG = new du();
  private cq ciH = new cq();
  private q ciI = new q();
  private ds ciJ = new ds();
  private m ciK = new bq(this);
  private com.tencent.mm.storage.r ciL = new bg(this);
  private com.tencent.mm.storage.r ciM = new bh(this);
  private final b cia;
  private final an cib;
  private final aw cin;
  private final ac cio;
  private final com.tencent.mm.sdk.platformtools.an cip;
  private final d ciq;
  private com.tencent.mm.compatible.audio.e civ = null;
  private dr ciw = null;
  private dv cix = null;
  private final int ciy = 1;

  private be(an paraman, d paramd, com.tencent.mm.n.ak paramak)
  {
    this.cib = paraman;
    this.ciq = paramd;
    this.ciw = new dr();
    this.cix = new dv();
    this.chA = up();
    this.cip = new com.tencent.mm.sdk.platformtools.an();
    this.cin = new aw();
    if (cj.c((Integer)this.ciq.get(17)) != 0);
    for (boolean bool = true; ; bool = false)
    {
      cir = bool;
      this.cia = new b(this.chA, new bj(this, paraman));
      this.cio = ac.a(paramak);
      this.cio.a(this.cip);
      return;
    }
  }

  public static void P(boolean paramBoolean)
  {
    ciu = paramBoolean;
  }

  public static void a(ak paramak)
  {
    ciz = paramak;
  }

  public static void a(an paraman, com.tencent.mm.n.ak paramak)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = com.tencent.mm.sdk.platformtools.i.ayK();
    arrayOfObject1[1] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
    aa.d("MicroMsg.MMCore", "initialize packageInfo:%s version:%x", arrayOfObject1);
    File localFile1 = new File(com.tencent.mm.storage.h.cfC);
    if (!localFile1.exists())
      localFile1.mkdirs();
    d locald = new d(com.tencent.mm.storage.h.cfC + "systemInfo.cfg");
    String str1 = (String)locald.get(258);
    if (str1 != null)
      com.tencent.mm.compatible.c.n.pK().set(258, str1);
    try
    {
      File localFile2 = Environment.getDataDirectory();
      StatFs localStatFs = new StatFs(localFile2.getPath());
      Object[] arrayOfObject5 = new Object[4];
      arrayOfObject5[0] = localFile2.getAbsolutePath();
      arrayOfObject5[1] = Integer.valueOf(localStatFs.getBlockSize());
      arrayOfObject5[2] = Integer.valueOf(localStatFs.getBlockCount());
      arrayOfObject5[3] = Integer.valueOf(localStatFs.getAvailableBlocks());
      aa.d("MicroMsg.MMCore", "CheckData path[%s] blocksize:%d blockcount:%d availcount:%d", arrayOfObject5);
      str2 = com.tencent.mm.storage.h.cfC + "alphahold.ini";
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
      arrayOfObject3[1] = Boolean.valueOf(com.tencent.mm.protocal.a.fxu);
      arrayOfObject3[2] = str2;
      aa.d("MicroMsg.MMCore", "initialize dkalpha client:%x  isapha:%b %s", arrayOfObject3);
      if ((com.tencent.mm.protocal.a.fxu) || (com.tencent.mm.protocal.a.fxv))
      {
        String str3 = com.tencent.mm.platformtools.i.getValue(str2, "noneedhold");
        if (!com.tencent.mm.protocal.a.fxr.equals(str3))
        {
          Object[] arrayOfObject4 = new Object[2];
          arrayOfObject4[0] = Integer.valueOf(com.tencent.mm.protocal.a.fxr);
          arrayOfObject4[1] = Boolean.valueOf(com.tencent.mm.protocal.a.fxu);
          aa.c("MicroMsg.MMCore", "dkalpha version need  reset to DefaultAccount , hold it! client:%x  isapha:%b", arrayOfObject4);
          locald.set(1, Integer.valueOf(0));
          com.tencent.mm.platformtools.i.k(str2, "noneedhold", com.tencent.mm.protocal.a.fxr);
        }
        be localbe = new be(paraman, locald, paramak);
        cim = localbe;
        com.tencent.mm.n.i.a(localbe);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str2;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localException.getMessage();
        aa.b("MicroMsg.MMCore", "check data size failed :%s", arrayOfObject2);
        continue;
        c.deleteFile(str2);
      }
    }
  }

  public static void a(g paramg)
  {
    aa.d("MicroMsg.MMCore", "cdndns setCdnUpdateListener");
    uq().ciB = paramg;
  }

  public static void a(ag paramag)
  {
    uq().ciE.add(paramag);
  }

  public static void a(boolean paramBoolean, by paramby, os paramos, ls paramls)
  {
    Object[] arrayOfObject1 = new Object[9];
    arrayOfObject1[0] = Boolean.valueOf(paramBoolean);
    int i;
    int j;
    label38: int k;
    label54: int m;
    label70: int n;
    label86: int i1;
    label102: String str1;
    label121: String str2;
    if (paramby == null)
    {
      i = -1;
      arrayOfObject1[1] = Integer.valueOf(i);
      if (paramby != null)
        break label208;
      j = -1;
      arrayOfObject1[2] = Integer.valueOf(j);
      if (paramls != null)
        break label217;
      k = -1;
      arrayOfObject1[3] = Integer.valueOf(k);
      if (paramos != null)
        break label226;
      m = -1;
      arrayOfObject1[4] = Integer.valueOf(m);
      if (paramos != null)
        break label235;
      n = -1;
      arrayOfObject1[5] = Integer.valueOf(n);
      if (paramos != null)
        break label244;
      i1 = -1;
      arrayOfObject1[6] = Integer.valueOf(i1);
      if (paramos != null)
        break label253;
      str1 = "null";
      arrayOfObject1[7] = str1;
      if (paramos != null)
        break label262;
      str2 = "null";
      label137: arrayOfObject1[8] = str2;
      aa.d("MicroMsg.MMCore", "dkidc updateMultiIDCInfo resetnewwork:%b iplist[l:%d s:%d] hostList[%d] noop[%d %d] typing[%d] port[%s] timeout[%s]", arrayOfObject1);
      if ((paramls != null) && (paramls.fAD != null) && (paramls.fAD.size() > 0))
        break label271;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = cj.azV();
      aa.a("MicroMsg.MMCore", "dkidc updateMultiIDCInfo give empty host request! stack:[%s]", arrayOfObject2);
    }
    label208: label217: label226: label235: label244: label253: String str3;
    label262: label271: String str4;
    com.tencent.mm.protocal.v localv;
    String str5;
    String str6;
    label1058: 
    do
    {
      return;
      i = paramby.fCG;
      break;
      j = paramby.fCH;
      break label38;
      k = paramls.fAC;
      break label54;
      m = paramos.fQj;
      break label70;
      n = paramos.fQk;
      break label86;
      i1 = paramos.fQl;
      break label102;
      str1 = paramos.fQh;
      break label121;
      str2 = paramos.fQi;
      break label137;
      if ((paramls == null) || (paramls.fAD == null) || (paramls.fAD.size() <= 0))
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = cj.azV();
        aa.a("MicroMsg.MMCore", "dkidc updateMultiIDCInfo give empty host request! stack:[%s]", arrayOfObject3);
        return;
      }
      LinkedList localLinkedList1 = new LinkedList();
      localLinkedList1.clear();
      Iterator localIterator1 = paramby.fCK.iterator();
      while (localIterator1.hasNext())
      {
        bx localbx2 = (bx)localIterator1.next();
        localLinkedList1.add(new u(localbx2.type, localbx2.fCF.avA(), localbx2.port));
        Object[] arrayOfObject7 = new Object[3];
        arrayOfObject7[0] = Integer.valueOf(localbx2.type);
        arrayOfObject7[1] = Integer.valueOf(localbx2.port);
        arrayOfObject7[2] = localbx2.fCF.avA();
        aa.e("MicroMsg.MMCore", "dkidc updateMultiIDCInfo short type:%d port:%d ip:%s", arrayOfObject7);
      }
      str3 = u.an(localLinkedList1);
      LinkedList localLinkedList2 = new LinkedList();
      Iterator localIterator2 = paramby.fCJ.iterator();
      while (localIterator2.hasNext())
      {
        bx localbx1 = (bx)localIterator2.next();
        localLinkedList2.add(new u(localbx1.type, localbx1.fCF.avA(), localbx1.port));
        Object[] arrayOfObject6 = new Object[3];
        arrayOfObject6[0] = Integer.valueOf(localbx1.type);
        arrayOfObject6[1] = Integer.valueOf(localbx1.port);
        arrayOfObject6[2] = localbx1.fCF.avA();
        aa.e("MicroMsg.MMCore", "dkidc updateMultiIDCInfo long type:%d port:%d ip:%s", arrayOfObject6);
      }
      str4 = u.an(localLinkedList2);
      aa.e("MicroMsg.MMCore", "dkidc updateMultiIDCInfo builtin ip long[%s] short[%s]", new Object[] { str4, str3 });
      uq().ciq.set(2, str3);
      SharedPreferences localSharedPreferences = com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences("system_config_prefs", 0);
      localSharedPreferences.edit().putString("builtin_short_ips", str3).commit();
      uq().ciq.set(3, str4);
      uq().ciq.set(6, paramos.fQh);
      uq().ciq.set(7, paramos.fQi);
      int i3;
      String[] arrayOfString1;
      String[] arrayOfString2;
      Iterator localIterator3;
      int i2;
      if (paramos.fQl != 0)
      {
        d locald = uq().ciq;
        if (paramos.fQl > 60)
        {
          i3 = 60;
          locald.set(35, Integer.valueOf(i3));
        }
      }
      else
      {
        com.tencent.mm.network.bp.a(paramos.fQj, paramos.fQm);
        localv = u.aJ(paramos.fQh, paramos.fQi);
        str5 = "";
        str6 = "";
        arrayOfString1 = new String[paramls.fAD.size()];
        arrayOfString2 = new String[paramls.fAD.size()];
        localIterator3 = paramls.fAD.iterator();
        i2 = 0;
      }
      while (true)
      {
        if (!localIterator3.hasNext())
          break label1058;
        lr locallr = (lr)localIterator3.next();
        Object[] arrayOfObject5 = new Object[2];
        arrayOfObject5[0] = locallr.fMX;
        arrayOfObject5[1] = locallr.fMY;
        aa.e("MicroMsg.MMCore", "dkidc host org:%s sub:%s", arrayOfObject5);
        arrayOfString1[i2] = locallr.fMX;
        arrayOfString2[i2] = locallr.fMY;
        i2++;
        if ((!cj.hX(locallr.fMX)) && (!cj.hX(locallr.fMY)))
        {
          if (locallr.fMX.equals("short.weixin.qq.com"))
          {
            uq().ciq.set(24, locallr.fMY);
            str6 = locallr.fMY;
            continue;
            i3 = paramos.fQl;
            break;
          }
          if (locallr.fMX.equals("long.weixin.qq.com"))
          {
            uq().ciq.set(25, locallr.fMY);
            str5 = locallr.fMY;
          }
          else if ((locallr.fMX.equals("support.weixin.qq.com")) && (!cj.hX(locallr.fMY)))
          {
            localSharedPreferences.edit().putString("support.weixin.qq.com", locallr.fMY).commit();
          }
        }
      }
      if (arrayOfString1.length > 0)
        com.tencent.mm.n.i.wC().uJ().uN().setHostInfo(arrayOfString1, arrayOfString2);
      Object[] arrayOfObject4 = new Object[3];
      arrayOfObject4[0] = Boolean.valueOf(paramBoolean);
      arrayOfObject4[1] = str6;
      arrayOfObject4[2] = str5;
      aa.e("MicroMsg.MMCore", "dkidc updateMultiIDCInfo resetnetwork:%b RESULT host s:%s l:%s", arrayOfObject4);
      if (!cj.hX(str5))
        uq().ciq.set(25, str5);
      if (!cj.hX(str6))
        uq().ciq.set(24, str6);
    }
    while ((com.tencent.mm.n.i.wC() == null) || (com.tencent.mm.n.i.wC().uJ() == null) || (com.tencent.mm.n.i.wC().uJ().uN() == null));
    com.tencent.mm.n.i.wC().uJ().uN().a(paramBoolean, str3, str4, localv.awL(), localv.awM(), localv.awN(), localv.awO(), str6, str5);
  }

  public static boolean a(bz parambz)
  {
    com.tencent.mm.sdk.platformtools.an.i(new bi(parambz));
    return true;
  }

  public static void b(ag paramag)
  {
    uq().ciE.remove(paramag);
  }

  public static void b(com.tencent.mm.network.r paramr)
  {
    aa.w("MicroMsg.MMCore", "setting up remote dispatcher " + paramr);
    if (paramr == null)
      aa.e("MicroMsg.MMCore", "setAutoAuth autoAuh is null");
    while (true)
    {
      return;
      try
      {
        if (paramr.xa() != null)
          paramr.xa().c(uq().ciF);
        label62: paramr.a(new bk());
        com.tencent.mm.network.n localn = paramr.wZ();
        if (localn == null)
        {
          aa.aM("MicroMsg.MMCore", "accInfo is null, it would assert before!!!");
          uq().cio.wV();
          return;
        }
        at.azE().a(new bl(localn), new bm());
        String str1 = "setAutoAuth, getSysCfg() is null, stack = " + cj.azV();
        boolean bool1;
        boolean bool2;
        label337: b localb;
        boolean bool3;
        label413: String str10;
        if (uq().ciq != null)
        {
          bool1 = true;
          Assert.assertTrue(str1, bool1);
          String str2 = (String)uq().ciq.get(2);
          String str3 = (String)uq().ciq.get(3);
          String str4 = (String)uq().ciq.get(6);
          String str5 = (String)uq().ciq.get(7);
          String str6 = (String)uq().ciq.get(25);
          String str7 = (String)uq().ciq.get(24);
          com.tencent.mm.protocal.v localv = u.aJ(str4, str5);
          aa.e("MicroMsg.MMCore", "dkidc host[s:%s l:%s] builtin[s:%s l:%s] ports[%s] timeout[%s]", new Object[] { str7, str6, str2, str3, str4, str5 });
          String str8 = "setAutoAuth, autoAuth is null, stack = " + cj.azV();
          if (paramr == null)
            break label498;
          bool2 = true;
          Assert.assertTrue(str8, bool2);
          paramr.a(false, str2, str3, localv.awL(), localv.awM(), localv.awN(), localv.awO(), str7, str6);
          localb = uz();
          String str9 = "setAutoAuth, accStg is null, stack = " + cj.azV();
          if (localb == null)
            break label504;
          bool3 = true;
          Assert.assertTrue(str9, bool3);
          str10 = "setAutoAuth, accInfo is null, stack = " + cj.azV();
          if (localn == null)
            break label510;
        }
        label498: label504: label510: for (boolean bool4 = true; ; bool4 = false)
        {
          Assert.assertTrue(str10, bool4);
          if (se())
            break label516;
          aa.w("MicroMsg.MMCore", "need to clear acc info and maybe stop networking");
          localn.reset();
          paramr.reset();
          uq().cio.b(paramr);
          return;
          bool1 = false;
          break;
          bool2 = false;
          break label337;
          bool3 = false;
          break label413;
        }
        label516: uq().cio.b(paramr);
        k.a(new bn(paramr));
        if (localb.sd() == localn.sd())
          continue;
        aa.w("MicroMsg.MMCore", "update acc info with acc stg: uin =" + localn.sd());
        String str11 = "setAutoAuth, getConfigStg() is null, stack = " + cj.azV();
        if (uz().sr() != null);
        for (boolean bool5 = true; ; bool5 = false)
        {
          Assert.assertTrue(str11, bool5);
          String str12 = (String)uz().sr().get(2);
          String str13 = (String)uz().sr().get(3);
          String str14 = (String)uz().sr().get(19);
          localn.q("", uz().sd());
          localn.f(str12, str13, str14);
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        break label62;
      }
    }
  }

  public static void cs(int paramInt)
  {
    b localb = uq().cia;
    if (localb != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("MMCore has not been initialize ?", bool);
      try
      {
        if (se())
          return;
        localb.k(null, paramInt);
        return;
      }
      finally
      {
      }
    }
  }

  public static void dr(String paramString)
  {
    ciA = paramString;
  }

  public static int ds(String paramString)
  {
    int i;
    int j;
    if (uq().ciD.get(paramString) == null)
    {
      i = 0;
      j = (int)cj.FC();
      if (i != 0)
        break label67;
      uq().ciD.put(paramString, Integer.valueOf(j));
    }
    label67: 
    do
    {
      return i;
      i = ((Integer)uq().ciD.get(paramString)).intValue();
      break;
      i = j - i;
      uq().ciD.put(paramString, Integer.valueOf(j));
    }
    while (i >= 0);
    return 0;
  }

  public static void dt(String paramString)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = j.getString(uz().sd());
    arrayOfObject[1] = paramString;
    arrayOfObject[2] = cj.azV();
    aa.c("MicroMsg.MMCore", "logoutAccount uin:%s info:%s stack:%s", arrayOfObject);
    ciA = cj.azV().toString() + paramString;
    uq().cin.w(uz().sd());
    release();
    uq().ciq.set(1, Integer.valueOf(0));
    cis = false;
    cit = false;
    ciu = false;
  }

  public static ap nQ()
  {
    return uq().cib.nQ();
  }

  public static al nS()
  {
    return uq().cib.nS();
  }

  public static ah nT()
  {
    return uq().cib.nT();
  }

  public static void release()
  {
    Object[] arrayOfObject = new Object[1];
    if (uq().cia != null);
    for (String str = j.getString(uq().cia.sd()); ; str = "-1")
    {
      arrayOfObject[0] = str;
      aa.c("MicroMsg.MMCore", "release uin:%s ", arrayOfObject);
      if (uq().cio != null)
        uq().cio.reset();
      if (uq().cip != null)
        uq().cip.a(new bp());
      return;
    }
  }

  public static boolean se()
  {
    if (cim == null)
      return false;
    return (cim.cia.se()) && (cim.cia.sd() == cj.c((Integer)uq().ciq.get(1)));
  }

  public static ac uA()
  {
    return uq().cio;
  }

  public static com.tencent.mm.compatible.audio.e uB()
  {
    if (uq().civ == null)
      uq().civ = new com.tencent.mm.compatible.audio.e(com.tencent.mm.sdk.platformtools.al.getContext());
    return uq().civ;
  }

  public static boolean uC()
  {
    if ((uq().cia == null) || (se()))
      return false;
    return cj.c((Integer)uq().ciq.get(1)) != 0;
  }

  public static boolean uD()
  {
    if (cim == null)
      return false;
    return cj.c((Integer)uq().ciq.get(1)) != 0;
  }

  public static boolean uE()
  {
    return uz() != null;
  }

  public static boolean uF()
  {
    if ((uq().cia == null) || (se()))
      return false;
    return cj.c((Integer)uq().ciq.get(1)) != 0;
  }

  public static boolean uG()
  {
    Object[] arrayOfObject;
    if (cir)
    {
      arrayOfObject = new Object[1];
      if (uq().cia == null)
        break label50;
    }
    label50: for (String str = j.getString(uq().cia.sd()); ; str = "-1")
    {
      arrayOfObject[0] = str;
      aa.c("MicroMsg.MMCore", "account holded :%s", arrayOfObject);
      return cir;
    }
  }

  public static void uH()
  {
    Object[] arrayOfObject = new Object[1];
    if (uq().cia != null);
    for (String str = j.getString(uq().cia.sd()); ; str = "-1")
    {
      arrayOfObject[0] = str;
      aa.c("MicroMsg.MMCore", " HOLD ACCOUNT! uin:%s", arrayOfObject);
      cir = true;
      uq().ciq.set(17, Integer.valueOf(1));
      return;
    }
  }

  public static void uI()
  {
    Object[] arrayOfObject = new Object[1];
    if (uq().cia != null);
    for (String str = j.getString(uq().cia.sd()); ; str = "-1")
    {
      arrayOfObject[0] = str;
      aa.c("MicroMsg.MMCore", " UN HOLD ACCOUNT! uin:%s", arrayOfObject);
      cir = false;
      uq().ciq.set(17, Integer.valueOf(0));
      return;
    }
  }

  public static String ug()
  {
    return ciA;
  }

  public static dr uh()
  {
    return uq().ciw;
  }

  public static dv ui()
  {
    return uq().cix;
  }

  public static ak uj()
  {
    return ciz;
  }

  public static void uk()
  {
    cis = true;
  }

  public static boolean ul()
  {
    return cit;
  }

  public static void um()
  {
    cit = false;
  }

  public static boolean un()
  {
    return ciu;
  }

  public static String uo()
  {
    try
    {
      String str = cj.hW(uq().cio.uN().wZ().uo());
      return str;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.c("MicroMsg.MMCore", "get session key error, %s", arrayOfObject);
    }
    return "";
  }

  private static String up()
  {
    String str = com.tencent.mm.storage.h.cfC;
    File localFile6;
    if ((new File(com.tencent.mm.storage.h.cfD).exists()) && (com.tencent.mm.compatible.g.i.qd()))
    {
      File localFile2 = new File(com.tencent.mm.storage.h.cfE);
      if ((localFile2.exists()) || (localFile2.mkdirs()))
        str = com.tencent.mm.storage.h.cfE;
      File localFile3 = new File(com.tencent.mm.storage.h.cfG);
      if (!localFile3.exists())
        localFile3.mkdirs();
      File localFile4 = new File(com.tencent.mm.storage.h.ggv);
      if (!localFile4.exists())
        localFile4.mkdirs();
      File localFile5 = new File(com.tencent.mm.storage.h.ggw);
      if (!localFile5.exists())
        localFile5.mkdirs();
      localFile6 = new File(com.tencent.mm.storage.h.ggv + ".nomedia");
      if (localFile6.exists());
    }
    try
    {
      localFile6.createNewFile();
      label178: File localFile1 = new File(str);
      if (!localFile1.exists())
        localFile1.mkdirs();
      return str;
    }
    catch (IOException localIOException)
    {
      break label178;
    }
  }

  private static be uq()
  {
    Assert.assertNotNull("MMCore not initialized by MMApplication", cim);
    return cim;
  }

  public static aw ur()
  {
    return uq().cin;
  }

  public static d us()
  {
    return uq().ciq;
  }

  public static com.tencent.mm.sdk.platformtools.an ut()
  {
    return uq().cip;
  }

  public static ds uu()
  {
    return uq().ciJ;
  }

  public static String uv()
  {
    if (cj.hX(uq().ciC))
      uw();
    return uq().ciC;
  }

  public static void uw()
  {
    uq().ciC = (s.pV() + "_" + System.currentTimeMillis());
    uq().ciD.clear();
  }

  public static void ux()
  {
    b localb = uq().cia;
    boolean bool = false;
    if (localb != null)
      bool = true;
    Assert.assertTrue("MMCore has not been initialize ?", bool);
    try
    {
      localb.k(null, 0);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void uy()
  {
    boolean bool = true;
    b localb = uq().cia;
    if (localb != null);
    while (true)
    {
      Assert.assertTrue("MMCore has not been initialize ?", bool);
      try
      {
        String str = up();
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = Integer.valueOf(localb.sd());
        arrayOfObject[1] = localb.sf();
        arrayOfObject[2] = str;
        aa.d("MicroMsg.MMCore", "remount begin uin:%d oldpath:[%s] newPath:[%s]", arrayOfObject);
        if (!cj.hX(str))
        {
          if (str.equalsIgnoreCase(localb.sf()))
            return;
          localb.k(str, localb.sd());
          com.tencent.mm.c.a.i locali = new com.tencent.mm.c.a.i();
          com.tencent.mm.sdk.b.a.ayH().f(locali);
        }
        return;
      }
      finally
      {
      }
      bool = false;
    }
  }

  public static b uz()
  {
    boolean bool = true;
    b localb = uq().cia;
    if (localb != null);
    while (true)
    {
      Assert.assertTrue("MMCore has not been initialize ?", bool);
      if (!se())
        break;
      return localb;
      bool = false;
    }
    try
    {
      if (se())
        return localb;
      d locald = uq().ciq;
      Integer localInteger = (Integer)locald.get(1);
      if ((localInteger != null) && (localInteger.intValue() != 0))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = cj.azV();
        aa.c("MicroMsg.MMCore", "auto set up account storage stack: %s", arrayOfObject);
        localb.k(null, localInteger.intValue());
        if (cj.hW((String)localb.sr().get(2)).length() <= 0)
        {
          aa.e("MicroMsg.MMCore", "username of acc stg not set: uin=" + localInteger);
          localb.reset();
          locald.set(1, Integer.valueOf(0));
          ciA = cj.azV().toString();
          com.tencent.mm.sdk.platformtools.an.i(new bo());
        }
      }
      return localb;
    }
    finally
    {
    }
  }

  public final void a(l paraml, int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.MMCore", "onAutoAuthEnd [%d,%d]", arrayOfObject1);
    if ((paramInt1 == 4) && (paramInt2 == -301))
    {
      aa.d("MicroMsg.MMCore", "dkidc onAutoAuthEnd RedirectIDC");
      a(true, paraml.fxM.fBO, paraml.fxM.fBP, paraml.fxM.fBN);
      return;
    }
    j localj = new j(paraml.fxM.fPH);
    if ((paramInt1 == 4) && (paramInt2 == -105))
    {
      aa.d("MicroMsg.MMCore", "dkwt onAutoAuthEnd INVALID LOGINBUFF  set use to md5");
      aw.r(v.th(), 2);
      uq().cin.w(localj.longValue());
      return;
    }
    boolean bool1 = uq().cin.a(localj.longValue(), com.tencent.mm.platformtools.an.a(paraml.fxM.fRb));
    Object[] arrayOfObject2 = new Object[4];
    arrayOfObject2[0] = v.th();
    int i;
    boolean bool2;
    label387: com.tencent.mm.storage.e locale;
    if (paraml.fxM.fRb == null)
    {
      i = -1;
      arrayOfObject2[1] = Integer.valueOf(i);
      arrayOfObject2[2] = Boolean.valueOf(bool1);
      arrayOfObject2[3] = Integer.valueOf(paraml.fxM.fRa);
      aa.e("MicroMsg.MMCore", "dkwt onAutoAuthEnd username:%s wtresp:%d parseWtResp:%b nextAuthType:%d ", arrayOfObject2);
      aw.r(v.th(), paraml.fxM.fRa);
      cs(paraml.fxM.fAX);
      uz().ss().vD(paraml.fxM.fQW);
      uz().a(paraml);
      aa.d("MicroMsg.MMCore", "dkwt onAutoAuthEnd succ . UNset manual auth scene for update");
      uz().sr().set(256, Boolean.valueOf(false));
      if (paraml.fxM.fPH != 0)
        uz().sz().an(new j(paraml.fxM.fPH) + "@qqim", 3);
      cc localcc = uz().sz();
      String str = paraml.fxM.fQH.getString();
      if (paraml.fxM.fQI != 1)
        break label576;
      bool2 = true;
      localcc.M(str, bool2);
      a(false, paraml.fxM.fBO, paraml.fxM.fBP, paraml.fxM.fBN);
      uz().sr().set(-1535680990, paraml.fxM.fQO);
      locale = uz().sr();
      if (paraml.fxM.fQY == 0)
        break label582;
    }
    label576: label582: for (int j = 1; ; j = 0)
    {
      locale.set(57, Integer.valueOf(j));
      uq().ciq.set(32, "");
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = paraml.fxM.fQy;
      aa.e("MicroMsg.MMCore", "dkrsa setautoauthtick:%s", arrayOfObject3);
      a(paraml.fxM.fKt);
      com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences("system_config_prefs", 0).edit().putInt("default_uin", paraml.fxM.fAX).commit();
      return;
      i = paraml.fxM.fRb.ayg();
      break;
      bool2 = false;
      break label387;
    }
  }

  public final ac uJ()
  {
    return this.cio;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.be
 * JD-Core Version:    0.6.2
 */