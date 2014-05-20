package com.tencent.mm.booter;

import android.content.Context;
import android.widget.Toast;
import com.tencent.mm.model.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.Iterator;
import java.util.List;

final class t
  implements Runnable
{
  t(k paramk)
  {
  }

  public final void run()
  {
    k.d(this.bZX).azn();
    Iterator localIterator = k.c(this.bZX).iterator();
    while (localIterator.hasNext())
    {
      am localam = (am)localIterator.next();
      if (localam != null)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localam.toString();
        aa.b("MicroMsg.DownloadPlayer", "on error call back: %s", arrayOfObject);
        localam.pB();
      }
    }
    Toast.makeText(al.getContext(), al.getContext().getString(2131165619), 1).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.t
 * JD-Core Version:    0.6.2
 */