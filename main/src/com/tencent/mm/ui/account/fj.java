package com.tencent.mm.ui.account;

import com.tencent.mm.model.be;
import com.tencent.mm.model.cn;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.kl;
import com.tencent.mm.protocal.a.uf;
import com.tencent.mm.protocal.a.wb;
import com.tencent.mm.protocal.ag;
import com.tencent.mm.protocal.ah;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public final class fj extends x
  implements ab
{
  private m cjh;
  private aj cmF = new fk();
  private int crh = 2;

  public fj()
  {
    ((ag)this.cmF.wJ()).fyl.fBI = be.uv();
  }

  private int aFS()
  {
    uf localuf = ((ah)this.cmF.wv()).fym.fMf;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 2)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  private int aFT()
  {
    uf localuf = ((ah)this.cmF.wv()).fym.fMf;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 3)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  private int aFU()
  {
    uf localuf = ((ah)this.cmF.wv()).fym.fMf;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 1)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  private int zL()
  {
    uf localuf = ((ah)this.cmF.wv()).fym.fMf;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 0)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetRegStyle", "onGYNetEnd  errType:%d errCode:%d", arrayOfObject);
    if ((paramInt2 == 4) && (paramInt3 == -301))
    {
      this.crh = (-1 + this.crh);
      if (this.crh <= 0)
      {
        this.cjh.a(3, -1, "", this);
        return;
      }
      a(wM(), this.cjh);
      return;
    }
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetRegStyle", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    if ((paramInt2 == 0) && (paramInt3 == 0))
      new cn().cC(zL()).cF(aFT()).cE(aFS()).cD(aFU()).commit();
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 572;
  }

  protected final int we()
  {
    return 5;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fj
 * JD-Core Version:    0.6.2
 */