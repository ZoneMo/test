package com.tencent.mm.protocal.a;

public final class ft extends com.tencent.mm.am.a
{
  private String bMo;
  private int cLC;
  private String cgL;
  private String desc;
  private int dlV;
  private int duration;
  public boolean fGE = false;
  public boolean fGF = false;
  public boolean fGG = false;
  private String fGH;
  public boolean fGI = false;
  public boolean fGJ = false;
  private int fGK;
  public boolean fGL = false;
  private String fGM;
  public boolean fGN = false;
  private String fGO;
  public boolean fGP = false;
  private int fGQ;
  public boolean fGR = false;
  public boolean fGS = false;
  private String fGT;
  public boolean fGU = false;
  private String fGV;
  public boolean fGW = false;
  private String fGX;
  public boolean fGY = false;
  public boolean fGZ = false;
  public boolean fHA = false;
  private boolean fHB;
  public boolean fHC = false;
  private int fHD;
  public boolean fHE = false;
  public boolean fHa = false;
  private String fHb;
  public boolean fHc = false;
  private String fHd;
  public boolean fHe = false;
  private String fHf;
  public boolean fHg = false;
  private long fHh;
  public boolean fHi = false;
  private String fHj;
  public boolean fHk = false;
  private String fHl;
  public boolean fHm = false;
  private String fHn;
  public boolean fHo = false;
  private String fHp;
  public boolean fHq = false;
  private String fHr;
  public boolean fHs = false;
  private long fHt;
  public boolean fHu = false;
  private String fHv;
  public boolean fHw = false;
  private String fHx;
  public boolean fHy = false;
  private boolean fHz;
  private String title;

  public static boolean a(a.a.a.a.a parama, ft paramft, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramft.title = parama.aPS();
      paramft.fGE = true;
      return true;
    case 2:
      paramft.desc = parama.aPS();
      paramft.fGF = true;
      return true;
    case 3:
      paramft.cgL = parama.aPS();
      paramft.fGG = true;
      return true;
    case 4:
      paramft.fGH = parama.aPS();
      paramft.fGI = true;
      return true;
    case 5:
      paramft.dlV = parama.aPQ();
      paramft.fGJ = true;
      return true;
    case 6:
      paramft.fGK = parama.aPQ();
      paramft.fGL = true;
      return true;
    case 7:
      paramft.fGM = parama.aPS();
      paramft.fGN = true;
      return true;
    case 8:
      paramft.fGO = parama.aPS();
      paramft.fGP = true;
      return true;
    case 9:
      paramft.fGQ = parama.aPQ();
      paramft.fGR = true;
      return true;
    case 10:
      paramft.duration = parama.aPQ();
      paramft.fGS = true;
      return true;
    case 11:
      paramft.fGT = parama.aPS();
      paramft.fGU = true;
      return true;
    case 12:
      paramft.fGV = parama.aPS();
      paramft.fGW = true;
      return true;
    case 13:
      paramft.fGX = parama.aPS();
      paramft.fGY = true;
      return true;
    case 14:
      paramft.bMo = parama.aPS();
      paramft.fGZ = true;
      return true;
    case 15:
      paramft.cLC = parama.aPQ();
      paramft.fHa = true;
      return true;
    case 16:
      paramft.fHb = parama.aPS();
      paramft.fHc = true;
      return true;
    case 17:
      paramft.fHd = parama.aPS();
      paramft.fHe = true;
      return true;
    case 18:
      paramft.fHf = parama.aPS();
      paramft.fHg = true;
      return true;
    case 19:
      paramft.fHh = parama.aPW();
      paramft.fHi = true;
      return true;
    case 20:
      paramft.fHj = parama.aPS();
      paramft.fHk = true;
      return true;
    case 21:
      paramft.fHl = parama.aPS();
      paramft.fHm = true;
      return true;
    case 22:
      paramft.fHn = parama.aPS();
      paramft.fHo = true;
      return true;
    case 23:
      paramft.fHp = parama.aPS();
      paramft.fHq = true;
      return true;
    case 24:
      paramft.fHr = parama.aPS();
      paramft.fHs = true;
      return true;
    case 25:
      paramft.fHt = parama.aPW();
      paramft.fHu = true;
      return true;
    case 26:
      paramft.fHv = parama.aPS();
      paramft.fHw = true;
      return true;
    case 27:
      paramft.fHx = parama.aPS();
      paramft.fHy = true;
      return true;
    case 28:
      paramft.fHz = parama.aPT();
      paramft.fHA = true;
      return true;
    case 29:
      paramft.fHB = parama.aPT();
      paramft.fHC = true;
      return true;
    case 30:
    }
    paramft.fHD = parama.aPQ();
    paramft.fHE = true;
    return true;
  }

  public final int OF()
  {
    return this.dlV;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.title != null)
      parama.A(1, this.title);
    if (this.desc != null)
      parama.A(2, this.desc);
    if (this.cgL != null)
      parama.A(3, this.cgL);
    if (this.fGH != null)
      parama.A(4, this.fGH);
    if (this.fGJ == true)
      parama.by(5, this.dlV);
    if (this.fGL == true)
      parama.by(6, this.fGK);
    if (this.fGM != null)
      parama.A(7, this.fGM);
    if (this.fGO != null)
      parama.A(8, this.fGO);
    if (this.fGR == true)
      parama.by(9, this.fGQ);
    if (this.fGS == true)
      parama.by(10, this.duration);
    if (this.fGT != null)
      parama.A(11, this.fGT);
    if (this.fGV != null)
      parama.A(12, this.fGV);
    if (this.fGX != null)
      parama.A(13, this.fGX);
    if (this.bMo != null)
      parama.A(14, this.bMo);
    if (this.fHa == true)
      parama.by(15, this.cLC);
    if (this.fHb != null)
      parama.A(16, this.fHb);
    if (this.fHd != null)
      parama.A(17, this.fHd);
    if (this.fHf != null)
      parama.A(18, this.fHf);
    if (this.fHi == true)
      parama.k(19, this.fHh);
    if (this.fHj != null)
      parama.A(20, this.fHj);
    if (this.fHl != null)
      parama.A(21, this.fHl);
    if (this.fHn != null)
      parama.A(22, this.fHn);
    if (this.fHp != null)
      parama.A(23, this.fHp);
    if (this.fHr != null)
      parama.A(24, this.fHr);
    if (this.fHu == true)
      parama.k(25, this.fHt);
    if (this.fHv != null)
      parama.A(26, this.fHv);
    if (this.fHx != null)
      parama.A(27, this.fHx);
    if (this.fHA == true)
      parama.t(28, this.fHz);
    if (this.fHC == true)
      parama.t(29, this.fHB);
    if (this.fHE == true)
      parama.by(30, this.fHD);
  }

  public final ft axA()
  {
    this.fHB = true;
    this.fHC = true;
    return this;
  }

  public final boolean axB()
  {
    return this.fHB;
  }

  public final int axC()
  {
    return this.fHD;
  }

  public final String axc()
  {
    return this.cgL;
  }

  public final String axd()
  {
    return this.fGH;
  }

  public final int axe()
  {
    return this.fGK;
  }

  public final String axf()
  {
    return this.fGM;
  }

  public final String axg()
  {
    return this.fGO;
  }

  public final int axh()
  {
    return this.fGQ;
  }

  public final String axi()
  {
    return this.fGT;
  }

  public final String axj()
  {
    return this.fGV;
  }

  public final String axk()
  {
    return this.fGX;
  }

  public final String axl()
  {
    return this.bMo;
  }

  public final String axm()
  {
    return this.fHb;
  }

  public final String axn()
  {
    return this.fHd;
  }

  public final String axo()
  {
    return this.fHf;
  }

  public final long axp()
  {
    return this.fHh;
  }

  public final String axq()
  {
    return this.fHj;
  }

  public final String axr()
  {
    return this.fHl;
  }

  public final String axs()
  {
    return this.fHn;
  }

  public final String axt()
  {
    return this.fHp;
  }

  public final String axu()
  {
    return this.fHr;
  }

  public final long axv()
  {
    return this.fHt;
  }

  public final String axw()
  {
    return this.fHv;
  }

  public final String axx()
  {
    return this.fHx;
  }

  public final ft axy()
  {
    this.fHz = true;
    this.fHA = true;
    return this;
  }

  public final boolean axz()
  {
    return this.fHz;
  }

  public final ft bI(long paramLong)
  {
    this.fHh = paramLong;
    this.fHi = true;
    return this;
  }

  public final ft bJ(long paramLong)
  {
    this.fHt = paramLong;
    this.fHu = true;
    return this;
  }

  public final int getDataType()
  {
    return this.cLC;
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final int getDuration()
  {
    return this.duration;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final ft lk(int paramInt)
  {
    this.dlV = paramInt;
    this.fGJ = true;
    return this;
  }

  public final ft ll(int paramInt)
  {
    this.fGK = paramInt;
    this.fGL = true;
    return this;
  }

  public final ft lm(int paramInt)
  {
    this.duration = paramInt;
    this.fGS = true;
    return this;
  }

  public final ft ln(int paramInt)
  {
    this.cLC = paramInt;
    this.fHa = true;
    return this;
  }

  public final ft lo(int paramInt)
  {
    this.fHD = paramInt;
    this.fHE = true;
    return this;
  }

  public final int ns()
  {
    String str = this.title;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.title);
    if (this.desc != null)
      i += a.a.a.a.z(2, this.desc);
    if (this.cgL != null)
      i += a.a.a.a.z(3, this.cgL);
    if (this.fGH != null)
      i += a.a.a.a.z(4, this.fGH);
    if (this.fGJ == true)
      i += a.a.a.a.br(5, this.dlV);
    if (this.fGL == true)
      i += a.a.a.a.br(6, this.fGK);
    if (this.fGM != null)
      i += a.a.a.a.z(7, this.fGM);
    if (this.fGO != null)
      i += a.a.a.a.z(8, this.fGO);
    if (this.fGR == true)
      i += a.a.a.a.br(9, this.fGQ);
    if (this.fGS == true)
      i += a.a.a.a.br(10, this.duration);
    if (this.fGT != null)
      i += a.a.a.a.z(11, this.fGT);
    if (this.fGV != null)
      i += a.a.a.a.z(12, this.fGV);
    if (this.fGX != null)
      i += a.a.a.a.z(13, this.fGX);
    if (this.bMo != null)
      i += a.a.a.a.z(14, this.bMo);
    if (this.fHa == true)
      i += a.a.a.a.br(15, this.cLC);
    if (this.fHb != null)
      i += a.a.a.a.z(16, this.fHb);
    if (this.fHd != null)
      i += a.a.a.a.z(17, this.fHd);
    if (this.fHf != null)
      i += a.a.a.a.z(18, this.fHf);
    if (this.fHi == true)
      i += a.a.a.a.i(19, this.fHh);
    if (this.fHj != null)
      i += a.a.a.a.z(20, this.fHj);
    if (this.fHl != null)
      i += a.a.a.a.z(21, this.fHl);
    if (this.fHn != null)
      i += a.a.a.a.z(22, this.fHn);
    if (this.fHp != null)
      i += a.a.a.a.z(23, this.fHp);
    if (this.fHr != null)
      i += a.a.a.a.z(24, this.fHr);
    if (this.fHu == true)
      i += a.a.a.a.i(25, this.fHt);
    if (this.fHv != null)
      i += a.a.a.a.z(26, this.fHv);
    if (this.fHx != null)
      i += a.a.a.a.z(27, this.fHx);
    if (this.fHA == true)
      i += a.a.a.a.oI(28);
    if (this.fHC == true)
      i += a.a.a.a.oI(29);
    if (this.fHE == true)
      i += a.a.a.a.br(30, this.fHD);
    return i;
  }

  public final ft rA(String paramString)
  {
    this.fGH = paramString;
    this.fGI = true;
    return this;
  }

  public final ft rB(String paramString)
  {
    this.fGM = paramString;
    this.fGN = true;
    return this;
  }

  public final ft rC(String paramString)
  {
    this.fGO = paramString;
    this.fGP = true;
    return this;
  }

  public final ft rD(String paramString)
  {
    this.fGT = paramString;
    this.fGU = true;
    return this;
  }

  public final ft rE(String paramString)
  {
    this.fGV = paramString;
    this.fGW = true;
    return this;
  }

  public final ft rF(String paramString)
  {
    this.fGX = paramString;
    this.fGY = true;
    return this;
  }

  public final ft rG(String paramString)
  {
    this.bMo = paramString;
    this.fGZ = true;
    return this;
  }

  public final ft rH(String paramString)
  {
    this.fHb = paramString;
    this.fHc = true;
    return this;
  }

  public final ft rI(String paramString)
  {
    this.fHd = paramString;
    this.fHe = true;
    return this;
  }

  public final ft rJ(String paramString)
  {
    this.fHf = paramString;
    this.fHg = true;
    return this;
  }

  public final ft rK(String paramString)
  {
    this.fHj = paramString;
    this.fHk = true;
    return this;
  }

  public final ft rL(String paramString)
  {
    this.fHl = paramString;
    this.fHm = true;
    return this;
  }

  public final ft rM(String paramString)
  {
    this.fHn = paramString;
    this.fHo = true;
    return this;
  }

  public final ft rN(String paramString)
  {
    this.fHp = paramString;
    this.fHq = true;
    return this;
  }

  public final ft rO(String paramString)
  {
    this.fHr = paramString;
    this.fHs = true;
    return this;
  }

  public final ft rP(String paramString)
  {
    this.fHv = paramString;
    this.fHw = true;
    return this;
  }

  public final ft rQ(String paramString)
  {
    this.fHx = paramString;
    this.fHy = true;
    return this;
  }

  public final ft rx(String paramString)
  {
    this.title = paramString;
    this.fGE = true;
    return this;
  }

  public final ft ry(String paramString)
  {
    this.desc = paramString;
    this.fGF = true;
    return this;
  }

  public final ft rz(String paramString)
  {
    this.cgL = paramString;
    this.fGG = true;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ft
 * JD-Core Version:    0.6.2
 */