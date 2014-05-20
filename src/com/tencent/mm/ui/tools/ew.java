package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.z;
import android.view.View;
import com.tencent.mm.i;
import com.tencent.mm.sdk.platformtools.aa;

final class ew
  implements Runnable
{
  ew(eo parameo, FragmentActivity paramFragmentActivity)
  {
  }

  public final void run()
  {
    if (eo.e(this.hlX) == null)
      aa.w(eo.b(this.hlX), "on post expand search menu, but item is null");
    View localView;
    do
    {
      return;
      aa.v(eo.b(this.hlX), "try to expand action view");
      z.f(eo.e(this.hlX));
      localView = z.e(eo.e(this.hlX));
    }
    while ((localView == null) || (!eo.a(this.hlX)));
    localView.findViewById(i.arK).requestFocus();
    eo.d(this.hlX).postDelayed(new ex(this, localView), 128L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ew
 * JD-Core Version:    0.6.2
 */