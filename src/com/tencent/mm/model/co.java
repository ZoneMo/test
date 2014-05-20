package com.tencent.mm.model;

import com.tencent.mm.a.c;
import com.tencent.mm.protocal.a.oq;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.RegionCodeDecoder;
import com.tencent.mm.storage.e;

public final class co
{
  private int bTN = 0;
  private int bTX = 0;
  private String bTY = "";
  private String bUe = "";
  private String cjH = "";
  private String cjI = "";
  private String cjJ = "";
  private String cjK = "";
  private String cjL = "";

  public static oq a(co paramco)
  {
    be.uz().sr().set(12289, Integer.valueOf(paramco.bTX));
    be.uz().sr().set(12290, Integer.valueOf(paramco.bTN));
    if (cp.u((String)be.uz().sr().get(12293), paramco.rC()))
      be.uz().sr().set(12293, paramco.rC());
    if (cp.u((String)be.uz().sr().get(12292), paramco.rD()))
      be.uz().sr().set(12292, paramco.rD());
    if (cp.u((String)be.uz().sr().get(12291), paramco.bTY))
      be.uz().sr().set(12291, paramco.bTY);
    if (cp.u((String)be.uz().sr().get(12307), paramco.bUe))
      be.uz().sr().set(12307, paramco.bUe);
    if (cp.u((String)be.uz().sr().get(12324), paramco.cjJ))
      be.uz().sr().set(12324, paramco.cjJ);
    if (cp.u((String)be.uz().sr().get(12325), paramco.cjL))
      be.uz().sr().set(12325, paramco.cjL);
    if (cp.u((String)be.uz().sr().get(12326), paramco.cjK))
      be.uz().sr().set(12326, paramco.cjK);
    oq localoq = new oq();
    localoq.fPG = 128;
    localoq.fEI = new rw().sn("");
    localoq.fNa = new rw().sn("");
    localoq.fPH = 0;
    localoq.fPI = new rw().sn("");
    localoq.fPJ = new rw().sn("");
    localoq.fzr = 0;
    byte[] arrayOfByte1 = c.g("", 0, -1);
    byte[] arrayOfByte2;
    if (arrayOfByte1 == null)
    {
      arrayOfByte2 = new byte[0];
      localoq.fPE = new com.tencent.mm.am.b(arrayOfByte2);
      if (arrayOfByte1 != null)
        break label560;
    }
    label560: for (int i = 0; ; i = arrayOfByte1.length)
    {
      localoq.fPD = i;
      localoq.cqq = paramco.bTN;
      localoq.cqs = paramco.bTX;
      localoq.cqr = cj.hW(paramco.bTY);
      localoq.Tv = cj.hW(paramco.cjK);
      localoq.Tu = cj.hW(paramco.cjL);
      localoq.fPK = 0;
      localoq.fNr = cj.hW(paramco.bUe);
      localoq.fPP = 0;
      localoq.cqt = "";
      localoq.fNt = 0;
      localoq.fNs = "";
      localoq.cqx = cj.hW(paramco.cjJ);
      return localoq;
      arrayOfByte2 = arrayOfByte1;
      break;
    }
  }

  public static co vw()
  {
    co localco = new co();
    localco.bTX = 1;
    localco.bTN = cj.a((Integer)be.uz().sr().get(12290), 0);
    localco.cjH = ((String)be.uz().sr().get(12293));
    localco.cjI = ((String)be.uz().sr().get(12292));
    localco.bTY = ((String)be.uz().sr().get(12291));
    localco.bUe = ((String)be.uz().sr().get(12307));
    localco.cjJ = ((String)be.uz().sr().get(12324));
    localco.cjL = ((String)be.uz().sr().get(12325));
    localco.cjK = ((String)be.uz().sr().get(12326));
    return localco;
  }

  public static co vx()
  {
    if (cj.a((Integer)be.uz().sr().get(12289), 0) == 0)
      return null;
    return vw();
  }

  public final void bD(String paramString)
  {
    this.bUe = paramString;
  }

  public final void bL(int paramInt)
  {
    this.bTN = paramInt;
  }

  public final void bz(String paramString)
  {
    this.bTY = paramString;
  }

  public final void dL(String paramString)
  {
    this.cjK = paramString;
  }

  public final void dM(String paramString)
  {
    this.cjL = paramString;
  }

  public final String getCountryCode()
  {
    return this.cjJ;
  }

  public final String rB()
  {
    return this.bTY;
  }

  public final String rC()
  {
    if (!cj.hX(this.cjJ))
    {
      if ((cj.hX(this.cjL)) || (cj.hX(this.cjK)) || (!RegionCodeDecoder.vw(this.cjJ)))
        break label77;
      RegionCodeDecoder.aDe();
    }
    for (this.cjH = RegionCodeDecoder.aW(this.cjJ, this.cjL); cj.hX(this.cjH); this.cjH = RegionCodeDecoder.vy(this.cjJ))
    {
      return cj.hW(this.cjL);
      label77: RegionCodeDecoder.aDe();
    }
    return this.cjH;
  }

  public final String rD()
  {
    if (!cj.hX(this.cjJ))
    {
      if (cj.hX(this.cjL))
        break label93;
      if (!cj.hX(this.cjK))
        break label67;
      RegionCodeDecoder.aDe();
      this.cjI = RegionCodeDecoder.aW(this.cjJ, this.cjL);
    }
    while (cj.hX(this.cjI))
    {
      return cj.hW(this.cjK);
      label67: RegionCodeDecoder.aDe();
      this.cjI = RegionCodeDecoder.x(this.cjJ, this.cjL, this.cjK);
      continue;
      label93: this.cjI = "";
    }
    return this.cjI;
  }

  public final String rG()
  {
    return this.bUe;
  }

  public final int rk()
  {
    return this.bTN;
  }

  public final void setCountryCode(String paramString)
  {
    this.cjJ = paramString;
  }

  public final String vA()
  {
    return this.cjL;
  }

  public final void vy()
  {
    this.bTX = 1;
  }

  public final String vz()
  {
    return this.cjK;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.co
 * JD-Core Version:    0.6.2
 */