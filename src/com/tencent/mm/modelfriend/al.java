package com.tencent.mm.modelfriend;

import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.m;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.av;
import com.tencent.mm.protocal.a.dl;
import com.tencent.mm.protocal.a.fo;
import com.tencent.mm.protocal.a.je;
import com.tencent.mm.protocal.a.jf;
import com.tencent.mm.protocal.a.ne;
import com.tencent.mm.protocal.a.nf;
import com.tencent.mm.protocal.a.nt;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.a.vp;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.k;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class al extends com.tencent.mm.n.x
  implements ab
{
  private m cjh = null;
  private a cke;
  private List cqK;
  private List crm;

  public al()
  {
    zM();
    je localje = (je)this.cke.wr();
    localje.fFn = "";
    localje.fLw = null;
    localje.fLv = 0;
    localje.fLu = null;
    localje.fLt = 0;
    localje.fGs = 0;
  }

  public al(List paramList1, List paramList2)
  {
    zM();
    if (((paramList1 == null) || (paramList1.size() == 0)) && ((paramList2 == null) || (paramList2.size() == 0)))
      return;
    this.cqK = paramList1;
    this.crm = paramList2;
    je localje = (je)this.cke.wr();
    localje.fFn = "";
    localje.fGs = 2;
  }

  private static void a(h paramh, nf paramnf)
  {
    paramh.fg(paramnf.cqp);
    paramh.bL(paramnf.cqq);
    paramh.bA(paramnf.Tu);
    paramh.bB(paramnf.Tv);
    paramh.bz(paramnf.cqr);
    paramh.bN(paramnf.cqs);
    paramh.bx(paramnf.cqt);
    paramh.cY(paramnf.cqu);
    paramh.fm(paramnf.cqw);
    paramh.cZ(paramnf.cqv);
    paramh.fn(paramnf.cqx);
    paramh.fh(paramnf.cqy);
    vp localvp = paramnf.fNv;
    if (localvp != null)
    {
      paramh.cW(localvp.cqz);
      paramh.fi(localvp.cqA);
      paramh.y(localvp.cqB);
    }
    dl localdl = paramnf.fNw;
    if (localdl != null)
    {
      paramh.cX(localdl.cqC);
      paramh.fj(localdl.cqD);
      paramh.fk(localdl.cqE);
      paramh.fl(localdl.cqF);
    }
  }

  private void zM()
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new je());
    localb.b(new jf());
    localb.es("/cgi-bin/micromsg-bin/getmfriend");
    localb.cN(142);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    je localje = (je)this.cke.wr();
    if (localje.fGs == 2)
    {
      if (((this.cqK == null) || (this.cqK.size() == 0)) && ((this.crm == null) || (this.crm.size() == 0)))
      {
        aa.e("MicroMsg.NetSceneGetMFriend", "doScene failed, mobile list and email list empty.");
        return -1;
      }
      if ((this.cqK != null) && (this.cqK.size() > 0))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.cqK.size());
        aa.e("MicroMsg.NetSceneGetMFriend", "doScene get mobile list size:%d", arrayOfObject2);
        LinkedList localLinkedList2 = new LinkedList();
        Iterator localIterator2 = this.cqK.iterator();
        while (localIterator2.hasNext())
        {
          String str2 = (String)localIterator2.next();
          nt localnt = new nt();
          localnt.fNT = str2;
          localLinkedList2.add(localnt);
        }
        localje.fLu = localLinkedList2;
        localje.fLt = localLinkedList2.size();
      }
      if ((this.crm != null) && (this.crm.size() > 0))
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.crm.size());
        aa.e("MicroMsg.NetSceneGetMFriend", "doScene get email list size:%d", arrayOfObject1);
        LinkedList localLinkedList1 = new LinkedList();
        Iterator localIterator1 = this.crm.iterator();
        while (localIterator1.hasNext())
        {
          String str1 = (String)localIterator1.next();
          ne localne = new ne();
          localne.fNT = str1;
          localLinkedList1.add(localne);
        }
        localje.fLw = localLinkedList1;
        localje.fLv = localLinkedList1.size();
      }
    }
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    jf localjf = (jf)this.cke.ws();
    je localje = (je)this.cke.wr();
    if ((paramInt2 == 4) && (paramInt3 == -68))
    {
      this.cjh.a(paramInt2, paramInt3, localjf.ayf().fAZ.getString(), this);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      aa.e("MicroMsg.NetSceneGetMFriend", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    aa.d("MicroMsg.NetSceneGetMFriend", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
    String str = cj.hW((String)be.uz().sr().get(65828));
    if ((localje.fGs == 1) && (!cj.hX(localjf.fFn)) && (!localjf.fFn.equals(str)))
    {
      be.uz().sr().set(65828, localjf.fFn);
      ax.Am().zh();
    }
    if (localjf.fJl == null)
    {
      aa.e("MicroMsg.NetSceneGetMFriend", "onGYNetEnd  friendlist null");
      return;
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(localjf.fJl.size());
    aa.d("MicroMsg.NetSceneGetMFriend", "onGYNetEnd friend list size:%d", arrayOfObject);
    long l = be.uz().sp().ca(Thread.currentThread().getId());
    int i = 0;
    if (i < localjf.fJl.size())
    {
      nf localnf = (nf)localjf.fJl.get(i);
      if (localnf == null)
        aa.e("MicroMsg.NetSceneGetMFriend", "Err getFriendList null");
      h localh;
      n localn;
      while (true)
      {
        i++;
        break;
        localh = ax.Al().fs(localnf.cqp);
        if ((localh == null) && (localje.fGs != 1))
        {
          aa.e("MicroMsg.NetSceneGetMFriend", "Err MD5 not found is AddrUploadStg, nickName: " + localnf.fNU + " md5: " + localnf.cqp);
        }
        else
        {
          localn = new n();
          if (localje.fGs != 1)
            break label866;
          if (localnf.fNV != null)
            break label445;
          aa.e("MicroMsg.NetSceneGetMFriend", "ERR: facebook friend return null info");
        }
      }
      label445: localn.A(localnf.fNV.fGq);
      localn.da(localnf.fNV.fGr);
      c.dR(localnf.fNV.fGq);
      localn.fu(localnf.fNV.Th);
      localn.bx(localnf.cqt);
      localn.bB(localnf.Tv);
      localn.bA(localnf.Tu);
      localn.bz(localnf.cqr);
      localn.bN(localnf.cqs);
      localn.bL(localnf.cqq);
      localn.fc(localnf.fNU);
      localn.fd(com.tencent.mm.platformtools.h.hJ(localnf.fNV.Th));
      localn.fe(com.tencent.mm.platformtools.h.hI(localnf.fNV.Th));
      localn.setUsername(localnf.fBM);
      label620: x localx = new x();
      localx.setUsername(localnf.fBM);
      localx.bA(localnf.Tu);
      localx.bB(localnf.Tv);
      localx.bz(localnf.cqr);
      localx.bL(localnf.cqq);
      localx.bN(localnf.cqs);
      boolean bool1 = cj.hX(localnf.fBM);
      com.tencent.mm.storage.i locali = null;
      if (!bool1)
      {
        locali = be.uz().su().tO(localnf.fBM);
        if ((locali == null) || (!localnf.fBM.equals(locali.getUsername())))
          break label888;
        if ((!cj.hX(localnf.cqt)) && (!localnf.cqt.equals(locali.rp())))
        {
          locali.bx(localnf.cqt);
          be.uz().su().a(locali.getUsername(), locali);
        }
      }
      label798: boolean bool2;
      if (cj.hX(localnf.fBM))
        if (localje.fGs == 1)
        {
          bool2 = true;
          label821: Assert.assertTrue("mobile friend never go here", bool2);
          localn.setStatus(102);
        }
      while (true)
      {
        if (localje.fGs == 1)
          ax.Am().a(localn);
        ax.An().a(localx);
        break;
        label866: if (!cj.hX(localnf.fBM))
          break label620;
        aa.w("MicroMsg.NetSceneGetMFriend", "username null for mobile");
        break;
        label888: locali = null;
        break label798;
        bool2 = false;
        break label821;
        if ((locali == null) || (!locali.rb()))
        {
          localn.setStatus(100);
          if (localh != null)
          {
            aa.v("MicroMsg.NetSceneGetMFriend", "onGYNetEnd update status on, nick:" + localnf.fNU + " realName:" + localh.yM() + "  MFriend:" + localnf.toString());
            localh.setStatus(1);
            localh.setUsername(localnf.fBM);
            localh.fc(localnf.fNU);
            localh.fd(com.tencent.mm.platformtools.h.hJ(localnf.fNV.Th));
            localh.fe(com.tencent.mm.platformtools.h.hI(localnf.fNV.Th));
            a(localh, localnf);
            localh.cL(-1);
            ax.Al().a(localh.yK(), localh);
            com.tencent.mm.m.x localx1 = new com.tencent.mm.m.x();
            localx1.setUsername(localnf.fBM);
            localx1.eo(localnf.fDg);
            localx1.ep(localnf.fDh);
            localx1.Q(true);
            localx1.bU(3);
            af.wm().a(localx1);
          }
        }
        else
        {
          localn.setStatus(101);
          if (localh != null)
          {
            aa.v("MicroMsg.NetSceneGetMFriend", "onGYNetEnd update status friend, nick:" + localnf.fNU + "  md5:" + localnf.cqp);
            localh.setStatus(2);
            localh.setUsername(localnf.fBM);
            localh.fc(localnf.fNU);
            a(localh, localnf);
            localh.cL(-1);
            ax.Al().a(localh.yK(), localh);
            c.p(localnf.fBM, 3);
          }
        }
      }
    }
    be.uz().sp().cb(l);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 32;
  }

  public final void zN()
  {
    je localje = (je)this.cke.wr();
    localje.fFn = ((String)be.uz().sr().get(65828));
    localje.fGs = 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.al
 * JD-Core Version:    0.6.2
 */