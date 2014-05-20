package com.tencent.mm.modelfriend;

import android.content.Context;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a;
import com.tencent.mm.protocal.a.bq;
import com.tencent.mm.protocal.a.br;
import com.tencent.mm.protocal.a.uf;
import com.tencent.mm.protocal.a.wb;
import com.tencent.mm.protocal.s;
import com.tencent.mm.protocal.t;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;

public final class ag extends x
  implements ab
{
  private m cjh = null;
  private final aj cmF = new ah();
  private int crh = 2;

  public ag(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3)
  {
    s locals = (s)this.cmF.wJ();
    locals.fxX.fBl = paramInt1;
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneBindMobileForReg", "Get mobile:" + paramString1 + " opcode:" + paramInt1 + " verifyCode:" + paramString2);
    locals.fxX.fBw = paramString1;
    locals.fxX.fBx = paramString2;
    locals.fxX.fBy = paramInt2;
    locals.fxX.fBz = paramString3;
    locals.fxX.fBF = com.tencent.mm.sdk.platformtools.z.azj();
    locals.fxX.fBI = be.uv();
    if ((cj.hX(locals.fxX.fBC)) && (cj.hX(locals.fxX.fBD)))
    {
      locals.fxX.fBC = al.getContext().getString(n.bwC);
      locals.fxX.fBD = a.fxq;
    }
  }

  public ag(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4)
  {
    this(paramString1, paramInt, paramString2, 0, paramString3);
    ((s)this.cmF.wJ()).fxX.fBA = paramString4;
  }

  public ag(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    this(paramString1, 11, paramString2, paramString3, paramString4);
    s locals = (s)this.cmF.wJ();
    locals.fxX.fBC = paramString5;
    locals.fxX.fBD = paramString6;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    s locals = (s)this.cmF.wJ();
    if ((locals.fxX.fBw == null) || (locals.fxX.fBw.length() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBindMobileForReg", "doScene getMobile Error: " + locals.fxX.fBw);
      return -1;
    }
    if (((locals.fxX.fBl == 6) || (locals.fxX.fBl == 9)) && ((locals.fxX.fBx == null) || (locals.fxX.fBx.length() <= 0)))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBindMobileForReg", "doScene getVerifyCode Error: " + locals.fxX.fBw);
      return -1;
    }
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
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBindMobileForReg", "dkidc onGYNetEnd  errType:%d errCode:%d", arrayOfObject);
    t localt = (t)paramaj.wv();
    if ((paramInt2 == 4) && (paramInt3 == -301))
    {
      be.a(true, localt.fxY.fBO, localt.fxY.fBP, localt.fxY.fBN);
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
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneBindMobileForReg", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    be.a(false, localt.fxY.fBO, localt.fxY.fBP, localt.fxY.fBN);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  protected final void a(com.tencent.mm.n.z paramz)
  {
  }

  public final void di(int paramInt)
  {
    ((s)this.cmF.wJ()).fxX.fBG = paramInt;
  }

  public final void dj(int paramInt)
  {
    ((s)this.cmF.wJ()).fxX.fBH = paramInt;
  }

  public final int getType()
  {
    return 145;
  }

  public final String getUsername()
  {
    return ((t)this.cmF.wv()).fxY.fBM;
  }

  public final int vI()
  {
    return ((s)this.cmF.wJ()).fxX.fBl;
  }

  protected final int we()
  {
    return 3;
  }

  public final String xn()
  {
    return ((t)this.cmF.wv()).fxY.fBA;
  }

  public final int zA()
  {
    return ((t)this.cmF.wv()).fxY.fBK;
  }

  public final String zB()
  {
    return ((t)this.cmF.wv()).fxY.fBL;
  }

  public final String zC()
  {
    return ((t)this.cmF.wv()).fxY.cgp;
  }

  public final String zD()
  {
    return ((t)this.cmF.wv()).fxY.fBU;
  }

  public final int zE()
  {
    uf localuf = ((t)this.cmF.wv()).fxY.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 6)
          return cj.getInt(localwb.fXv, 3);
      }
    }
    return 3;
  }

  public final int zF()
  {
    uf localuf = ((t)this.cmF.wv()).fxY.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 4)
          return cj.getInt(localwb.fXv, 30);
      }
    }
    return 30;
  }

  public final int zG()
  {
    uf localuf = ((t)this.cmF.wv()).fxY.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 5)
          return cj.getInt(localwb.fXv, 0);
      }
    }
    return 0;
  }

  public final boolean zH()
  {
    uf localuf = ((t)this.cmF.wv()).fxY.fBW;
    wb localwb;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        localwb = (wb)localIterator.next();
      }
      while (localwb.fAs != 7);
    }
    for (int i = cj.getInt(localwb.fXv, 0); ; i = 0)
      return i > 0;
  }

  public final boolean zI()
  {
    uf localuf = ((t)this.cmF.wv()).fxY.fBW;
    wb localwb;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        localwb = (wb)localIterator.next();
      }
      while (localwb.fAs != 10);
    }
    for (int i = cj.getInt(localwb.fXv, 0); ; i = 0)
      return i > 0;
  }

  public final String zJ()
  {
    uf localuf = ((t)this.cmF.wv()).fxY.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 14)
          return localwb.fXv;
      }
    }
    return null;
  }

  public final String zK()
  {
    uf localuf = ((t)this.cmF.wv()).fxY.fBW;
    if ((localuf != null) && (localuf.fVa != null) && (localuf.fVa.size() > 0))
    {
      Iterator localIterator = localuf.fVa.iterator();
      while (localIterator.hasNext())
      {
        wb localwb = (wb)localIterator.next();
        if (localwb.fAs == 15)
          return localwb.fXv;
      }
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ag
 * JD-Core Version:    0.6.2
 */