package com.tencent.mm.z;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.protocal.a.cx;
import com.tencent.mm.protocal.a.cy;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.protocal.a.pe;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.protocal.as;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.storage.e;
import java.util.ArrayList;
import java.util.LinkedList;

final class v
  implements az
{
  int cvA = this.cvB.cvy;

  v(u paramu)
  {
  }

  public final boolean ok()
  {
    if (this.cvA <= 0)
      return false;
    this.cvA = (-1 + this.cvA);
    as localas = new as();
    localas.fyt.fIy = new cy();
    int i = au.R(this.cvB.cvz, 1);
    int j = 0;
    while (true)
      if (j < i)
      {
        l locall = (l)t.BA().get(au.R(-1 + t.BA().size(), 0));
        locall.fzs = new rw().sn(((com.tencent.mm.storage.i)t.Bz().get(au.R(-1 + t.Bz().size(), 0))).getUsername());
        locall.fzy = ((int)au.FC());
        locall.fzo = Math.abs((int)au.FD() % 10000000);
        try
        {
          cx localcx = new cx();
          localcx.fEa = new rv();
          localcx.fEa.bM(locall.toByteArray());
          localcx.fDZ = 5;
          localas.fyt.fIy.fAD.add(localcx);
          cy localcy = localas.fyt.fIy;
          localcy.fAC = (1 + localcy.fAC);
          Object[] arrayOfObject = new Object[6];
          arrayOfObject[0] = Integer.valueOf(this.cvA);
          arrayOfObject[1] = Integer.valueOf(j);
          arrayOfObject[2] = Integer.valueOf(i);
          arrayOfObject[3] = Integer.valueOf(localas.fyt.fIy.fAD.size());
          arrayOfObject[4] = Integer.valueOf(locall.fzo);
          arrayOfObject[5] = locall.fzs.getString();
          aa.e("MicroMsg.TestSyncAddMsg", "syncAddMsg  loop:%d cnt:[%d,%d] cmdList:%d id:%d u:%s", arrayOfObject);
          j++;
        }
        catch (Exception localException)
        {
          while (true)
            aa.d("MicroMsg.TestSyncAddMsg", localException.getMessage());
        }
      }
    localas.fyt.fIz = 0;
    localas.fyt.fIx = an.y(au.ib(au.hW((String)be.uz().sr().get(8195, new byte[0]))));
    localas.fyt.fAY = 0;
    localas.fyt.fzr = 0;
    be.uA().d(new i(localas, 0, au.FC()));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.z.v
 * JD-Core Version:    0.6.2
 */