package com.tencent.mm.z;

import android.os.Handler;
import com.tencent.mm.as.d;
import com.tencent.mm.c.a.ei;
import com.tencent.mm.c.a.fq;
import com.tencent.mm.c.a.gq;
import com.tencent.mm.c.a.gw;
import com.tencent.mm.c.a.gy;
import com.tencent.mm.c.a.ha;
import com.tencent.mm.c.a.hh;
import com.tencent.mm.m.s;
import com.tencent.mm.m.x;
import com.tencent.mm.m.y;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.co;
import com.tencent.mm.model.r;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ae;
import com.tencent.mm.p.ab;
import com.tencent.mm.pluginsdk.aj;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.protocal.a.cx;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.dm;
import com.tencent.mm.protocal.a.dp;
import com.tencent.mm.protocal.a.dq;
import com.tencent.mm.protocal.a.dv;
import com.tencent.mm.protocal.a.ed;
import com.tencent.mm.protocal.a.ee;
import com.tencent.mm.protocal.a.gf;
import com.tencent.mm.protocal.a.lv;
import com.tencent.mm.protocal.a.mu;
import com.tencent.mm.protocal.a.nu;
import com.tencent.mm.protocal.a.nw;
import com.tencent.mm.protocal.a.ob;
import com.tencent.mm.protocal.a.ok;
import com.tencent.mm.protocal.a.ol;
import com.tencent.mm.protocal.a.op;
import com.tencent.mm.protocal.a.oq;
import com.tencent.mm.protocal.a.ov;
import com.tencent.mm.protocal.a.qn;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.protocal.a.wl;
import com.tencent.mm.protocal.a.yu;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cb;
import com.tencent.mm.storage.cc;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class n
{
  private static List cuX = new ArrayList();
  private boolean cvl = false;
  private boolean cvm = false;
  private List cvn = new LinkedList();

  public static void a(com.tencent.mm.model.ax paramax)
  {
    synchronized (cuX)
    {
      if (!cuX.contains(paramax))
        cuX.add(paramax);
      return;
    }
  }

  private static void a(dv paramdv)
  {
    LinkedList localLinkedList = paramdv.fBb;
    for (int i = 0; i < localLinkedList.size(); i++)
      bv.n(com.tencent.mm.platformtools.an.a(paramdv.fEI), ((Integer)localLinkedList.get(i)).intValue());
  }

  public static void a(ob paramob)
  {
    a(paramob, null);
  }

  private static void a(ob paramob, String paramString, com.tencent.mm.storage.i parami)
  {
    String str = com.tencent.mm.model.v.th();
    if ((str != null) && (!str.equals(paramString)))
    {
      com.tencent.mm.p.a locala = ab.ye().eG(paramString);
      locala.field_username = paramString;
      locala.field_brandList = paramob.cqy;
      dl localdl = paramob.fNw;
      if (localdl != null)
      {
        locala.field_brandFlag = localdl.cqC;
        locala.field_brandInfo = localdl.cqE;
        locala.field_brandIconURL = localdl.cqF;
        locala.field_extInfo = localdl.cqD;
      }
      if (!ab.ye().b(locala))
        ab.ye().a(locala);
      parami.bUi = locala.field_type;
    }
  }

  private static void a(ob paramob, byte[] paramArrayOfByte)
  {
    boolean bool1 = true;
    if (paramob == null)
    {
      com.tencent.mm.sdk.platformtools.aa.aM("MicroMsg.SyncDoCmd", "unable to parse mod contact");
      return;
    }
    String str1 = com.tencent.mm.platformtools.an.a(paramob.fEI);
    String str2 = cj.hW(paramob.fPe);
    if ((cj.hX(str1)) && (cj.hX(str2)))
    {
      Object[] arrayOfObject6 = new Object[2];
      arrayOfObject6[0] = str1;
      arrayOfObject6[bool1] = str2;
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.SyncDoCmd", "processModContact user is null user:%s enuser:%s", arrayOfObject6);
      return;
    }
    Object[] arrayOfObject1 = new Object[bool1];
    arrayOfObject1[0] = str1;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "processModContact : %s", arrayOfObject1);
    com.tencent.mm.storage.i locali1 = be.uz().su().tO(str1);
    if (str1.equals(locali1.aAs()))
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.SyncDoCmd", "cat's replace user with stranger");
      return;
    }
    com.tencent.mm.storage.i locali2 = new com.tencent.mm.storage.i(str1);
    locali2.bx(paramob.cqt);
    locali2.setType(paramob.fEj & paramob.fEk);
    label173: long l;
    if (!cj.hX(str2))
    {
      locali2.tF(str2);
      if (locali1 != null)
        break label1092;
      l = 0L;
      label181: locali2.cfY = l;
      locali2.bt(com.tencent.mm.platformtools.an.a(paramob.fNa));
      locali2.bv(com.tencent.mm.platformtools.an.a(paramob.fEG));
      locali2.bw(com.tencent.mm.platformtools.an.a(paramob.fEH));
      locali2.bL(paramob.cqq);
      locali2.bS(paramob.fEp);
      locali2.bM(com.tencent.mm.platformtools.an.a(paramob.fOY));
      locali2.bT(paramob.fEt);
      locali2.bN(paramob.cqs);
      locali2.bO(RegionCodeDecoder.w(paramob.cqx, paramob.Tu, paramob.Tv));
      locali2.bz(paramob.cqr);
      locali2.bV(paramob.fNp);
      locali2.bN(paramob.fNq);
      locali2.setSource(paramob.fzV);
      locali2.bP(paramob.fNt);
      locali2.bE(paramob.fNs);
      if (w.dh(paramob.fNr))
        locali2.bD(paramob.fNr);
      locali2.bX((int)cj.FC());
      locali2.bH(com.tencent.mm.platformtools.an.a(paramob.fOO));
      locali2.bJ(com.tencent.mm.platformtools.an.a(paramob.fOQ));
      locali2.bI(com.tencent.mm.platformtools.an.a(paramob.fOP));
      locali2.bUj = paramob.fAb;
      locali2.bUk = paramob.fPo;
      if (!cj.hW(locali1.bUk).equals(cj.hW(paramob.fPo)))
      {
        String str3 = com.tencent.mm.ae.c.BT().gl(str1);
        Object[] arrayOfObject5 = new Object[2];
        arrayOfObject5[0] = str1;
        arrayOfObject5[bool1] = str3;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.RemarkImageStorage", "remove remark image: %s, path:%s", arrayOfObject5);
        com.tencent.mm.a.c.deleteFile(str3);
      }
      if (cj.A(paramArrayOfByte))
        break label1103;
      be.uz().su().g(str1, paramArrayOfByte);
      if (com.tencent.mm.storage.i.lP(locali2.rJ()))
        a(paramob, str1, locali2);
    }
    label661: int i;
    while (true)
    {
      locali2.field_deleteFlag = paramob.fPn;
      if ((paramob.fPj != null) && (paramob.fPj.fzB != null))
      {
        locali2.bUl = paramob.fPj.fzB.fBp;
        locali2.bUm = paramob.fPj.fzB.fBq;
        locali2.bUn = paramob.fPj.fzB.fBr;
      }
      if (cj.hX(locali2.ru()))
        break label1124;
      bool2 = false;
      if (w.db(str1))
        locali2.qP();
      if (locali2.aAp())
        locali2.qS();
      if (cj.hX(str2))
        break label1546;
      be.uz().su().b(str2, locali2);
      if (bool2)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "needModContact");
        w.o(locali2);
      }
      if (w.cp(str1))
      {
        if ((paramob.fKF != null) && (!a(str1, paramob.fKF.fDc)))
          b(str1, paramob.fKF.fDc);
        Object[] arrayOfObject3 = new Object[bool1];
        if (paramob.fKF != null)
          break label1561;
        i = 0;
        label734: arrayOfObject3[0] = Integer.valueOf(i);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "processModContact chatroom count:%d", arrayOfObject3);
        if ((paramob.fKF != null) && (paramob.fKF.fzc != 0))
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "mod roomdata " + paramob.fPc);
          com.tencent.mm.plugin.chatroom.b.a locala = new com.tencent.mm.plugin.chatroom.b.a();
          locala.type = paramob.fPm;
          locala.yx = paramob.fPl;
          locala.cWp = paramob.fEv;
          locala.cWr = paramob.fPk;
          if (paramob.fKF.fDd == 0)
            locala.cWq = paramob.fPk;
          Object[] arrayOfObject4 = new Object[7];
          arrayOfObject4[0] = paramob.fPb;
          arrayOfObject4[bool1] = Integer.valueOf(paramob.fPm);
          arrayOfObject4[2] = Integer.valueOf(paramob.fPl);
          arrayOfObject4[3] = paramob.fEv;
          arrayOfObject4[4] = Integer.valueOf(paramob.fPk);
          arrayOfObject4[5] = Integer.valueOf(paramob.fKF.fDd);
          if (paramob.fKF.fDd != 0)
            break label1573;
          label939: arrayOfObject4[6] = Boolean.valueOf(bool1);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "chatOwner:%s, type:%d,  maxCount: %d, upgrader: %s,  Version:%d,  infoMask:%d, isInit:%b", arrayOfObject4);
          r.a(str1, paramob.fPb, paramob.fKF, com.tencent.mm.model.v.th(), locala);
        }
      }
      if ((!locali2.rb()) && (!locali2.rc()) && (!com.tencent.mm.storage.i.tC(locali2.getUsername())))
        be.uz().sx().tX(locali2.getUsername());
      if ((0x800 & locali1.getType()) == (0x800 & locali2.getType()))
        break;
      if ((0x800 & locali2.getType()) == 0)
        break label1578;
      be.uz().sx().ub(locali2.getUsername());
      return;
      if ((locali1 == null) || (locali1.rj() <= 0))
        break label173;
      locali2.tF(locali1.aAs());
      break label173;
      label1092: l = locali1.rj();
      break label181;
      label1103: be.uz().su().tT(str1);
      a(locali2, paramob);
    }
    label1124: com.tencent.mm.storage.ce localce = be.uz().sv().vF(locali2.getUsername());
    if (((localce == null) || (cj.hX(localce.aAs()))) && (!cj.hX(str2)))
      localce = be.uz().sv().vF(str2);
    if ((localce != null) && (!cj.hX(localce.aAs())))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "mod stranger remark : " + localce.aAs());
      locali2.bH(localce.ru());
      locali2.bJ(com.tencent.mm.platformtools.h.hI(localce.ru()));
      locali2.bI(com.tencent.mm.platformtools.h.hJ(localce.ru()));
      if ((!w.cs(locali2.getUsername())) && (locali2.rb()))
        be.uz().sv().vG(localce.aAs());
    }
    for (boolean bool2 = bool1; ; bool2 = false)
      switch (locali2.getSource())
      {
      case 12:
      default:
        break;
      case 10:
      case 11:
      case 13:
        com.tencent.mm.modelfriend.h localh;
        if ((paramob != null) && (!cj.hX(paramob.fPh)))
          localh = com.tencent.mm.modelfriend.ax.Al().J(paramob.fPh, paramob.fPi);
        while (true)
        {
          if ((localh == null) || (cj.hX(localh.yM())) || (!localh.yW()))
            break label1544;
          Object[] arrayOfObject2 = new Object[3];
          arrayOfObject2[0] = localh.yM();
          arrayOfObject2[bool1] = localh.getUsername();
          arrayOfObject2[2] = Boolean.valueOf(bool2);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "remarkName RealName[%s], User[%s], remarkChange[%s]", arrayOfObject2);
          localh.setUsername(locali2.getUsername());
          localh.setStatus(2);
          localh.yV();
          if (!bool2)
          {
            locali2.bH(localh.yM());
            locali2.bJ(com.tencent.mm.platformtools.h.hI(localh.yM()));
            locali2.bI(com.tencent.mm.platformtools.h.hJ(localh.yM()));
            bool2 = bool1;
          }
          if (!locali2.rb())
            break;
          com.tencent.mm.modelfriend.ax.Al().a(localh.yK(), localh);
          break;
          boolean bool3 = cj.hX(str2);
          localh = null;
          if (!bool3)
            localh = com.tencent.mm.modelfriend.ax.Al().fq(str2);
        }
        label1544: break;
        label1546: be.uz().su().A(locali2);
        break label661;
        label1561: i = paramob.fKF.fzc;
        break label734;
        label1573: bool1 = false;
        break label939;
        label1578: be.uz().sx().uc(locali2.getUsername());
        return;
      }
  }

  private void a(ak paramak, com.tencent.mm.protocal.a.l paraml)
  {
    if (cuX.isEmpty())
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.SyncDoCmd", "no notifiers, ignore");
    while (true)
    {
      return;
      if ((paramak.rO() != 0) || (paramak.getStatus() == 4))
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.SyncDoCmd", "not new msg, ignore");
        return;
      }
      String str = com.tencent.mm.platformtools.an.a(paraml.fzs);
      ca localca = be.uz().sz().vB(new cb(str).vA(""));
      if ((localca != null) && (!localca.aDi()))
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "account no notification");
        return;
      }
      if (this.cvm)
        break;
      this.cvm = true;
      ArrayList localArrayList = new ArrayList();
      synchronized (cuX)
      {
        Iterator localIterator1 = cuX.iterator();
        if (localIterator1.hasNext())
          localArrayList.add((com.tencent.mm.model.ax)localIterator1.next());
      }
      Iterator localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        com.tencent.mm.model.ax localax = (com.tencent.mm.model.ax)localIterator2.next();
        new Handler(localax.getLooper()).post(new p(this, localax, paramak));
      }
    }
    this.cvn.add(paramak);
  }

  private static boolean a(com.tencent.mm.storage.i parami, ob paramob)
  {
    if ((parami == null) || (cj.hX(parami.getUsername())))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "dkinit dealModContactExtInfo failed invalid contact");
      return false;
    }
    String str1 = parami.getUsername();
    String str2 = parami.aAs();
    x localx = com.tencent.mm.m.c.a(str1, paramob);
    com.tencent.mm.m.af.wm().a(localx);
    vp localvp = paramob.fNv;
    if ((!parami.getUsername().endsWith("@chatroom")) && (localvp != null))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "SnsFlag modcontact " + localvp.cqz + " " + paramob.fEI);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "SnsBg modcontact " + localvp.cqA);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "SnsBgId modcontact " + localvp.cqB);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "SnsBgId modcontact " + localvp.fWj);
      if (aq.apz() != null)
        aq.apz().a(parami.getUsername(), localvp);
    }
    boolean bool;
    if (parami.rb())
    {
      bool = com.tencent.mm.ah.k.Dy().v(str1, 1);
      if (!bool)
        break label401;
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "fmsgConversation updateState succ, user = " + str1);
    }
    while (true)
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.SyncDoCmd", "processModContact, update state(ADDED) FMessageConversation, ret = " + bool);
      if ((parami.rb()) && ((parami.getSource() == 10) || (parami.getSource() == 13)))
      {
        com.tencent.mm.modelsimple.f.d(al.getContext(), parami.getUsername(), parami.aAs());
        com.tencent.mm.modelfriend.h localh = com.tencent.mm.modelfriend.ax.Al().fq(parami.aAs());
        if ((localh != null) && (!cj.hX(localh.yX())))
        {
          localh.setUsername(parami.getUsername());
          int i = com.tencent.mm.modelfriend.ax.Al().a(localh.yX(), localh);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "account sync: update addr " + i);
        }
      }
      a(paramob, str1, parami);
      return true;
      label401: bool = com.tencent.mm.ah.k.Dy().v(str2, 1);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "fmsgConversation updateState succ, encryptUser = " + str2);
    }
  }

  private static boolean a(String paramString, LinkedList paramLinkedList)
  {
    if (com.tencent.mm.pluginsdk.h.aps() == null)
      return false;
    String str = com.tencent.mm.pluginsdk.h.aps().Rp();
    if ((cj.hX(str)) || (!str.equals(paramString)) || (!w.cp(paramString)))
      return false;
    if (paramLinkedList != null)
    {
      Iterator localIterator = paramLinkedList.iterator();
      while (localIterator.hasNext())
      {
        com.tencent.mm.protocal.a.cf localcf = (com.tencent.mm.protocal.a.cf)localIterator.next();
        if ((!cj.hX(localcf.eBo)) && (localcf.eBo.equals(com.tencent.mm.model.v.th())))
          return false;
      }
    }
    if (com.tencent.mm.pluginsdk.h.apu() != null)
    {
      if (com.tencent.mm.pluginsdk.h.apu().aa(paramString, com.tencent.mm.model.v.th()))
      {
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.SyncDoCmd", "kicked self shareing");
        hh localhh = new hh();
        localhh.bRe.bPx = paramString;
        com.tencent.mm.sdk.b.a.ayH().f(localhh);
      }
      com.tencent.mm.pluginsdk.h.apu().a(paramString, null, 0.0D, 0.0D, "", "", "");
    }
    if ((com.tencent.mm.pluginsdk.h.aps() != null) && (!cj.hX(com.tencent.mm.pluginsdk.h.apu().Rz())))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = com.tencent.mm.pluginsdk.h.aps().Rp();
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "sync remove chatroom end track %s", arrayOfObject);
      com.tencent.mm.c.a.aa localaa = new com.tencent.mm.c.a.aa();
      localaa.bMq.username = com.tencent.mm.pluginsdk.h.aps().Rp();
      com.tencent.mm.sdk.b.a.ayH().f(localaa);
    }
    return true;
  }

  public static void b(com.tencent.mm.model.ax paramax)
  {
    synchronized (cuX)
    {
      cuX.remove(paramax);
      return;
    }
  }

  private static void b(String paramString, LinkedList paramLinkedList)
  {
    gy localgy1 = new gy();
    localgy1.bQS.bQU = true;
    com.tencent.mm.sdk.b.a.ayH().f(localgy1);
    if ((cj.hX(paramString)) || (!w.cp(paramString)) || (cj.hX(localgy1.bQT.bQW)) || (!paramString.equals(localgy1.bQT.bQW)))
      return;
    if (paramLinkedList != null)
    {
      Iterator localIterator = paramLinkedList.iterator();
      while (localIterator.hasNext())
      {
        com.tencent.mm.protocal.a.cf localcf = (com.tencent.mm.protocal.a.cf)localIterator.next();
        if ((!cj.hX(localcf.eBo)) && (localcf.eBo.equals(com.tencent.mm.model.v.th())))
          return;
      }
    }
    if (com.tencent.mm.pluginsdk.h.apl() != null)
      com.tencent.mm.pluginsdk.h.apl().a(paramString, null, "", "", 0);
    gy localgy2 = new gy();
    localgy2.bQS.bQV = true;
    com.tencent.mm.sdk.b.a.ayH().f(localgy2);
    gw localgw = new gw();
    localgw.bQQ.bQR = true;
    com.tencent.mm.sdk.b.a.ayH().f(localgw);
  }

  private static void c(com.tencent.mm.protocal.a.l paraml)
  {
    if (cj.hX(paraml.fzA))
      return;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paraml.fzA;
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "notifyPushContent, pushContent = %s", arrayOfObject);
    be.nQ().a(paraml.fzA, com.tencent.mm.platformtools.an.a(paraml.fzs), paraml.fzu);
  }

  public static boolean r(com.tencent.mm.storage.i parami)
  {
    if ((parami == null) || (cj.hX(parami.getUsername())))
    {
      Object[] arrayOfObject1 = new Object[1];
      if (parami == null);
      for (String str = "-1"; ; str = parami.getUsername())
      {
        arrayOfObject1[0] = str;
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.SyncDoCmd", "dealModContactExtInfo username:%s ", arrayOfObject1);
        return false;
      }
    }
    byte[] arrayOfByte = be.uz().su().tS(parami.getUsername());
    if (cj.A(arrayOfByte))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = parami.getUsername();
      if (arrayOfByte == null);
      for (int i = -1; ; i = arrayOfByte.length)
      {
        arrayOfObject2[1] = Integer.valueOf(i);
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.SyncDoCmd", "dealModContactExtInfo username:%s  buf:%d", arrayOfObject2);
        return false;
      }
    }
    try
    {
      ob localob2 = new ob().by(arrayOfByte);
      localob1 = localob2;
      be.uz().su().tT(parami.getUsername());
      if (localob1 == null)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "dkinit dealModContactExtInfo failed parse buf failed.");
        return false;
      }
      return a(parami, localob1);
    }
    catch (Exception localException)
    {
      while (true)
        ob localob1 = null;
    }
  }

  public final void Bx()
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.addAll(this.cvn);
    this.cvn.clear();
    ArrayList localArrayList = new ArrayList();
    synchronized (cuX)
    {
      Iterator localIterator1 = cuX.iterator();
      if (localIterator1.hasNext())
        localArrayList.add((com.tencent.mm.model.ax)localIterator1.next());
    }
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      com.tencent.mm.model.ax localax = (com.tencent.mm.model.ax)localIterator2.next();
      new Handler(localax.getLooper()).post(new o(this, localax, localLinkedList));
    }
  }

  public final boolean a(cx paramcx, boolean paramBoolean)
  {
    if (!be.se())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "account storage disabled, discard all commands");
      return false;
    }
    long l = cj.FD();
    byte[] arrayOfByte = com.tencent.mm.platformtools.an.a(paramcx.fEa);
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = Long.valueOf(l);
    arrayOfObject1[1] = Integer.valueOf(paramcx.fDZ);
    arrayOfObject1[2] = Integer.valueOf(cj.co(arrayOfByte));
    arrayOfObject1[3] = Thread.currentThread().getName();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "doCmd %d cmdid:%d buf:%d thr:[%s]", arrayOfObject1);
    if (cj.A(arrayOfByte))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "docmd: no protobuf found.");
      return false;
    }
    label861: int i4;
    label878: boolean bool13;
    label1696: boolean bool11;
    label2405: boolean bool12;
    label2417: boolean bool9;
    label3125: boolean bool10;
    label3147: qn localqn;
    boolean bool7;
    label3504: boolean bool8;
    label3526: com.tencent.mm.storage.i locali2;
    com.tencent.mm.storage.i locali3;
    while (true)
    {
      try
      {
        switch (paramcx.fDZ)
        {
        default:
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "doCmd: no processing method, cmd id=" + paramcx.fDZ);
          Object[] arrayOfObject3 = new Object[3];
          arrayOfObject3[0] = Long.valueOf(l);
          arrayOfObject3[1] = Integer.valueOf(paramcx.fDZ);
          arrayOfObject3[2] = Long.valueOf(cj.N(l));
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "doCmd FIN %d cmdid:%d Time:%d", arrayOfObject3);
          return true;
        case 2:
        case 17:
          ob localob = new ob().by(arrayOfByte);
          if (paramBoolean)
          {
            a(localob, arrayOfByte);
            continue;
          }
          break;
        case 4:
        case 5:
        case 6:
        case 1:
        case 7:
        case 8:
        case 22:
        case 9:
        case 13:
        case 15:
        case 23:
        case 25:
        case 24:
        case 33:
        case 35:
        case 44:
        case 999999:
        case 53:
        }
      }
      catch (IOException localIOException)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "docmd: parse protobuf error, " + localIOException.getMessage());
        return false;
      }
      arrayOfByte = null;
      continue;
      dp localdp = new dp().aO(arrayOfByte);
      be.uz().sx().tX(com.tencent.mm.platformtools.an.a(localdp.fEI));
      w.cx(com.tencent.mm.platformtools.an.a(localdp.fEI));
      continue;
      com.tencent.mm.protocal.a.l locall = new com.tencent.mm.protocal.a.l().aE(arrayOfByte);
      Object[] arrayOfObject9 = new Object[2];
      arrayOfObject9[0] = Integer.valueOf(locall.fzo);
      arrayOfObject9[1] = Integer.valueOf(com.tencent.mm.platformtools.at.cHK);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "dkmsgid  set svrmsgid %d -> %d", arrayOfObject9);
      if ((10008 == com.tencent.mm.platformtools.at.cHJ) && (com.tencent.mm.platformtools.at.cHK != 0))
      {
        locall.fzo = com.tencent.mm.platformtools.at.cHK;
        com.tencent.mm.platformtools.at.cHK = 0;
      }
      if (be.uz().sw().mk(locall.fzo))
      {
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.SyncDoCmd", "ignore, because reSync the deleted msg perhaps the IDC has change has swtiched");
      }
      else
      {
        com.tencent.mm.model.ce.dC(locall.fzz);
        String str18 = com.tencent.mm.platformtools.an.a(locall.fzs);
        if ((!cj.hX(str18)) && (!be.uz().su().tP(str18)))
          ar.tZ().jdMethod_do(str18);
        Object[] arrayOfObject10 = new Object[2];
        arrayOfObject10[0] = str18;
        arrayOfObject10[1] = Integer.valueOf(locall.fzu);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "add msg, user:%s type:%d", arrayOfObject10);
        if (str18.equals("readerapp"))
        {
          locall.fzs = com.tencent.mm.platformtools.an.hQ("newsapp");
          locall.fzu = 12399999;
        }
        if ((str18.equals("blogapp")) || (str18.equals("newsapp")))
          locall.fzu = 12399999;
        if (locall.fzu == 52)
          locall.fzu = 1000052;
        if (locall.fzu == 53)
          locall.fzu = 1000053;
        com.tencent.mm.n.j localj = com.tencent.mm.n.l.T(Integer.valueOf(locall.fzu));
        if (localj == null)
          localj = com.tencent.mm.n.l.T(str18);
        if (localj != null)
        {
          com.tencent.mm.n.k localk = localj.a(locall);
          if (localk == null);
          for (ak localak2 = null; ; localak2 = localk.bLP)
          {
            if (localak2 != null)
              break label861;
            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.SyncDoCmd", "extension declared but skipped msg, type=" + locall.fzu + ", svrid=" + locall.fzo);
            c(locall);
            break;
          }
          if ((!w.cz(str18)) || (com.tencent.mm.x.b.Bj()))
            break label5384;
          i4 = 1;
          if (i4 != 0)
          {
            c(locall);
          }
          else
          {
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", " msg , id =" + localak2.Bo() + "  " + this.cvl);
            if ((localak2.Bo() > 0L) && (this.cvl) && (localk.clN))
              a(localak2, locall);
            c(locall);
          }
        }
        else
        {
          Object[] arrayOfObject11 = new Object[1];
          arrayOfObject11[0] = Integer.valueOf(locall.fzu);
          com.tencent.mm.sdk.platformtools.aa.a("MicroMsg.SyncDoCmd", "unknown add msg request, type=%d. drop now !!!", arrayOfObject11);
          continue;
          ol localol = new ol().bA(arrayOfByte);
          ak localak1 = new ak();
          String str17 = (String)be.uz().sr().get(2);
          com.tencent.mm.storage.ap localap = be.uz().sw();
          localak1.cL(8);
          localak1.setStatus(localol.fzr);
          if ((com.tencent.mm.platformtools.an.a(localol.fzs) != null) && (com.tencent.mm.platformtools.an.a(localol.fzs).equals(str17)))
            localak1.uK(com.tencent.mm.platformtools.an.a(localol.fzt));
          while (true)
          {
            localap.a(localol.fzo, localak1);
            break;
            if ((com.tencent.mm.platformtools.an.a(localol.fzt) != null) && (com.tencent.mm.platformtools.an.a(localol.fzt).equals(str17)))
            {
              localak1.uK(com.tencent.mm.platformtools.an.a(localol.fzs));
            }
            else
            {
              com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "doCmd : CmdModMsgStatus not found this msg");
              Assert.assertTrue("invalid mod msg cmd, unknown talker", false);
            }
          }
          oq localoq = new oq().bC(arrayOfByte);
          be.uz().sr().get(2);
          com.tencent.mm.storage.e locale2 = be.uz().sr();
          com.tencent.mm.m.af.vJ();
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "mod user info, bitflag=-1");
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "userinfo state " + localoq.fzr);
          String str11 = com.tencent.mm.platformtools.an.a(localoq.fEI);
          String str12 = com.tencent.mm.platformtools.an.a(localoq.fNa);
          String str13 = com.tencent.mm.platformtools.an.a(localoq.fPI);
          String str14 = com.tencent.mm.platformtools.an.a(localoq.fPJ);
          com.tencent.mm.storage.i locali7 = be.uz().su().tO(str11);
          if ((locali7 == null) || (locali7.getUsername() == null) || (!locali7.getUsername().equals(str11)))
            locali7 = new com.tencent.mm.storage.i(str11);
          locali7.bx(localoq.cqt);
          locali7.bt(str12);
          locali7.bO(RegionCodeDecoder.w(localoq.cqx, localoq.Tu, localoq.Tv));
          locali7.bL(localoq.cqq);
          locali7.bz(localoq.cqr);
          be.uz().su().A(locali7);
          locale2.set(2, str11);
          locale2.set(4, str12);
          locale2.set(5, str13);
          locale2.set(6, str14);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "doCmd : status " + com.tencent.mm.protocal.j.lh(localoq.fzr));
          locale2.set(7, Integer.valueOf(localoq.fzr));
          if (localoq.cqs != 0)
          {
            co localco = new co();
            localco.vy();
            localco.bL(localoq.cqq);
            localco.bz(localoq.cqr);
            localco.setCountryCode(localoq.cqx);
            localco.dM(localoq.Tu);
            localco.dL(localoq.Tv);
            localco.bD(localoq.fNr);
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", " getPersonalCard weibo url : " + localco.rG() + " nickName :" + localoq.fNs);
            co.a(localco);
          }
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "userinfo Plugstate: " + com.tencent.mm.protocal.j.li(localoq.fPK));
          locale2.set(34, Integer.valueOf(localoq.fPK));
          be.uz();
          com.tencent.mm.model.b.bJ(localoq.fPK);
          if (1 != localoq.fPq.fES)
            break label5390;
          bool13 = true;
          locale2.set(8200, Boolean.valueOf(cj.a(Boolean.valueOf(bool13), false)));
          locale2.set(8201, Integer.valueOf(cj.a(Integer.valueOf(localoq.fPq.fET.fEW), 22)));
          locale2.set(8208, Integer.valueOf(cj.a(Integer.valueOf(localoq.fPq.fET.fDR), 8)));
          locale2.set(66049, Integer.valueOf(localoq.fNp));
          locale2.set(66050, localoq.fNq);
          locale2.set(40, Integer.valueOf(localoq.fPP));
          locale2.set(41, Integer.valueOf(localoq.fNt));
          locale2.set(43, localoq.fNs);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "doCmd PluginSwitch:" + localoq.fPP + " WeiboFlag:" + localoq.fNt);
          locale2.set(868518889, Integer.valueOf(localoq.fPB));
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "doCmd USERINFO_TXNEWSCATEGORY:" + localoq.fPB);
          locale2.set(42, localoq.cqt);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "userid:" + localoq.fGv + " username:" + localoq.fGw);
          locale2.set(65825, localoq.fGv);
          com.tencent.mm.m.c.dR(localoq.fGv);
          locale2.set(65826, localoq.fGw);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "getiAlbumFlag " + localoq.cqu);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "getiAlbumStyle " + localoq.cqv);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "getPcAlbumBGImgID " + localoq.cqw);
          String str15 = cj.hW((String)be.uz().sr().get(65830));
          if ((str15 == null) || (str15.length() == 0))
          {
            String str16 = localoq.fPS;
            if ((str16 != null) && (str16.length() > 0))
            {
              be.uz().sr().set(65830, str16);
              continue;
              dm localdm = new dm().aN(arrayOfByte);
              be.uz().sx().tX(com.tencent.mm.platformtools.an.a(localdm.fEI));
              continue;
              dq localdq = new dq().aP(arrayOfByte);
              bv.o(com.tencent.mm.platformtools.an.a(localdq.fEI), localdq.fEK);
              continue;
              lv locallv = new lv().br(arrayOfByte);
              ae localae = new ae();
              localae.setUsername(locallv.eBo);
              localae.dg(locallv.fNb);
              localae.dh((int)cj.FC());
              com.tencent.mm.modelfriend.ax.Ap().a(localae);
              continue;
              a(new dv().aQ(arrayOfByte));
              continue;
              ok localok = new ok().bz(arrayOfByte);
              if (1 == localok.fPy)
              {
                cc localcc = be.uz().sz();
                String str10 = com.tencent.mm.platformtools.an.a(localok.fEI);
                if (localok.fPn != 1)
                  break label5396;
                bool11 = true;
                if (localok.fPz != 1)
                  break label5402;
                bool12 = true;
                localcc.b(str10, bool11, bool12);
              }
              else
              {
                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "unknown micro blog type:" + localok.fPy);
                continue;
                nw localnw = new nw().bx(arrayOfByte);
                if (localnw != null)
                {
                  com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "processModChatRoomMember username:" + localnw.fEI + " nickname:" + localnw.fNa);
                  com.tencent.mm.storage.i locali6 = new com.tencent.mm.storage.i(com.tencent.mm.platformtools.an.a(localnw.fEI));
                  locali6.bt(com.tencent.mm.platformtools.an.a(localnw.fNa));
                  locali6.bv(com.tencent.mm.platformtools.an.a(localnw.fEG));
                  locali6.bw(com.tencent.mm.platformtools.an.a(localnw.fEH));
                  locali6.bL(localnw.cqq);
                  locali6.bH(com.tencent.mm.platformtools.an.a(localnw.fOO));
                  locali6.bJ(com.tencent.mm.platformtools.an.a(localnw.fOQ));
                  locali6.bI(com.tencent.mm.platformtools.an.a(localnw.fOP));
                  locali6.bS(localnw.fEp);
                  x localx5 = new x();
                  localx5.cL(-1);
                  localx5.setUsername(locali6.getUsername());
                  localx5.ep(localnw.fDh);
                  localx5.eo(localnw.fDg);
                  Object[] arrayOfObject8 = new Object[3];
                  arrayOfObject8[0] = localx5.getUsername();
                  arrayOfObject8[1] = localx5.vV();
                  arrayOfObject8[2] = localx5.vW();
                  com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "dkhurl chatmember %s b[%s] s[%s]", arrayOfObject8);
                  localx5.Q(true);
                  if ((localnw.fOT == 3) || (localnw.fOT == 4))
                  {
                    locali6.bU(localnw.fOT);
                    localx5.bU(localnw.fOT);
                  }
                  while (true)
                  {
                    com.tencent.mm.m.af.wm().a(localx5);
                    be.uz().su().A(locali6);
                    com.tencent.mm.p.a locala2 = ab.ye().eG(locali6.getUsername());
                    locala2.field_username = locali6.getUsername();
                    locala2.field_brandList = localnw.cqy;
                    dl localdl = localnw.fNw;
                    if (localdl != null)
                    {
                      locala2.field_brandFlag = localdl.cqC;
                      locala2.field_brandInfo = localdl.cqE;
                      locala2.field_brandIconURL = localdl.cqF;
                      locala2.field_extInfo = localdl.cqD;
                    }
                    if (ab.ye().b(locala2))
                      break;
                    ab.ye().a(locala2);
                    break;
                    if (localnw.fOT == 2)
                    {
                      locali6.bU(3);
                      localx5.bU(3);
                      locali6.bU(3);
                      if (!com.tencent.mm.model.v.th().equals(locali6.getUsername()))
                      {
                        com.tencent.mm.m.af.vJ().i(locali6.getUsername(), false);
                        com.tencent.mm.m.af.vJ().i(locali6.getUsername(), true);
                        com.tencent.mm.m.af.wo().dY(locali6.getUsername());
                        be.uz().sT().a(new d(1001, locali6.getUsername()));
                      }
                    }
                  }
                  gf localgf = new gf().aV(arrayOfByte);
                  switch (localgf.fIH)
                  {
                  case 4:
                  case 2:
                  case 3:
                  default:
                    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "unknown function switch id:" + localgf.fIH);
                    break;
                  case 1:
                    be.uz().sr().set(17, Integer.valueOf(localgf.fII));
                    continue;
                    wl localwl = new wl().bY(arrayOfByte);
                    if (localwl == null)
                      break label5408;
                    bool9 = true;
                    Assert.assertTrue(bool9);
                    if (cj.hW(localwl.eBo).length() <= 0)
                      break label5414;
                    bool10 = true;
                    Assert.assertTrue(bool10);
                    if (!com.tencent.mm.storage.i.ty(localwl.eBo))
                    {
                      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.SyncDoCmd", "processModTContact: tcontact should ends with @t.qq.com");
                    }
                    else
                    {
                      com.tencent.mm.storage.i locali4 = be.uz().su().tO(localwl.eBo);
                      String str9;
                      if ((locali4 == null) || (locali4.rj() == 0))
                      {
                        com.tencent.mm.storage.i locali5 = new com.tencent.mm.storage.i(localwl.eBo);
                        locali5.bH(localwl.fDf);
                        locali5.bS(1);
                        locali5.qM();
                        if (be.uz().su().C(locali5) == -1)
                        {
                          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "processModTContact: insert contact failed");
                        }
                        else
                        {
                          str9 = locali5.getUsername();
                          if (str9 == null)
                            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.AvatarLogic", "setMBTAvatarImgFlag failed : invalid username");
                        }
                      }
                      else
                      {
                        while (true)
                        {
                          gq localgq = new gq();
                          localgq.bQL.bNK = 1;
                          localgq.bQL.user = localwl.eBo;
                          localgq.bQL.bPl = localwl.fTa;
                          localgq.bQL.bPm = localwl.fEx;
                          com.tencent.mm.sdk.b.a.ayH().f(localgq);
                          break;
                          if (!str9.endsWith("@t.qq.com"))
                          {
                            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.AvatarLogic", "setMBTAvatarImgFlag failed : invalid username");
                          }
                          else
                          {
                            x localx4 = new x();
                            localx4.setUsername(str9);
                            localx4.bU(3);
                            localx4.cL(3);
                            com.tencent.mm.m.af.wm().a(localx4);
                            continue;
                            if (!cj.hW(localwl.fDf).equals(cj.hW(locali4.getUsername())))
                            {
                              locali4.bH(localwl.fDf);
                              if (be.uz().su().a(locali4.getUsername(), locali4) == -1)
                                com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "processModTContact: update contact failed");
                            }
                          }
                        }
                        localqn = new qn().bJ(arrayOfByte);
                        if (localqn == null)
                          break label5420;
                        bool7 = true;
                        Assert.assertTrue(bool7);
                        if (cj.hW(localqn.eBo).length() <= 0)
                          break label5426;
                        bool8 = true;
                        Assert.assertTrue(bool8);
                        if (!com.tencent.mm.storage.i.tA(localqn.eBo))
                        {
                          com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.SyncDoCmd", "processModQContact: qcontact should ends with @t.qq.com");
                        }
                        else
                        {
                          locali2 = be.uz().su().tO(localqn.eBo);
                          if ((locali2 != null) && (locali2.rj() != 0))
                            break label3733;
                          locali3 = new com.tencent.mm.storage.i(localqn.eBo);
                          locali3.qM();
                          locali3.bt(localqn.fDf);
                          locali3.bH(localqn.fDf);
                          locali3.bS(4);
                          if (be.uz().su().C(locali3) != -1)
                            break label3653;
                          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "processModQContact: insert contact failed");
                        }
                      }
                    }
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }
    label3653: com.tencent.mm.m.c.dV(locali3.getUsername());
    while (true)
    {
      ei localei = new ei();
      localei.bPh.bNK = 1;
      localei.bPh.user = localqn.eBo;
      localei.bPh.bPl = localqn.fTa;
      localei.bPh.bPm = localqn.fEx;
      com.tencent.mm.sdk.b.a.ayH().f(localei);
      break;
      label3733: if (!cj.hW(localqn.fDf).equals(cj.hW(locali2.getUsername())))
      {
        locali2.bt(localqn.fDf);
        locali2.bH(localqn.fDf);
        if (be.uz().su().a(locali2.getUsername(), locali2) == -1)
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "processModQContact: update contact failed");
      }
    }
    nu localnu = new nu().bw(arrayOfByte);
    boolean bool4;
    label3828: boolean bool5;
    label3850: boolean bool6;
    label4066: op localop;
    boolean bool1;
    label4258: String str4;
    String str7;
    Object localObject;
    label4313: int i3;
    label4370: label4511: com.tencent.mm.as.a locala;
    int i1;
    label4633: StringBuilder localStringBuilder2;
    if (localnu != null)
    {
      bool4 = true;
      Assert.assertTrue(bool4);
      if (cj.hW(localnu.eBo).length() <= 0)
        break label5438;
      bool5 = true;
      Assert.assertTrue(bool5);
      com.tencent.mm.storage.i locali1 = new com.tencent.mm.storage.i();
      locali1.setUsername(localnu.eBo);
      locali1.setType(localnu.dGR);
      locali1.bL(localnu.cqq);
      locali1.bO(RegionCodeDecoder.w(localnu.cqx, localnu.Tu, localnu.Tv));
      locali1.bz(localnu.cqr);
      x localx3 = new x();
      localx3.cL(-1);
      localx3.setUsername(localnu.eBo);
      localx3.ep(localnu.fDh);
      localx3.eo(localnu.fDg);
      Object[] arrayOfObject7 = new Object[3];
      arrayOfObject7[0] = localx3.getUsername();
      arrayOfObject7[1] = localx3.vV();
      arrayOfObject7[2] = localx3.vW();
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "dkhurl bottle %s b[%s] s[%s]", arrayOfObject7);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "bottlecontact imgflag:" + localnu.fOT + " hd:" + localnu.fOU);
      if (localnu.fOU == 0)
        break label5444;
      bool6 = true;
      localx3.Q(bool6);
      if ((localnu.fOT == 3) || (localnu.fOT == 4))
      {
        locali1.bU(localnu.fOT);
        localx3.bU(localnu.fOT);
      }
      while (true)
      {
        com.tencent.mm.m.af.wm().a(localx3);
        be.uz().su().z(locali1);
        break;
        if (localnu.fOT == 2)
        {
          locali1.bU(3);
          localx3.bU(3);
          com.tencent.mm.m.af.vJ().i(localnu.eBo, false);
          com.tencent.mm.m.af.vJ().i(localnu.eBo, true);
          com.tencent.mm.m.af.wo().dY(localnu.eBo);
          be.uz().sT().a(new d(1001, localnu.eBo));
        }
        else
        {
          locali1.bU(3);
          localx3.bU(3);
        }
      }
      localop = new op().bB(arrayOfByte);
      if (localop == null)
        break label5450;
      bool1 = true;
      Assert.assertTrue(bool1);
      str4 = com.tencent.mm.model.v.th();
      int n = localop.fPC;
      if (n == 2)
      {
        String str5 = com.tencent.mm.storage.i.tE(str4);
        String str6 = (String)be.uz().sr().get(12553);
        str7 = str5;
        localObject = str6;
        boolean bool3;
        if (localObject != null)
        {
          boolean bool2 = ((String)localObject).equals(localop.fPF);
          bool3 = false;
          if (bool2);
        }
        else
        {
          com.tencent.mm.m.af.vJ().i(str7, true);
          bool3 = true;
          com.tencent.mm.storage.e locale1 = be.uz().sr();
          if (n != 2)
            break label5456;
          i3 = 12553;
          locale1.set(i3, localop.fPF);
        }
        Object[] arrayOfObject6 = new Object[5];
        arrayOfObject6[0] = Boolean.valueOf(bool3);
        arrayOfObject6[1] = Integer.valueOf(n);
        arrayOfObject6[2] = localop.fPF;
        arrayOfObject6[3] = localop.fDg;
        arrayOfObject6[4] = localop.fDh;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "ModUserImg beRemove:%b imgtype:%d md5:%s big:%s sm:%s", arrayOfObject6);
        x localx2 = new x();
        localx2.setUsername(str7);
        localx2.eo(localop.fDg);
        localx2.ep(localop.fDh);
        if (!cj.hX(localx2.vW()))
        {
          if (n != 1)
            break label4723;
          be.uz().sr().set(59, Boolean.valueOf(true));
        }
        localx2.Q(false);
        localx2.cL(56);
        if (!cj.hX(localop.fPF))
          localx2.Q(true);
        com.tencent.mm.m.af.wm().a(localx2);
        if (bool3)
          new s().a(str7, new q(this));
        locala = be.uz().sT();
        StringBuilder localStringBuilder1 = new StringBuilder().append(str7).append(";").append(bool3).append(";");
        if (localop.fDg == null)
          break label5464;
        i1 = localop.fDg.length();
        localStringBuilder2 = localStringBuilder1.append(i1).append(";");
        if (localop.fDh == null)
          break label5470;
      }
    }
    label5384: label5390: label5396: label5402: label5408: label5414: label5420: label5426: label5438: label5444: label5450: label5456: label5464: label5470: for (int i2 = localop.fDh.length(); ; i2 = -1)
    {
      while (true)
      {
        locala.a(new d(1004, i2));
        break;
        String str8 = (String)be.uz().sr().get(12297);
        str7 = str4;
        localObject = str8;
        break label4313;
        label4723: be.uz().sr().set(60, Boolean.valueOf(true));
        break label4511;
        yu localyu = new yu().cd(arrayOfByte);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "snsExtFlag " + localyu.fNv.cqz);
        String str1 = (String)be.uz().sr().get(2);
        if ((str1 == null) || (str1.length() <= 0))
          break;
        if (aq.apz() != null)
          aq.apz().a(str1, localyu.fNv);
        com.tencent.mm.p.a locala1 = com.tencent.mm.p.p.xH();
        if (locala1 == null)
          locala1 = new com.tencent.mm.p.a();
        locala1.field_username = str1;
        locala1.field_brandList = localyu.cqy;
        if (!ab.ye().b(locala1))
          ab.ye().a(locala1);
        int j = localyu.fYX;
        int k = localyu.fYY;
        int m = localyu.fYZ;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.SyncDoCmd", "roomSize :" + j + " rommquota: " + k + " invite: " + m);
        be.uz().sr().set(135175, Integer.valueOf(j));
        be.uz().sr().set(135176, Integer.valueOf(k));
        be.uz().sr().set(135177, Integer.valueOf(m));
        be.uz().sr().set(144385, Integer.valueOf(localyu.fZd));
        x localx1 = new x();
        localx1.cL(-1);
        localx1.setUsername(str1);
        localx1.eo(localyu.fDg);
        localx1.ep(localyu.fDh);
        localx1.Q(true);
        localx1.bU(3);
        Object[] arrayOfObject5 = new Object[3];
        arrayOfObject5[0] = localx1.getUsername();
        arrayOfObject5[1] = localx1.vV();
        arrayOfObject5[2] = localx1.vW();
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "dkavatar user:[%s] big:[%s] sm:[%s]", arrayOfObject5);
        com.tencent.mm.m.af.wm().a(localx1);
        String str2 = localyu.fPf;
        String str3 = localyu.fPg;
        be.uz().sr().set(274433, str3);
        be.uz().sr().set(274434, str2);
        if (localyu.fzB == null)
          break;
        be.uz().sr().set(286721, localyu.fzB.fBp);
        be.uz().sr().set(286722, localyu.fzB.fBq);
        be.uz().sr().set(286723, localyu.fzB.fBr);
        break;
        try
        {
          int i = com.tencent.mm.a.i.b(arrayOfByte, 0);
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = Integer.valueOf(i);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "local test synccmd, sleep %d", arrayOfObject4);
          if (i <= 0)
            break;
          Thread.sleep(i);
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      break;
      ov localov = new ov().bF(arrayOfByte);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(localov.fzu);
      arrayOfObject2[1] = Integer.valueOf(localov.fzo);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SyncDoCmd", "rollback, msgtype is %d, msgid is %d", arrayOfObject2);
      if (!w.cL(localov.fzp))
        break;
      new fq().bQk.bQl = localov.fzo;
      break;
      i4 = 0;
      break label878;
      bool13 = false;
      break label1696;
      bool11 = false;
      break label2405;
      bool12 = false;
      break label2417;
      bool9 = false;
      break label3125;
      bool10 = false;
      break label3147;
      bool7 = false;
      break label3504;
      bool8 = false;
      break label3526;
      bool4 = false;
      break label3828;
      bool5 = false;
      break label3850;
      bool6 = false;
      break label4066;
      bool1 = false;
      break label4258;
      i3 = 12297;
      break label4370;
      i1 = -1;
      break label4633;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.n
 * JD-Core Version:    0.6.2
 */