package com.tencent.mm.model;

import android.database.Cursor;
import com.tencent.mm.n.f;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.k;
import java.util.Iterator;
import java.util.List;

final class bj
  implements o
{
  bj(be parambe, an paraman)
  {
  }

  public final void a(b paramb, boolean paramBoolean)
  {
    be.f(this.ciN);
    be.e(this.ciN).N(paramBoolean);
    long l = be.uz().sp().ca(Thread.currentThread().getId());
    be.c(this.ciN).sw().vn("qqmail");
    Cursor localCursor = be.uz().sw().ve("@t.qq.com");
    if (localCursor != null)
    {
      if (localCursor.moveToFirst())
        while (!localCursor.isAfterLast())
        {
          ak localak = new ak();
          localak.convertFrom(localCursor);
          if (!be.uz().sw().af(localak.aCl(), localak.AH()))
            be.uz().sw().v(localak);
          localCursor.moveToNext();
        }
      localCursor.close();
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    aa.e("MicroMsg.MMCore", "dkwt set forceManual :%b", arrayOfObject);
    if (paramBoolean)
    {
      paramb.su().tU("readerapp");
      paramb.sr().set(256, Boolean.valueOf(true));
      Iterator localIterator = w.tS().iterator();
      while (localIterator.hasNext())
      {
        com.tencent.mm.storage.i locali2 = (com.tencent.mm.storage.i)localIterator.next();
        if ((locali2 != null) && (locali2.rj() != 0) && (locali2.rl() == 32))
        {
          locali2.bM(locali2.qF());
          aa.d("MicroMsg.HardCodeUpdateTask", "contact to updatefavour " + locali2.getUsername());
          be.uz().su().a(locali2.getUsername(), locali2);
        }
      }
      for (String str : w.chR)
      {
        com.tencent.mm.storage.i locali1 = paramb.su().tO(str);
        if ((locali1 != null) && ((locali1.rj() != 0) || (locali1.rb())))
        {
          locali1.qP();
          paramb.su().a(str, locali1);
        }
      }
      ag.d(paramb);
      ag.c(paramb);
      ce.dC("ver" + a.fxr);
    }
    new af(be.c(this.ciN), this.ciP).O(paramBoolean);
    be.uz().sp().cb(l);
    be.c(this.ciN).sx().a(be.g(be.uK()).nR());
  }

  public final void b(b paramb)
  {
    be.e(this.ciN).b(paramb);
  }

  public final void td()
  {
    be.b(this.ciN);
    f.a(be.c(this.ciN), be.d(this.ciN));
    be.e(this.ciN).vE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.bj
 * JD-Core Version:    0.6.2
 */