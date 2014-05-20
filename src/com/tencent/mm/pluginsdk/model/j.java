package com.tencent.mm.pluginsdk.model;

import com.tencent.mm.n.a;
import com.tencent.mm.n.b;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.zd;
import com.tencent.mm.protocal.a.ze;
import com.tencent.mm.protocal.a.zf;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

public final class j extends x
  implements ab
{
  private int bNk = 0;
  private m cjh;
  private final a cke;
  private String csN;
  private List fgT = null;
  private String fgU;
  private List fgV = null;

  public j(int paramInt, List paramList1, List paramList2, String paramString1, String paramString2)
  {
    boolean bool;
    ze localze;
    LinkedList localLinkedList1;
    int i;
    label158: zd localzd;
    if (paramInt != 3)
    {
      bool = true;
      Assert.assertTrue("This NetSceneVerifyUser init NEVER use opcode == MM_VERIFYUSER_VERIFYOK", bool);
      this.bNk = paramInt;
      this.fgT = paramList1;
      b localb = new b();
      localb.a(new ze());
      localb.b(new zf());
      localb.es("/cgi-bin/micromsg-bin/verifyuser");
      localb.cN(137);
      localb.cO(44);
      localb.cP(1000000044);
      this.cke = localb.wx();
      localze = (ze)this.cke.wr();
      localze.fBl = paramInt;
      localze.fMl = paramString1;
      this.fgU = paramString1;
      localLinkedList1 = new LinkedList();
      i = 0;
      if (i >= paramList1.size())
        break label237;
      localzd = new zd();
      localzd.fNk = ((String)paramList1.get(i));
      if (paramString2 != null)
        break label230;
    }
    label230: for (String str = ""; ; str = paramString2)
    {
      localzd.fZt = str;
      localLinkedList1.add(localzd);
      i++;
      break label158;
      bool = false;
      break;
    }
    label237: localze.fZv = localLinkedList1;
    localze.fZu = localLinkedList1.size();
    LinkedList localLinkedList2 = new LinkedList();
    localLinkedList2.addAll(paramList2);
    localze.fZx = localLinkedList2;
    localze.fZw = localLinkedList2.size();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(localze.fZv.size());
    arrayOfObject[1] = Integer.valueOf(localze.fZx.size());
    aa.e("MicroMsg.NetSceneVerifyUser", "dkverify scene:%d user:%d", arrayOfObject);
  }

  public j(String paramString1, String paramString2, int paramInt)
  {
    Assert.assertTrue("This NetSceneVerifyUser init MUST use opcode == MM_VERIFYUSER_VERIFYOK", true);
    this.fgT = new LinkedList();
    this.fgT.add(paramString1);
    this.bNk = 3;
    b localb = new b();
    localb.a(new ze());
    localb.b(new zf());
    localb.es("/cgi-bin/micromsg-bin/verifyuser");
    localb.cN(137);
    localb.cO(44);
    localb.cP(1000000044);
    this.cke = localb.wx();
    ze localze = (ze)this.cke.wr();
    localze.fBl = 3;
    localze.fMl = "";
    LinkedList localLinkedList1 = new LinkedList();
    zd localzd = new zd();
    localzd.fNk = paramString1;
    localzd.fZt = paramString2;
    localLinkedList1.add(localzd);
    localze.fZv = localLinkedList1;
    localze.fZu = localLinkedList1.size();
    LinkedList localLinkedList2 = new LinkedList();
    localLinkedList2.add(Integer.valueOf(paramInt));
    localze.fZx = localLinkedList2;
    localze.fZw = localLinkedList2.size();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(localze.fZv.size());
    arrayOfObject[1] = Integer.valueOf(localze.fZx.size());
    arrayOfObject[2] = paramString2;
    aa.e("MicroMsg.NetSceneVerifyUser", "dkverify scene:%d user:%d ticket:%s", arrayOfObject);
  }

  public final String Ay()
  {
    return this.csN;
  }

  public final int a(r paramr, m paramm)
  {
    this.cjh = paramm;
    return a(paramr, this.cke, this);
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    this.cjh.a(paramInt2, paramInt3, paramString, this);
  }

  public final String apG()
  {
    if ((this.cke != null) && (this.cke.wt() != null))
      return ((zf)this.cke.ws()).eBo;
    return "";
  }

  public final List apH()
  {
    return this.fgT;
  }

  public final int apI()
  {
    return this.bNk;
  }

  public final String apJ()
  {
    return this.fgU;
  }

  public final List apK()
  {
    return this.fgV;
  }

  public final LinkedList apL()
  {
    if ((this.cke != null) && (this.cke.wJ() != null))
      return ((ze)this.cke.wr()).fZx;
    return null;
  }

  public final int getType()
  {
    return 30;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.j
 * JD-Core Version:    0.6.2
 */