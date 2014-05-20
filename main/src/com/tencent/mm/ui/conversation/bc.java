package com.tencent.mm.ui.conversation;

import android.widget.ListView;
import com.tencent.mm.platformtools.d;
import com.tencent.mm.sdk.platformtools.aa;

final class bc
  implements Runnable
{
  bc(bb parambb)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis();
    int i;
    int j;
    label72: bb localbb;
    if ((l - bb.a(this.gZP) < 3000L) && (bb.b(this.gZP) >= 0))
    {
      i = bb.b(this.gZP);
      j = MainUI.b(this.gZP.gZI).nN(i);
      if (j >= 0)
        break label195;
      d.a(MainUI.m(this.gZP.gZI));
      bb.a(this.gZP, l);
      localbb = this.gZP;
      if (j >= 0)
        break label227;
    }
    label195: label227: for (int k = 0; ; k = j)
    {
      bb.a(localbb, k);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(MainUI.m(this.gZP.gZI).getHeaderViewsCount());
      arrayOfObject[1] = Integer.valueOf(i);
      arrayOfObject[2] = Integer.valueOf(j);
      aa.e("MicroMsg.MainUI", "headerCount %d, scroll from %d to %d", arrayOfObject);
      return;
      i = 1 + (MainUI.m(this.gZP.gZI).getFirstVisiblePosition() - MainUI.m(this.gZP.gZI).getHeaderViewsCount());
      if (i >= 0)
        break;
      i = 0;
      break;
      d.a(MainUI.m(this.gZP.gZI), j + MainUI.m(this.gZP.gZI).getHeaderViewsCount());
      break label72;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.bc
 * JD-Core Version:    0.6.2
 */