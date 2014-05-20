package com.tencent.mm.modelfriend;

import com.tencent.mm.a.j;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.platformtools.h;
import com.tencent.mm.protocal.a.kc;
import com.tencent.mm.protocal.a.kd;
import com.tencent.mm.protocal.a.qo;
import com.tencent.mm.protocal.a.qp;
import com.tencent.mm.protocal.a.qq;
import com.tencent.mm.protocal.a.qr;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class am extends com.tencent.mm.n.x
  implements ab
{
  private m cjh = null;
  private final a cke;

  public am(int paramInt1, int paramInt2)
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new kc());
    localb.b(new kd());
    localb.es("/cgi-bin/micromsg-bin/getqqgroup");
    localb.cN(143);
    localb.cO(38);
    localb.cP(1000000038);
    this.cke = localb.wx();
    kc localkc = (kc)this.cke.wr();
    localkc.fGs = paramInt1;
    localkc.fLX = paramInt2;
  }

  private static void a(qr paramqr)
  {
    Map localMap = ax.Ao().getAll();
    int i = 0;
    at localat2;
    if (i < paramqr.fAC)
    {
      qq localqq = (qq)paramqr.fTh.get(i);
      aa.d("MicroMsg.NetSceneGetQQGroup", "id:" + localqq.fLX + " name:" + localqq.fIF + " mem:" + localqq.fGh + " wei:" + localqq.fTg + " md5:" + localqq.fFn);
      if (localqq.fLX < 0)
      {
        localat2 = null;
        label118: if (localat2 != null)
          break label212;
        aa.e("MicroMsg.NetSceneGetQQGroup", "Error Resp Group Info index:" + i);
      }
      label212: 
      while (localat2.zY() == 0)
      {
        i++;
        break;
        localat2 = new at();
        localat2.dk(localqq.fLX);
        localat2.fF(localqq.fIF);
        localat2.dl(localqq.fGh);
        localat2.dm(localqq.fTg);
        localat2.fE(localqq.fFn);
        break label118;
      }
      if (localMap == null)
        break label612;
    }
    label612: for (at localat3 = (at)localMap.get(Integer.valueOf(localat2.zX())); ; localat3 = null)
    {
      if (localat3 == null)
      {
        localat2.dn((int)cj.FC());
        localat2.jdMethod_do((int)cj.FC());
        localat2.dp(1);
        boolean bool4 = ax.Ao().a(localat2);
        aa.d("MicroMsg.NetSceneGetQQGroup", "Insert name:" + localat2.Ac() + " ret:" + bool4);
        break;
      }
      localat3.dp(-1);
      aa.d("MicroMsg.NetSceneGetQQGroup", localat2.Ab() + " " + localat3.Ab() + " " + localat2.zX());
      if (localat3.Ab().equals(localat2.Ab()))
        break;
      localat2.jdMethod_do((int)cj.FC());
      localat2.dp(1);
      localat2.cL(-1);
      boolean bool3 = ax.Ao().b(localat2);
      aa.d("MicroMsg.NetSceneGetQQGroup", "Update name:" + localat2.Ac() + " ret:" + bool3);
      break;
      if (localMap != null)
      {
        Iterator localIterator = localMap.keySet().iterator();
        while (localIterator.hasNext())
        {
          at localat1 = (at)localMap.get(localIterator.next());
          if (localat1.Aa() == 0)
          {
            boolean bool1 = ax.Ao().dr(localat1.zX());
            aa.d("MicroMsg.NetSceneGetQQGroup", "delete name:" + localat1.Ac() + " ret:" + bool1);
            boolean bool2 = ax.Aq().du(localat1.zX());
            aa.d("MicroMsg.NetSceneGetQQGroup", "delete QQList name:" + localat1.Ac() + " ret:" + bool2);
          }
        }
      }
      return;
    }
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    kc localkc = (kc)this.cke.wr();
    if (localkc.fGs == 1)
    {
      at localat = ax.Ao().dq(localkc.fLX);
      if ((localat == null) || (localat.Aa() == 0))
      {
        aa.e("MicroMsg.NetSceneGetQQGroup", "Err group not exist or group no need update.");
        return -1;
      }
    }
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      aa.e("MicroMsg.NetSceneGetQQGroup", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    aa.d("MicroMsg.NetSceneGetQQGroup", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
    kc localkc = (kc)this.cke.wr();
    kd localkd = (kd)this.cke.ws();
    if (localkc.fGs == 0)
      a(localkd.fLY);
    while (true)
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
      boolean bool = ax.Aq().du(localkc.fLX);
      aa.d("MicroMsg.NetSceneGetQQGroup", "delete QQList id:" + localkc.fLX + " ret:" + bool);
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = new ArrayList();
      int i = 0;
      while (i < localkd.fLZ.fAC)
      {
        qo localqo = (qo)localkd.fLZ.fTf.get(i);
        int j = localkc.fLX;
        aa.v("MicroMsg.NetSceneGetQQGroup", "friend");
        av localav = new av();
        localav.B(new j(localqo.fTb).longValue());
        c.c(localav.Af(), 3);
        localav.dt(j);
        localav.ds(localqo.fTd);
        if (localqo.fTd != 0)
        {
          if ((localqo.eBo == null) || (localqo.eBo.equals("")))
          {
            localav = null;
            localArrayList1.add(localav);
            x localx = new x();
            localx.bL(localqo.cqq);
            localx.bN(localqo.cqs);
            localx.bA(localqo.Tu);
            localx.bB(localqo.Tv);
            localx.bz(localqo.cqr);
            localx.setUsername(localqo.eBo);
            localArrayList2.add(localx);
            com.tencent.mm.m.x localx1 = new com.tencent.mm.m.x();
            localx1.bU(3);
            localx1.Q(true);
            localx1.setUsername(localqo.eBo);
            localx1.eo(localqo.fDg);
            localx1.ep(localqo.fDh);
            localArrayList3.add(localx1);
            i++;
          }
          else
          {
            i locali = be.uz().su().tO(localqo.eBo);
            if ((locali != null) && (locali.getUsername().equals(localqo.eBo)) && (locali.rb()))
              localav.ds(2);
          }
        }
        else
          while (true)
          {
            localav.setUsername(localqo.eBo);
            localav.bt(localqo.fDe);
            localav.fJ(localqo.fTe);
            localav.fK(h.hJ(localqo.fTe));
            localav.fL(h.hI(localqo.fTe));
            localav.bv(h.hJ(localqo.fDe));
            localav.bw(h.hI(localqo.fDe));
            localav.fG(localqo.fTc);
            localav.fH(h.hJ(localqo.fTc));
            localav.fI(h.hI(localqo.fTc));
            aa.v("MicroMsg.NetSceneGetQQGroup", "QQ Friend nickname: " + localav.Ah() + "  remark: " + localav.Ai());
            break;
            localav.ds(1);
          }
      }
      aw localaw = ax.Aq();
      localaw.s(localArrayList1);
      ax.An().i(localArrayList2);
      af.wm().i(localArrayList3);
      at localat = new at();
      localat.dk(localkc.fLX);
      localat.dp(0);
      localat.jdMethod_do((int)cj.FC());
      localat.cL(48);
      ax.Ao().b(localat);
    }
  }

  public final int getType()
  {
    return 143;
  }

  public final int zO()
  {
    return ((kc)this.cke.wr()).fGs;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.am
 * JD-Core Version:    0.6.2
 */