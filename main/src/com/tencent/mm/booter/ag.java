package com.tencent.mm.booter;

import com.tencent.mm.c.a.dy;
import com.tencent.mm.c.a.ei;
import com.tencent.mm.c.a.fl;
import com.tencent.mm.model.av;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ce;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.v;
import com.tencent.mm.modelstat.d;
import com.tencent.mm.modelstat.j;
import com.tencent.mm.modelstat.r;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.protocal.a.lo;
import com.tencent.mm.protocal.a.nj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.k;
import com.tencent.mm.storage.o;
import java.util.LinkedList;
import java.util.List;

final class ag
  implements Runnable
{
  ag(ad paramad)
  {
  }

  public final void run()
  {
    if (!be.se())
      return;
    if (com.tencent.mm.platformtools.au.c((Integer)be.uz().sr().get(15)) == 0);
    for (int i = 1; i != 0; i = 0)
    {
      aa.e("MicroMsg.NotifyReceiver", "not init finish , do not post sync task");
      return;
    }
    long l1 = com.tencent.mm.platformtools.au.FD();
    if ((l1 - NotifyReceiver.oP() > 0L) && (l1 - NotifyReceiver.oP() < 10000L))
    {
      Object[] arrayOfObject9 = new Object[1];
      arrayOfObject9[0] = Long.valueOf(l1 - NotifyReceiver.oP());
      aa.e("MicroMsg.NotifyReceiver", "sync task limit now - last : %d", arrayOfObject9);
      return;
    }
    NotifyReceiver.j(l1);
    aa.i("MicroMsg.NotifyReceiver", "begin post sync task");
    long l2 = com.tencent.mm.platformtools.au.FE();
    if (com.tencent.mm.model.ar.ub() != null)
      com.tencent.mm.model.ar.ub().ud();
    aa.d("MicroMsg.PostTaskCollectGoupCard", "collectGroupCard");
    LinkedList localLinkedList = new LinkedList();
    new LinkedList();
    List localList = be.uz().sA().aAn();
    if (localList != null)
    {
      for (int i9 = 0; i9 < localList.size(); i9++)
      {
        aa.d("MicroMsg.PostTaskCollectGoupCard", "groupCard " + (String)localList.get(i9));
        lo locallo = new lo();
        locallo.fMV = ((String)localList.get(i9));
        localLinkedList.add(locallo);
      }
      com.tencent.mm.plugin.chatroom.a.b localb1 = new com.tencent.mm.plugin.chatroom.a.b(localLinkedList);
      be.uA().d(localb1);
    }
    int j;
    int k;
    label803: boolean bool;
    if ((be.se()) && (!be.uG()) && ((0x10 & v.tq()) == 0))
    {
      j = 1;
      if ((j != 0) && (ah.oQ()))
      {
        e locale = be.uz().sr();
        int i1 = com.tencent.mm.platformtools.au.c((Integer)locale.get(67073));
        int i2 = com.tencent.mm.platformtools.au.c((Integer)locale.get(67074));
        int i3 = com.tencent.mm.platformtools.au.c((Integer)locale.get(67075));
        int i4 = com.tencent.mm.platformtools.au.c((Integer)locale.get(67076));
        ap localap = be.uz().sw();
        int i5 = localap.al("medianote", 1);
        int i6 = localap.al("medianote", 3);
        int i7 = localap.al("medianote", 34);
        int i8 = localap.al("medianote", 43);
        com.tencent.mm.storage.au localau = be.uz().st();
        if (i5 - i1 > 0)
        {
          nj localnj1 = new nj();
          localnj1.fOk = (i5 - i1);
          localnj1.fOl = 1;
          localau.a(new az(29, localnj1));
          locale.set(67073, Integer.valueOf(i5));
        }
        if (i6 - i2 > 0)
        {
          nj localnj2 = new nj();
          localnj2.fOk = (i6 - i2);
          localnj2.fOl = 3;
          localau.a(new az(29, localnj2));
          locale.set(67074, Integer.valueOf(i6));
        }
        if (i7 - i3 > 0)
        {
          nj localnj3 = new nj();
          localnj3.fOk = (i7 - i3);
          localnj3.fOl = 34;
          localau.a(new az(29, localnj3));
          locale.set(67075, Integer.valueOf(i7));
        }
        if (i8 - i4 > 0)
        {
          nj localnj4 = new nj();
          localnj4.fOk = (i8 - i4);
          localnj4.fOl = 43;
          localau.a(new az(29, localnj4));
          locale.set(67076, Integer.valueOf(i8));
        }
        be.uz().sr().set(66817, Long.valueOf(com.tencent.mm.platformtools.au.FC()));
      }
      long l3 = cj.a((Long)be.uz().sr().get(66821), 0L);
      long l4 = cj.FC();
      aa.d("MicroMsg.NetSceneNetStatReport", "check expired now:" + l4 + " second:" + l3 + " sub:" + (l4 - l3));
      if (l4 - l3 <= 3600L)
        break label1170;
      be.uz().sr().set(66821, Long.valueOf(l4));
      k = 1;
      if ((k != 0) && (be.uz().isSDCardAvailable()))
        be.uA().d(new d());
      com.tencent.mm.al.a.run();
      aj.run();
      ct.vB().vC();
      ai.run();
      if (com.tencent.mm.al.c.oQ())
        com.tencent.mm.al.c.avz();
      ak.run();
      com.tencent.mm.plugin.d.c.h.run();
      if (be.ul())
      {
        aa.i("MicroMsg.PostTaskLightweightJob", "is new register, try insert qmessage intro conversation");
        ei localei = new ei();
        localei.bPh.bNK = 2;
        com.tencent.mm.sdk.b.a.ayH().f(localei);
        be.um();
      }
      com.tencent.mm.ab.h.update();
      long l5 = System.currentTimeMillis();
      bool = ((Boolean)be.uz().sr().get(233475, Boolean.valueOf(false))).booleanValue();
      if (be.uz().su().aAA() > 0)
        break label1176;
      if (!bool)
      {
        be.uz().sx().tX("officialaccounts");
        be.uz().sr().set(233475, Boolean.valueOf(true));
      }
      label985: Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Long.valueOf(System.currentTimeMillis() - l5);
      aa.d("MicroMsg.PostTaskLightweightJob", "use time %d ms", arrayOfObject1);
      if ((be.se()) && (!be.uG()))
        break label1200;
      label1027: if (be.se())
        break label1369;
      aa.e("MicroMsg.PostTaskReportDataFlow", "Account is not ready");
      label1042: com.tencent.mm.modelsimple.ar.run();
      if (com.tencent.mm.platformtools.au.N(com.tencent.mm.platformtools.au.a((Long)be.uz().sr().get(282881))) <= 172800000L)
        break label2070;
    }
    label1170: label2070: for (int n = 1; ; n = 0)
    {
      if (n != 0)
      {
        be.uz().sr().set(282881, Long.valueOf(com.tencent.mm.platformtools.au.FD()));
        fl localfl = new fl();
        com.tencent.mm.sdk.b.a.ayH().f(localfl);
      }
      com.tencent.mm.sdk.b.a.ayH().f(new dy());
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Long.valueOf(com.tencent.mm.platformtools.au.O(l2));
      aa.e("MicroMsg.NotifyReceiver", "end post sync task, cost=%d", arrayOfObject4);
      return;
      j = 0;
      break;
      k = 0;
      break label803;
      label1176: if (!bool)
        break label985;
      be.uz().sr().set(233475, Boolean.valueOf(false));
      break label985;
      label1200: if (cj.hX(com.tencent.mm.al.b.avy()))
      {
        ce.dC("ver" + com.tencent.mm.protocal.a.fxr);
        break label1027;
      }
      if (1000L * cj.M(cj.a((Long)be.uz().sr().get(77833), 0L)) < 604800000L)
        break label1027;
      m localm2 = m.dZN;
      Object[] arrayOfObject8 = new Object[7];
      arrayOfObject8[0] = com.tencent.mm.al.b.avt();
      arrayOfObject8[1] = com.tencent.mm.al.b.avu();
      arrayOfObject8[2] = com.tencent.mm.al.b.avv();
      arrayOfObject8[3] = com.tencent.mm.al.b.avw();
      arrayOfObject8[4] = com.tencent.mm.al.b.avx();
      arrayOfObject8[5] = "";
      arrayOfObject8[6] = com.tencent.mm.al.b.avy();
      localm2.d(10719, arrayOfObject8);
      be.uz().sr().set(77833, Long.valueOf(cj.FC()));
      aa.d("MicroMsg.PostTaskHardwareInfo", "report PostTaskHardwareInfo done ");
      break label1027;
      label1369: long l6 = cj.a((Long)be.uz().sr().get(74));
      if ((10010 == at.cHJ) && (at.cHK > 0))
      {
        l6 = cj.FC() - at.cHK;
        Object[] arrayOfObject7 = new Object[2];
        arrayOfObject7[0] = Integer.valueOf(at.cHK);
        arrayOfObject7[1] = Long.valueOf(l6);
        aa.e("MicroMsg.PostTaskReportDataFlow", "GET DK_TEST_LAST_REPORT_DATAFLOW val:%d old:%d", arrayOfObject7);
        at.cHK = 0;
      }
      long l7 = cj.FC();
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Long.valueOf(l7);
      arrayOfObject2[1] = Long.valueOf(l6);
      arrayOfObject2[2] = Long.valueOf(l7 - l6);
      aa.e("MicroMsg.PostTaskReportDataFlow", " now:%d old:%d diff:%d", arrayOfObject2);
      if (1000L * (l7 - l6) < 86400000L)
        break label1042;
      be.uz().sr().set(74, Long.valueOf(l7));
      if (r.Dg() == null)
      {
        aa.e("MicroMsg.PostTaskReportDataFlow", "ERR: SubCoreStat.getNetStatStg() is null");
        break label1042;
      }
      long l8 = cj.FD() / 86400000L - 1L;
      com.tencent.mm.modelstat.f localf = r.Dg().el((int)l8);
      if ((localf == null) || (localf.CP() != (int)l8))
      {
        Object[] arrayOfObject3 = new Object[2];
        if (localf == null);
        for (int m = -1; ; m = localf.CP())
        {
          arrayOfObject3[0] = Integer.valueOf(m);
          arrayOfObject3[1] = Long.valueOf(l8);
          aa.b("MicroMsg.PostTaskReportDataFlow", "ERR: NetStatInfo:%d lastDate:%d", arrayOfObject3);
          break;
        }
      }
      if (r.De() == null)
      {
        aa.e("MicroMsg.PostTaskReportDataFlow", "ERR: SubCoreStat.getMobileInfoStg() is null");
        break label1042;
      }
      com.tencent.mm.modelstat.b localb = r.De().CM();
      if (localb == null)
      {
        aa.w("MicroMsg.PostTaskReportDataFlow", "SubCoreStat.getMobileInfoStg().checkInfo null , give default.");
        localb = new com.tencent.mm.modelstat.b();
      }
      Object[] arrayOfObject5 = new Object[14];
      arrayOfObject5[0] = Long.valueOf(l8);
      arrayOfObject5[1] = Integer.valueOf(localf.CP());
      arrayOfObject5[2] = Integer.valueOf(localf.CT());
      arrayOfObject5[3] = Integer.valueOf(localf.CX());
      arrayOfObject5[4] = Integer.valueOf(localf.CS());
      arrayOfObject5[5] = Integer.valueOf(localf.CW());
      arrayOfObject5[6] = Integer.valueOf(localf.CR());
      arrayOfObject5[7] = Integer.valueOf(localf.CV());
      arrayOfObject5[8] = Integer.valueOf(localf.CQ());
      arrayOfObject5[9] = Integer.valueOf(localf.CU());
      arrayOfObject5[10] = Integer.valueOf(localb.cyz);
      arrayOfObject5[11] = Integer.valueOf(localb.cyA);
      arrayOfObject5[12] = localb.ispName;
      arrayOfObject5[13] = localb.cyB;
      aa.d("MicroMsg.PostTaskReportDataFlow", "last:%d peroid:%d [%d,%d][%d,%d][%d,%d][%d,%d] ispCode:%d subType:%d ispname:%s extra:%s", arrayOfObject5);
      m localm1 = m.dZN;
      Object[] arrayOfObject6 = new Object[13];
      arrayOfObject6[0] = Long.valueOf(l8 * 86400000L / 1000L);
      arrayOfObject6[1] = Integer.valueOf(localf.CT());
      arrayOfObject6[2] = Integer.valueOf(localf.CX());
      arrayOfObject6[3] = Integer.valueOf(localf.CS());
      arrayOfObject6[4] = Integer.valueOf(localf.CW());
      arrayOfObject6[5] = Integer.valueOf(localf.CR());
      arrayOfObject6[6] = Integer.valueOf(localf.CV());
      arrayOfObject6[7] = Integer.valueOf(localf.CQ());
      arrayOfObject6[8] = Integer.valueOf(localf.CU());
      arrayOfObject6[9] = Integer.valueOf(localb.cyz);
      arrayOfObject6[10] = Integer.valueOf(localb.cyA);
      arrayOfObject6[11] = localb.ispName;
      arrayOfObject6[12] = localb.cyB;
      localm1.d(10900, arrayOfObject6);
      break label1042;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.ag
 * JD-Core Version:    0.6.2
 */