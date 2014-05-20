package com.tencent.mm.ui.contact;

import android.app.ProgressDialog;
import com.tencent.mm.model.ca;

final class ea
  implements ca
{
  ea(SelectContactUI paramSelectContactUI)
  {
  }

  public final void uW()
  {
    if (SelectContactUI.C(this.gVn) != null)
    {
      SelectContactUI.C(this.gVn).dismiss();
      SelectContactUI.D(this.gVn);
    }
  }

  public final boolean uX()
  {
    return SelectContactUI.B(this.gVn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ea
 * JD-Core Version:    0.6.2
 */