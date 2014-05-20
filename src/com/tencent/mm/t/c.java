package com.tencent.mm.t;

import com.tencent.mm.model.at;
import com.tencent.mm.model.au;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.protocal.a.il;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class c
  implements at, m
{
  private boolean ckk = false;
  private long cku = 0L;
  private com.tencent.mm.a.d csf = new com.tencent.mm.a.d(200);
  private Map csg = new HashMap();
  private int csh = 0;
  private il csi = null;
  ay csj = new ay(be.ut().getLooper(), new d(this), true);
  final int csk = 500;
  private ay csl = new ay(be.ut().getLooper(), new f(this), false);
  final int csm = 10000;
  private ay csn = new ay(be.ut().getLooper(), new g(this), false);

  public c()
  {
    be.uA().a(182, this);
    this.ckk = false;
  }

  private void Av()
  {
    long l = cj.FD();
    if ((this.ckk) && (l - this.cku > 600000L))
      this.ckk = false;
    if (this.ckk);
    ArrayList localArrayList;
    label167: 
    do
    {
      List localList;
      do
      {
        return;
        localList = l.Ax().Au();
      }
      while ((localList == null) || (localList.size() == 0));
      localArrayList = new ArrayList();
      int i = 0;
      if ((i < localList.size()) && (i < 20))
      {
        String str = ((a)localList.get(i)).getUsername();
        Integer localInteger = (Integer)this.csf.get(str);
        aa.d("MicroMsg.GetContactService", "username:" + str + " mapCnt:" + localInteger);
        if (localInteger == null)
        {
          this.csf.f(str, Integer.valueOf(1));
          localArrayList.add(str);
        }
        while (true)
        {
          i++;
          break;
          if (localInteger.intValue() < 3)
          {
            this.csf.f(str, Integer.valueOf(1 + localInteger.intValue()));
            break label167;
          }
          aa.d("MicroMsg.GetContactService", "LRUMap Max now :" + str);
          if (this.csg.containsKey(str))
          {
            au localau = (au)this.csg.get(str);
            if (localau != null)
              localau.g(str, false);
            this.csg.remove(str);
          }
        }
      }
      aa.d("MicroMsg.GetContactService", "tryStartNetscene req lst:" + localArrayList.size() + " running:" + this.ckk);
    }
    while ((this.ckk) || (localArrayList.size() <= 0));
    this.cku = l;
    this.ckk = true;
    be.uA().d(new k(localArrayList));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 182)
      return;
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      aa.d("MicroMsg.GetContactService", "onGYNetEnd errType:" + paramInt1 + " errCode:" + paramInt2 + " will retry");
      this.csn.bO(10000L);
      return;
    }
    new h(this, ((k)paramx).cke).bO(50L);
    this.ckk = false;
    Av();
  }

  public final void a(String paramString, au paramau)
  {
    aa.d("MicroMsg.GetContactService", "getNow :" + paramString + " stack:" + cj.azV());
    if (cj.hX(paramString))
      return;
    a locala = new a();
    locala.setUsername(paramString);
    locala.D(cj.FC());
    l.Ax().a(locala);
    this.csg.put(paramString, paramau);
    Av();
  }

  public final void jdMethod_do(String paramString)
  {
    aa.d("MicroMsg.GetContactService", "add Contact :" + paramString + " stack:" + cj.azV());
    if (cj.hX(paramString))
      return;
    a locala = new a();
    locala.setUsername(paramString);
    locala.D(cj.FC());
    l.Ax().a(locala);
    this.csl.bO(500L);
  }

  public final void dp(String paramString)
  {
    this.csg.remove(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.t.c
 * JD-Core Version:    0.6.2
 */