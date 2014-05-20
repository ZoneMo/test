package com.tencent.mm.t;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.as.d;
import com.tencent.mm.model.au;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.il;
import com.tencent.mm.protocal.a.ob;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.z.n;
import java.util.LinkedList;
import java.util.Map;

final class i
  implements az
{
  private int csh = 0;

  i(c paramc, com.tencent.mm.n.a parama)
  {
  }

  public final boolean ok()
  {
    if (this.csw == null)
    {
      aa.e("MicroMsg.GetContactService", "MMReqRespGetContact is null");
      return false;
    }
    this.csw.wr();
    il localil = (il)this.csw.ws();
    LinkedList localLinkedList1 = localil.fKI;
    LinkedList localLinkedList2 = localil.fKJ;
    if (this.csh == 0)
    {
      long l = be.uz().sp().ca(Thread.currentThread().getId());
      for (int j = 0; j < localLinkedList1.size(); j++)
      {
        ob localob2 = (ob)localLinkedList1.get(j);
        l.Ax().fN(an.a(localob2.fEI));
        l.Ax().fN(localob2.cqt);
      }
      be.uz().sp().cb(l);
    }
    if (this.csh >= localLinkedList1.size())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(this.csh);
      arrayOfObject[1] = Integer.valueOf(localLinkedList1.size());
      aa.e("MicroMsg.GetContactService", "resp proc fin respIndex:%d size:%d", arrayOfObject);
      return false;
    }
    ob localob1 = (ob)localLinkedList1.get(this.csh);
    int i = ((Integer)localLinkedList2.get(this.csh)).intValue();
    String str1 = an.a(localob1.fEI);
    String str2 = localob1.cqt;
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(str1);
    localStringBuffer.append(";");
    localStringBuffer.append(i);
    be.uz().sT().a(new d(2001, localStringBuffer.toString()));
    boolean bool;
    au localau1;
    switch (i)
    {
    default:
      aa.e("MicroMsg.GetContactService", "onSceneEnd getFailed ErrName: %s %s", new Object[] { str1, str2 });
      r.cc(str1);
      bool = false;
      localau1 = (au)c.g(this.csv).remove(str1);
      if (!cj.hX(str2))
        break;
    case 0:
    case 1:
    }
    for (au localau2 = null; ; localau2 = (au)c.g(this.csv).remove(str2))
    {
      if ((localau1 != null) || (localau2 != null))
        new Handler(Looper.getMainLooper()).post(new j(this, localau1, str1, bool, localau2, str2));
      this.csh = (1 + this.csh);
      return true;
      aa.e("MicroMsg.GetContactService", "onSceneEnd mod contact: %s %s", new Object[] { str1, str2 });
      n.a(localob1);
      l.Ax().fN(str1);
      l.Ax().fN(str2);
      bool = true;
      break;
      aa.e("MicroMsg.GetContactService", "onSceneEnd getFailed ErrName: %s %s", new Object[] { str1, str2 });
      l.Ax().fN(str1);
      l.Ax().fN(str2);
      r.cc(str1);
      bool = false;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.t.i
 * JD-Core Version:    0.6.2
 */