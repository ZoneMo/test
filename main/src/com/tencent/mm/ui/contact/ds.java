package com.tencent.mm.ui.contact;

import android.view.View;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.ez;

final class ds
  implements ez
{
  ds(SelectContactUI paramSelectContactUI)
  {
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
    ig("");
  }

  public final void FV()
  {
  }

  public final void ig(String paramString)
  {
    boolean bool = true;
    Object[] arrayOfObject = new Object[bool];
    arrayOfObject[0] = paramString;
    aa.e("MicroMsg.SelectContactUI", "onSearchBarChange  %s", arrayOfObject);
    String str = au.hR(paramString);
    SelectContactUI.a(this.gVn, bool);
    SelectContactUI.c(this.gVn);
    db localdb = SelectContactUI.b(this.gVn);
    if (!au.hX(paramString));
    while (true)
    {
      localdb.dP(bool);
      if ((SelectContactUI.d(this.gVn)) && (SelectContactUI.e(this.gVn) != null))
      {
        View localView = SelectContactUI.e(this.gVn).findViewById(2131362847);
        if (localView != null)
          localView.setVisibility(8);
      }
      SelectContactUI.a(this.gVn, str);
      return;
      bool = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ds
 * JD-Core Version:    0.6.2
 */