package com.tencent.mm.z;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.n;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.pluginsdk.aq;
import com.tencent.mm.pluginsdk.v;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.protocal.a.cx;
import com.tencent.mm.protocal.a.cy;
import com.tencent.mm.protocal.a.oy;
import com.tencent.mm.protocal.a.oz;
import com.tencent.mm.protocal.a.pd;
import com.tencent.mm.protocal.a.pe;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.ao;
import com.tencent.mm.protocal.ap;
import com.tencent.mm.protocal.ar;
import com.tencent.mm.protocal.as;
import com.tencent.mm.protocal.p;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bz;
import com.tencent.mm.storage.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class i extends x
  implements ab
{
  protected static int cuT = 7;
  private static boolean cuU = false;
  private static List cuX = new ArrayList();
  private int bLI = 0;
  private int bLJ = 0;
  private String bOM = "";
  private m cjh;
  private ay ckr;
  private a cuC = new a();
  private long cuG = -1L;
  private final r cuO;
  private final b cuP;
  private final int cuQ;
  private boolean cuR = false;
  private boolean cuS = false;
  private boolean cuV = false;
  private int cuW = 0;
  private boolean cuY = false;
  private com.tencent.mm.compatible.g.k cuZ;
  private StringBuilder cva = new StringBuilder();
  private boolean cvb = false;
  private boolean cvc = false;
  private boolean cvd = false;

  public i(int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(hashCode());
    arrayOfObject[1] = cj.azV();
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dksord NetSceneSync hash:%d stack:%s", arrayOfObject);
    this.cuZ = new com.tencent.mm.compatible.g.k();
    this.cuQ = paramInt;
    this.cuO = new r(this);
    this.cuP = new b(this);
    if (paramInt == 7)
      cuU = true;
    if ((be.uz() != null) && (be.se()) && (be.uz().sr() != null) && (!be.uG()))
    {
      long l = cj.a((Long)be.uz().sr().get(8196), 0L);
      if (l != 0L)
      {
        be.uz().sr().set(8196, Long.valueOf(0L));
        int i = (int)(l | cuT);
        cuT = i;
        cuT = i & 0x5F;
      }
    }
    if (paramInt == 9)
    {
      cuT = 0x8 | cuT;
      cuU = true;
    }
    if (paramInt == 10)
    {
      cuT = 0x10 | cuT;
      cuU = true;
    }
    if (paramInt == 11)
    {
      cuT = 0x40 | cuT;
      cuU = true;
    }
    this.cva.append("stack:" + cj.azV() + " scene:" + this.cuQ + " time:" + cj.FC());
  }

  public i(int paramInt, n paramn)
  {
    this(paramInt);
    if (paramn != null)
    {
      this.cuC.a(paramn, this);
      this.cuP.a(this.cuC);
    }
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(hashCode());
    arrayOfObject[1] = paramn;
    arrayOfObject[2] = cj.azV();
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dkinit hash:%d progress:%s stack:%s", arrayOfObject);
  }

  public i(as paramas, int paramInt, long paramLong)
  {
    this(14);
    this.cuW = paramInt;
    this.cuG = paramLong;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "dkpush do scene resp SCENE_SYNC_WAIT");
    this.ckr = new ay(be.ut().getLooper(), new j(this, paramas), false);
  }

  private static void Bs()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "sync or init end: reset selector : now = " + cuT + " default = 7");
    cuT = 7;
  }

  protected static void Bt()
  {
  }

  protected static void Bu()
  {
    com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneSync", "resp canceled, synckey not set");
    be.se();
  }

  protected static void Bv()
  {
  }

  private int a(com.tencent.mm.network.r paramr, m paramm, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, long paramLong)
  {
    this.cjh = paramm;
    boolean bool1;
    Object[] arrayOfObject1;
    if ((cj.hW((String)be.uz().sr().get(8195)).length() <= 0) || (cj.c((Integer)be.uz().sr().get(15)) == 0))
    {
      bool1 = true;
      this.cva.append(" lastd:" + this.clV + " dotime:" + cj.FC() + " net:" + ba.aK(al.getContext()));
      arrayOfObject1 = new Object[5];
      arrayOfObject1[0] = Integer.valueOf(hashCode());
      arrayOfObject1[1] = Long.valueOf(paramLong);
      arrayOfObject1[2] = Integer.valueOf(this.cuQ);
      if (this.ckr == null)
        break label215;
    }
    label215: for (boolean bool2 = true; ; bool2 = false)
    {
      arrayOfObject1[3] = Boolean.valueOf(bool2);
      arrayOfObject1[4] = Boolean.valueOf(bool1);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "doScene[%d] selector:%d scene:%d pusher:%b needInit:%b", arrayOfObject1);
      if (this.ckr == null)
        break label221;
      c(paramr);
      this.ckr.bO(0L);
      this.ckr = null;
      return -1;
      bool1 = false;
      break;
    }
    label221: Object localObject;
    if (bool1)
    {
      this.cvd = true;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(hashCode());
      arrayOfObject2[1] = Long.valueOf(Thread.currentThread().getId());
      arrayOfObject2[2] = Long.valueOf(this.cuZ.qh());
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dksord dkInit [%d] doScene Begin threadID:%d t:%d ", arrayOfObject2);
      if (!this.cuY)
      {
        this.cuY = true;
        if (aq.apz() != null)
          aq.apz().afS();
      }
      k localk = new k();
      a locala = this.cuC;
      locala.cus = (1 + locala.cus);
      if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length <= 0))
        paramArrayOfByte1 = cj.ib(cj.hW((String)be.uz().sr().get(8197)));
      if ((paramArrayOfByte2 == null) || (paramArrayOfByte2.length <= 0))
        paramArrayOfByte2 = cj.ib(cj.hW((String)be.uz().sr().get(8198)));
      if ((cj.c((Integer)be.uz().sr().get(16)) != 0) && ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length <= 0)))
        localk.wJ().cR(7);
      while (true)
      {
        oy localoy = ((ao)localk.wJ()).fyq;
        localoy.fRd = com.tencent.mm.platformtools.an.y(paramArrayOfByte1);
        localoy.fRe = com.tencent.mm.platformtools.an.y(paramArrayOfByte2);
        localoy.eBo = ((String)be.uz().sr().get(2));
        String str = z.azj();
        localoy.fBF = str;
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSync", "dksord do init, initkey=" + cj.cn(paramArrayOfByte1) + ", username=" + localoy.eBo + ", language=" + str);
        localObject = localk;
        cuU = false;
        return a(paramr, (aj)localObject, this);
        if (cj.hW((String)be.uz().sr().get(8195)).length() <= 0)
          localk.wJ().cR(3);
        else
          localk.wJ().cR(4);
      }
    }
    boolean bool3;
    label639: l locall;
    pd localpd;
    int i;
    int j;
    if (this.cuQ == 8)
    {
      bool3 = true;
      locall = new l(bool3);
      localpd = ((ar)locall.wJ()).fys;
      localpd.fIw = ((int)paramLong);
      if ((paramArrayOfByte3 == null) || (paramArrayOfByte3.length <= 0))
        paramArrayOfByte3 = cj.ib(cj.hW((String)be.uz().sr().get(8195, new byte[0])));
      localpd.fIx = com.tencent.mm.platformtools.an.y(paramArrayOfByte3);
      i = this.cuQ;
      if (!this.cvc)
        break label782;
      j = 6;
    }
    while (true)
    {
      localpd.fyJ = j;
      localpd.fRx = t(be.uz().st().aCY());
      localpd.fQw = com.tencent.mm.protocal.a.fxk;
      localObject = locall;
      break;
      bool3 = false;
      break label639;
      label782: if (7 == i)
        j = 1;
      else if (3 == i)
        j = 2;
      else if (1 == i)
        j = 4;
      else if (13 == i)
        j = 5;
      else if (12 == i)
        j = 3;
      else if (14 == i)
        j = 8;
      else
        j = 7;
    }
  }

  private static cy t(List paramList)
  {
    cy localcy = new cy();
    Iterator localIterator = paramList.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      bz localbz = (bz)localIterator.next();
      byte[] arrayOfByte = localbz.getBytes();
      if (arrayOfByte == null)
        break label113;
      cx localcx = new cx();
      localcx.fDZ = localbz.getCmdId();
      localcx.fEa = new rv().bM(arrayOfByte);
      localcy.fAD.add(localcx);
    }
    label113: for (int j = i + 1; ; j = i)
    {
      i = j;
      break;
      localcy.fAC = i;
      return localcy;
    }
  }

  public final boolean Bq()
  {
    return this.cuR;
  }

  public final boolean Br()
  {
    return this.cvd;
  }

  protected final void Bw()
  {
    com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneSync", "resp canceled, initkey not set");
    if ((be.se()) && (aq.apz() != null))
      aq.apz().afT();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(hashCode());
    arrayOfObject[1] = Long.valueOf(Thread.currentThread().getId());
    arrayOfObject[2] = Long.valueOf(this.cuZ.qh());
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dkInit [%d] onRespHandled threadID:%d t:%d", arrayOfObject);
  }

  public final int a(com.tencent.mm.network.r paramr, m paramm)
  {
    return a(paramr, paramm, com.tencent.mm.protocal.a.fxx, com.tencent.mm.protocal.a.fxy, com.tencent.mm.protocal.a.fxw, cuT);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if (paramaj == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "rr null, skip resp");
      return;
    }
    this.cva.append(" endtime:" + cj.FC());
    Object[] arrayOfObject1 = new Object[7];
    arrayOfObject1[0] = Integer.valueOf(hashCode());
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    arrayOfObject1[2] = Integer.valueOf(paramInt3);
    arrayOfObject1[3] = paramString;
    arrayOfObject1[4] = Boolean.valueOf(this.cvb);
    arrayOfObject1[5] = Long.valueOf(this.cuZ.qh());
    arrayOfObject1[6] = this.cva;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "onGYNetEnd: %d [%d,%d,%s] hash isnotifydata:%b time:%d [%s]", arrayOfObject1);
    this.cuV = true;
    boolean bool;
    if (paramaj.getType() == 38)
    {
      au localau = be.uz().st();
      if ((!this.cvb) && (paramInt2 == 0) && (paramInt3 == 0))
      {
        bool = true;
        label168: localau.cT(bool);
        if ((paramInt2 != 4) || (paramInt3 != -2006))
          break label993;
        paramInt2 = 0;
        paramInt3 = 0;
      }
    }
    label403: label539: label547: label555: label993: for (int i = 1; ; i = 0)
    {
      if ((paramInt2 != 0) || (paramInt3 != 0))
      {
        if (this.cuO.cvs != null)
        {
          com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSync", "oreh sync mIRH.processingResp is not null, and simulate not continue");
          this.bLI = paramInt2;
          this.bLJ = paramInt3;
          this.bOM = paramString;
          ((as)paramaj.wv()).fyt.fIz = 0;
          return;
          bool = false;
          break label168;
        }
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      as localas = (as)paramaj.wv();
      byte[] arrayOfByte1;
      int j;
      int k;
      byte[] arrayOfByte2;
      byte[] arrayOfByte3;
      byte[] arrayOfByte4;
      if (i == 0)
      {
        arrayOfByte1 = com.tencent.mm.platformtools.an.a(((ar)paramaj.wJ()).fys.fIx);
        Object[] arrayOfObject3 = new Object[2];
        if (arrayOfByte1 != null)
          break label539;
        j = -1;
        arrayOfObject3[0] = Integer.valueOf(j);
        arrayOfObject3[1] = cj.cn(arrayOfByte1);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dkpush req Key : %d[%s]", arrayOfObject3);
        if (cj.A(arrayOfByte1))
        {
          arrayOfByte1 = cj.ib(cj.hW((String)be.uz().sr().get(8195, new byte[0])));
          Object[] arrayOfObject4 = new Object[2];
          if (arrayOfByte1 != null)
            break label547;
          k = -1;
          arrayOfObject4[0] = Integer.valueOf(k);
          arrayOfObject4[1] = cj.cn(arrayOfByte1);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dkpush userinfo key : %d[%s]", arrayOfObject4);
        }
        arrayOfByte2 = arrayOfByte1;
        arrayOfByte3 = com.tencent.mm.platformtools.an.a(localas.fyt.fIx);
        if ((arrayOfByte2 != null) && (arrayOfByte2.length > 0))
          break label555;
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "empty old key, use new key");
        arrayOfByte4 = arrayOfByte3;
      }
      while (true)
      {
        if ((arrayOfByte4 == null) || (arrayOfByte4.length <= 0))
        {
          com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneSync", "merge key failed, use server side instead");
          arrayOfByte4 = arrayOfByte3;
        }
        localas.fyt.fIx = com.tencent.mm.platformtools.an.y(arrayOfByte4);
        be.uz().A(localas.fyt.fzr, localas.fyt.fRy);
        this.cuO.c(localas);
        return;
        j = arrayOfByte1.length;
        break;
        k = arrayOfByte1.length;
        break label403;
        if ((arrayOfByte3 == null) || (arrayOfByte3.length <= 0))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "newKey is null");
          arrayOfByte4 = null;
        }
        else
        {
          PByteArray localPByteArray = new PByteArray();
          if (!MMProtocalJni.mergeSyncKey(arrayOfByte2, arrayOfByte3, localPByteArray))
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "merge key failed");
            arrayOfByte4 = null;
          }
          else
          {
            arrayOfByte4 = localPByteArray.value;
          }
        }
      }
      if ((paramInt2 != 0) || (paramInt3 != 0))
      {
        if (this.cuP.cuy != null)
        {
          com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSync", "oreh init mIRH.processingResp is not null, and simulate not continue");
          this.bLI = paramInt2;
          this.bLJ = paramInt3;
          this.bOM = paramString;
          ((ap)paramaj.wv()).fyr.fIz = 0;
          return;
        }
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
      ap localap = (ap)paramaj.wv();
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSync", "resp initkey=" + cj.cn(com.tencent.mm.platformtools.an.a(localap.fyr.fRd)) + ", maxInitKey=" + cj.cn(com.tencent.mm.platformtools.an.a(localap.fyr.fRe)));
      a locala1 = this.cuC;
      locala1.cuu += localap.fyr.fRg;
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = Integer.valueOf(localap.fyr.fRg);
      arrayOfObject2[1] = Integer.valueOf(this.cuC.cuu);
      arrayOfObject2[2] = Integer.valueOf(localap.hashCode());
      arrayOfObject2[3] = cj.azV();
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dkinit resp count:%d sum:%d resp:%d stack:%s", arrayOfObject2);
      if (!this.cuP.b(localap))
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.NetSceneSync", "init done");
        this.cuS = true;
        this.cuC.cut = true;
        a locala2 = this.cuC;
        locala2.cuu -= this.cuC.cur;
        this.cuC.cur = 0;
        return;
      }
      this.cvc = true;
      if (a(wM(), this.cjh, com.tencent.mm.platformtools.an.a(localap.fyr.fRd), com.tencent.mm.platformtools.an.a(localap.fyr.fRe), com.tencent.mm.protocal.a.fxw, cuT) != -1)
        break;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "parally processing init failed, mark resp as finished");
      localap.fyr.fIz = 0;
      return;
    }
  }

  protected final void a(as paramas)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "onRespHandled sync");
    be.uz().sr().set(8195, cj.cp(com.tencent.mm.platformtools.an.a(paramas.fyt.fIx)));
    be.uz().sr().set(8196, Long.valueOf(paramas.fyt.fIz));
    be.uz().bZ(be.uz().sr().zz());
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(cuU);
    arrayOfObject[1] = Integer.valueOf(this.cuW);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dkpush notifyPending:%s pushSyncFlag:%d", arrayOfObject);
    if (this.cuO.b(paramas))
    {
      this.cvc = true;
      a(wM(), this.cjh);
      return;
    }
    if (cuU)
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSync", "new notify pending, sync now");
      this.cvc = true;
      a(wM(), this.cjh);
      return;
    }
    if ((0x1 & this.cuW) > 0)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "dkpush TODO NotifyData ack");
      be.uA().d(new d(this.cuG));
    }
    Bs();
    this.cjh.a(this.bLI, this.bLJ, this.bOM, this);
  }

  protected final boolean a(x paramx)
  {
    if (!(paramx instanceof i));
    i locali;
    do
    {
      do
      {
        return false;
        locali = (i)paramx;
      }
      while ((locali.cuV) || (!cuU));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(locali.clV);
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.NetSceneSync", "old not busy and notified, maybe cancel old scene, last dispatch=%d", arrayOfObject);
      this.cva.append(" cp:" + cj.O(locali.clV));
    }
    while (cj.O(locali.clV) <= 240000L);
    return true;
  }

  protected final void c(ap paramap)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "onRespHandled init");
    be.uz().sr().set(8197, cj.cp(com.tencent.mm.platformtools.an.a(paramap.fyr.fRd)));
    be.uz().sr().set(8198, cj.cp(com.tencent.mm.platformtools.an.a(paramap.fyr.fRe)));
    be.uz().sr().set(16, Integer.valueOf(0));
    be.uz().bZ(be.uz().sr().zz());
    this.cuC.Bm();
    if (this.cuP.a(paramap))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "waiting for next init resp");
      return;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneSync", "all resp handled");
    if (this.cuS)
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneSync", com.tencent.mm.compatible.g.j.qg() + "set sync_selector equal last init selector :" + paramap.fyr.fRf);
      if ((com.tencent.mm.platformtools.an.a(paramap.fyr.fRe) == null) && (com.tencent.mm.platformtools.an.a(paramap.fyr.fRe).length <= 0))
        break label378;
    }
    label378: for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      be.uz().sr().set(8196, Long.valueOf(paramap.fyr.fRf));
      be.uz().sr().set(8195, cj.cp(com.tencent.mm.platformtools.an.a(paramap.fyr.fRe)));
      be.uz().sr().set(8197, "");
      be.uz().sr().set(8198, "");
      be.uz().sr().set(15, Integer.valueOf(1));
      this.cuR = true;
      Bs();
      if (aq.apz() != null)
        aq.apz().afT();
      this.cjh.a(this.bLI, this.bLJ, this.bOM, this);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Long.valueOf(Thread.currentThread().getId());
      arrayOfObject[1] = Long.valueOf(this.cuZ.qh());
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneSync", "dkInit onRespHandled threadID:%d t:%d", arrayOfObject);
      return;
    }
  }

  protected final void cancel()
  {
    super.cancel();
    this.cuO.cancel();
    this.cuP.cancel();
  }

  public final String getInfo()
  {
    return this.cva.toString();
  }

  public final int getType()
  {
    return 38;
  }

  public final boolean wL()
  {
    return super.wL();
  }

  protected final int we()
  {
    return 500;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.i
 * JD-Core Version:    0.6.2
 */