package com.tencent.mm.plugin.safedevice.ui;

import android.widget.EditText;
import com.tencent.mm.ui.widget.b;

final class f
  implements b
{
  f(ModSafeDeviceNameUI paramModSafeDeviceNameUI)
  {
  }

  public final void Zv()
  {
    if (ModSafeDeviceNameUI.a(this.eae).getText().toString().trim().length() > 0)
    {
      this.eae.dg(true);
      return;
    }
    this.eae.dg(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.f
 * JD-Core Version:    0.6.2
 */