package com.tencent.mm.modelfriend;

import com.tencent.mm.model.be;
import com.tencent.mm.n.aa;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.kp;
import com.tencent.mm.protocal.ak;
import java.util.LinkedList;

public final class an extends x
  implements ab
{
  private m cjh = null;
  private final com.tencent.mm.network.aj cmF = new ao();

  public an(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    com.tencent.mm.protocal.aj localaj = (com.tencent.mm.protocal.aj)this.cmF.wJ();
    localaj.fyn.fMh = paramString1;
    localaj.fyn.fMi = paramString2;
    localaj.fyn.fDe = paramString3;
    localaj.fyn.fMj = paramString4;
    localaj.fyn.fMk = paramString5;
    localaj.fyn.fMl = paramString6;
    localaj.fyn.fMm = paramInt;
    localaj.fyn.fBF = com.tencent.mm.sdk.platformtools.z.azj();
    localaj.fyn.fBI = be.uv();
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cmF, this);
  }

  protected final aa a(com.tencent.mm.network.aj paramaj)
  {
    return aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, com.tencent.mm.network.aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  protected final void a(com.tencent.mm.n.z paramz)
  {
  }

  public final int getType()
  {
    return 429;
  }

  protected final int we()
  {
    return 3;
  }

  public final LinkedList zP()
  {
    return ((ak)this.cmF.wv()).fyo.fAD;
  }

  public final int zQ()
  {
    return ((ak)this.cmF.wv()).fyo.fMo;
  }

  public final byte[] zR()
  {
    return com.tencent.mm.platformtools.an.a(((ak)this.cmF.wv()).fyo.fMn, new byte[0]);
  }

  public final String zS()
  {
    return ((ak)this.cmF.wv()).fyo.fMk;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.an
 * JD-Core Version:    0.6.2
 */