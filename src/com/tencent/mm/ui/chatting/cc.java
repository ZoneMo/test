package com.tencent.mm.ui.chatting;

import android.widget.ListView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;

final class cc
  implements Runnable
{
  cc(bv parambv)
  {
  }

  public final void run()
  {
    int i = bv.i(this.gMs).getLastVisiblePosition();
    int j = -1 + bv.i(this.gMs).getCount();
    aa.v("MicroMsg.ChattingFooterEventImpl", "last visible/adapter=" + i + "/" + j + " " + this.gMt);
    if ((i >= j - 1) || (this.gMt))
    {
      int k = bv.o(this.gMs).getCount();
      if ((k > 1) && (((ak)bv.o(this.gMs).getItem(k - 2)).isSystem()))
      {
        int m = j - 1;
        bv.i(this.gMs).setSelectionFromTop(m, 0);
      }
    }
    else
    {
      return;
    }
    bv.i(this.gMs).setSelection(j);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.cc
 * JD-Core Version:    0.6.2
 */