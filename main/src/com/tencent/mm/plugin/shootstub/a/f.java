package com.tencent.mm.plugin.shootstub.a;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.gm;
import com.tencent.mm.protocal.a.gn;
import java.util.LinkedList;

public final class f extends x
  implements ab
{
  private m cjh;
  public a cke;
  private String etC;
  private String etE;
  private int etF;
  private int etG;
  private LinkedList etH;
  private int etI;
  private int etJ;
  private int etK;
  private int etL;
  private LinkedList etM;
  private int etN;
  private int etO;
  private int etP;

  public f(String paramString1, int paramInt1, int paramInt2, String paramString2, LinkedList paramLinkedList1, int paramInt3, int paramInt4, int paramInt5, int paramInt6, LinkedList paramLinkedList2, int paramInt7, int paramInt8, int paramInt9)
  {
    this.etC = paramString1;
    this.etF = paramInt1;
    this.etG = paramInt2;
    this.etE = paramString2;
    this.etH = paramLinkedList1;
    this.etI = paramInt3;
    this.etJ = paramInt4;
    this.etK = paramInt5;
    this.etL = paramInt6;
    this.etM = paramLinkedList2;
    this.etN = paramInt7;
    this.etO = paramInt8;
    this.etP = paramInt9;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    if (this.etH == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameEnd", "enemyKilledList == null");
      return -1;
    }
    b localb = new b();
    localb.a(new gm());
    localb.b(new gn());
    localb.es("/cgi-bin/micromsg-bin/gameend");
    localb.cN(441);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    gm localgm = (gm)this.cke.wr();
    localgm.fyR = this.etC;
    localgm.fIT = this.etF;
    localgm.fIU = this.etG;
    localgm.fIL = this.etE;
    localgm.fIS = this.etH;
    localgm.fAC = this.etH.size();
    localgm.fIV = this.etI;
    localgm.fIY = this.etJ;
    localgm.fIZ = this.etK;
    localgm.fJa = this.etL;
    localgm.fIX = this.etM;
    localgm.fIW = this.etM.size();
    localgm.fJb = this.etN;
    localgm.fIR = this.etP;
    localgm.fJc = this.etO;
    return a(paramr, this.cke, this);
  }

  protected final com.tencent.mm.n.aa a(aj paramaj)
  {
    gm localgm = (gm)((a)paramaj).ws();
    if ((localgm.fyR == null) || (localgm.fyR.length() <= 0) || (localgm.fIT < 0) || (localgm.fIL == null) || (localgm.fIL.length() <= 0) || (localgm.fIS == null))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.shoot.NetSceneGameEnd", "ERR: Security Check Failed");
      return com.tencent.mm.n.aa.cmi;
    }
    return com.tencent.mm.n.aa.cmh;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.shoot.NetSceneGameEnd", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3 + " errMsg:" + paramString);
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final int getType()
  {
    return 441;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.f
 * JD-Core Version:    0.6.2
 */