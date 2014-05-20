package com.tencent.mm.v;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.lw;
import com.tencent.mm.protocal.a.lx;
import com.tencent.mm.protocal.a.ly;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.LinkedList;

public final class d extends x
  implements ab
{
  private m cjh;
  private final a cke;
  private LinkedList csM;
  private String csN;

  public d(ArrayList paramArrayList)
  {
    b localb = new b();
    localb.a(new lx());
    localb.b(new ly());
    localb.es("/cgi-bin/micromsg-bin/invitegooglecontact");
    localb.cN(489);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    this.csM = new LinkedList();
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
      for (int i = 0; i < paramArrayList.size(); i++)
      {
        lw locallw = new lw();
        locallw.fBm = ((String)paramArrayList.get(i));
        this.csM.add(locallw);
      }
  }

  public final LinkedList AA()
  {
    return this.csM;
  }

  public final String Ay()
  {
    return this.csN;
  }

  public final ly Az()
  {
    return (ly)this.cke.ws();
  }

  public final int a(r paramr, m paramm)
  {
    aa.i("MicroMsg.GoogleContact.NetSceneInviteGoogleContact", "doScene");
    this.cjh = paramm;
    lx locallx = (lx)this.cke.wr();
    locallx.fAC = this.csM.size();
    locallx.fAD = this.csM;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    arrayOfObject[3] = paramString;
    aa.d("MicroMsg.GoogleContact.NetSceneInviteGoogleContact", "NetId:%d, ErrType:%d, ErrCode:%d, errMsg:%s", arrayOfObject);
    if ((paramInt2 != 0) || (paramInt3 != 0))
    {
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final void fO(String paramString)
  {
    this.csN = paramString;
  }

  public final int getType()
  {
    return 489;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.v.d
 * JD-Core Version:    0.6.2
 */