package com.tencent.mm.ui.transmit;

import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.w.y;
import java.util.ArrayList;
import java.util.Iterator;

final class r
  implements Runnable
{
  r(MulSelectConversationUI paramMulSelectConversationUI, ArrayList paramArrayList, ch paramch)
  {
  }

  public final void run()
  {
    String str1 = v.th();
    String str2 = null;
    Iterator localIterator = this.hrK.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      String str3 = (String)localIterator.next();
      aa.e("MicroMsg.MulSelectConversationUI", "toSend, %s", new Object[] { str3 });
      if (w.cp(str3));
      for (int j = 1; ; j = 0)
      {
        int k = i + j;
        y localy = new y(5, str1, str3, MulSelectConversationUI.a(this.hrJ), 0, "", str2);
        be.uA().d(localy);
        if (localy.AW() != null)
          str2 = localy.AW().ot();
        i = k;
        break;
      }
    }
    this.hmi.dismiss();
    Intent localIntent = new Intent();
    localIntent.putStringArrayListExtra("Select_Contact", this.hrK);
    this.hrJ.setResult(-1, localIntent);
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(1);
    arrayOfObject[1] = Integer.valueOf(this.hrK.size() - i);
    arrayOfObject[2] = Integer.valueOf(i);
    localm.d(11048, arrayOfObject);
    this.hrJ.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.r
 * JD-Core Version:    0.6.2
 */