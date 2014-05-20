package com.tencent.mm.ui;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.sdk.platformtools.aa;

final class bn
  implements ba
{
  bn(MMActivity paramMMActivity, LayoutListenerView paramLayoutListenerView)
  {
  }

  public final void aEI()
  {
    int[] arrayOfInt = new int[2];
    this.gnD.getLocationOnScreen(arrayOfInt);
    if (MMActivity.aFh() == arrayOfInt[1])
      return;
    MMActivity.mH(arrayOfInt[1]);
    if (MMActivity.aFi() == 0)
    {
      MMActivity.mI(MMActivity.aFh());
      aa.v("MicroMsg.MMActivity", "yy onLayout baseTop:" + MMActivity.aFi());
    }
    aa.v("MicroMsg.MMActivity", "yy onLayout top:" + (MMActivity.aFh() - MMActivity.aFi()));
    MMActivity.g(this.gnB).putExtra("top", MMActivity.aFh() - MMActivity.aFi());
    this.gnB.aal().sendBroadcast(MMActivity.g(this.gnB), "com.tencent.mm.permission.MM_MESSAGE");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bn
 * JD-Core Version:    0.6.2
 */