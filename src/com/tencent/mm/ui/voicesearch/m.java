package com.tencent.mm.ui.voicesearch;

import com.tencent.mm.m.af;
import com.tencent.mm.model.w;
import com.tencent.mm.modelsimple.aj;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.sh;
import com.tencent.mm.protocal.a.sj;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class m
  implements Runnable
{
  m(j paramj, x paramx)
  {
  }

  public final void run()
  {
    sj localsj = ((aj)this.cmw).CB();
    aa.d("MicroMsg.SearchResultAdapter", "count " + localsj.fKH);
    if (localsj.fKH > 0)
    {
      Iterator localIterator = localsj.fKI.iterator();
      while (localIterator.hasNext())
      {
        sh localsh2 = (sh)localIterator.next();
        if (w.cm(localsh2.fNp))
        {
          if (j.f(this.htK) == null)
            j.a(this.htK, new LinkedList());
          j.f(this.htK).add(localsh2);
        }
      }
    }
    String str = an.a(localsj.fEI);
    aa.d("MicroMsg.SearchResultAdapter", "user " + str);
    if (cj.hW(str).length() > 0)
    {
      sh localsh1 = new sh();
      localsh1.fEI = localsj.fEI;
      localsh1.fNp = localsj.fNp;
      localsh1.cqr = localsj.cqr;
      localsh1.fNa = localsj.fNa;
      localsh1.cqt = localsj.cqt;
      localsh1.cqx = localsj.cqx;
      localsh1.Tv = localsj.Tv;
      localsh1.Tu = localsj.Tu;
      localsh1.cqq = localsj.cqq;
      localsh1.fNq = localsj.fNq;
      localsh1.fNt = localsj.fNt;
      localsh1.fNr = localsj.fNr;
      localsh1.fNs = localsj.fNs;
      localsh1.fNv = localsj.fNv;
      af.vJ().c(str, an.a(localsj.fzx));
      if (j.f(this.htK) == null)
        j.a(this.htK, new LinkedList());
      j.f(this.htK).clear();
      if (w.cm(localsh1.fNp))
        j.f(this.htK).add(localsh1);
      aa.d("MicroMsg.SearchResultAdapter", "count " + j.f(this.htK).size());
    }
    j.b(this.htK, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.m
 * JD-Core Version:    0.6.2
 */