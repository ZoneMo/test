package com.tencent.mm.modelfriend;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.be;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.ep;
import com.tencent.mm.protocal.a.eq;
import com.tencent.mm.protocal.a.uf;
import com.tencent.mm.protocal.a.wb;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import java.util.Iterator;
import java.util.LinkedList;

public final class aj extends x
  implements com.tencent.mm.network.ab
{
  private m cjh;
  private com.tencent.mm.network.aj cmF = new ak();
  private int crh = 2;

  private aj(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    com.tencent.mm.protocal.aa localaa = (com.tencent.mm.protocal.aa)this.cmF.wJ();
    localaa.fyh.fBl = paramInt;
    localaa.fyh.fBk = paramString1;
    localaa.fyh.fBF = z.azj();
    localaa.fyh.fBL = cj.hZ(paramString2);
    localaa.fyh.fFj = paramString3;
    localaa.fyh.fBI = be.uv();
    localaa.fyh.fFk = s.getSimCountryIso();
    localaa.fyh.fFl = 1;
  }

  public aj(String paramString1, String paramString2)
  {
    this(1, paramString1, paramString2, "");
  }

  public aj(String paramString1, String paramString2, String paramString3)
  {
    this(2, paramString1, paramString2, paramString3);
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  protected final com.tencent.mm.n.aa a(com.tencent.mm.network.aj paramaj)
  {
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, com.tencent.mm.network.aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt3);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneEmailReg", "onGYNetEnd  errType:%d errCode:%d", arrayOfObject);
    com.tencent.mm.protocal.ab localab = (com.tencent.mm.protocal.ab)paramaj.wv();
    if ((paramInt2 == 4) && (paramInt3 == -301))
    {
      be.a(true, localab.fyi.fBO, localab.fyi.fBP, localab.fyi.fBN);
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
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneEmailReg", "onGYNetEnd  errType:" + paramInt2 + " errCode:" + paramInt3);
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    be.a(false, localab.fyi.fBO, localab.fyi.fBP, localab.fyi.fBN);
    if ((paramInt2 == 0) && (paramInt3 == 0) && (zL() > 0))
      al.getContext().getSharedPreferences(al.azs(), 0).edit().putInt("reg_style_id", zL()).commit();
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 481;
  }

  public final int vI()
  {
    return ((com.tencent.mm.protocal.aa)this.cmF.wJ()).fyh.fBl;
  }

  protected final int we()
  {
    return 5;
  }

  public final String zC()
  {
    return ((com.tencent.mm.protocal.ab)this.cmF.wv()).fyi.fFm;
  }

  public final int zL()
  {
    uf localuf = ((com.tencent.mm.protocal.ab)this.cmF.wv()).fyi.fBW;
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
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.aj
 * JD-Core Version:    0.6.2
 */