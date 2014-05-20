package com.tencent.mm.ui.tools;

import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.w.y;
import java.util.ArrayList;
import java.util.Iterator;

final class fj
  implements Runnable
{
  fj(fi paramfi, ch paramch)
  {
  }

  public final void run()
  {
    String str1 = v.th();
    String str2 = null;
    Iterator localIterator = this.hmj.hmg.aNK().iterator();
    while (localIterator.hasNext())
    {
      String str3 = (String)localIterator.next();
      aa.e("MicroMsg.ShareImageUI", "toSend, %s", new Object[] { str3 });
      y localy = new y(5, str1, str3, ShareImageUI.a(this.hmj.hmh), 0, "", str2);
      be.uA().d(localy);
      if (localy.AW() != null)
        str2 = localy.AW().ot();
    }
    this.hmi.dismiss();
    this.hmj.hmh.setResult(-1);
    this.hmj.hmh.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fj
 * JD-Core Version:    0.6.2
 */