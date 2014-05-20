package com.tencent.mm.ui.contact;

import android.widget.EditText;
import com.tencent.mm.ui.widget.b;

final class cu
  implements b
{
  cu(ModRemarkNameUI paramModRemarkNameUI)
  {
  }

  public final void Zv()
  {
    if (ModRemarkNameUI.a(this.gUz).getText().toString().trim().length() > 0)
      this.gUz.dg(true);
    while (ModRemarkNameUI.b(this.gUz) == 0)
      return;
    this.gUz.dg(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cu
 * JD-Core Version:    0.6.2
 */