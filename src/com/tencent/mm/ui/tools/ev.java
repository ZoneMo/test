package com.tencent.mm.ui.tools;

import android.os.IBinder;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.z;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.tencent.mm.i;
import com.tencent.mm.sdk.platformtools.aa;

final class ev
  implements Runnable
{
  ev(er paramer)
  {
  }

  public final void run()
  {
    if (eo.e(this.hlZ.hlX) == null)
    {
      aa.w(eo.b(this.hlZ.hlX), "want to collapse search view, but search menu item is null");
      return;
    }
    if ((this.hlZ.hlY != null) && (!this.hlZ.hlY.isFinishing()))
    {
      FragmentActivity localFragmentActivity = this.hlZ.hlY;
      InputMethodManager localInputMethodManager = (InputMethodManager)localFragmentActivity.getSystemService("input_method");
      if (localInputMethodManager != null)
      {
        View localView2 = localFragmentActivity.getCurrentFocus();
        if (localView2 != null)
        {
          IBinder localIBinder = localView2.getWindowToken();
          if (localIBinder != null)
            localInputMethodManager.hideSoftInputFromWindow(localIBinder, 0);
        }
      }
    }
    View localView1 = z.e(eo.e(this.hlZ.hlX));
    if (localView1 != null)
      localView1.findViewById(i.arK).clearFocus();
    eo.f(this.hlZ.hlX);
    this.hlZ.hlX.hgH = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ev
 * JD-Core Version:    0.6.2
 */