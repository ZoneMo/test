package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.View.OnClickListener;
import java.util.ArrayList;
import java.util.List;

final class dn
  implements View.OnClickListener
{
  dn(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onClick(View paramView)
  {
    ArrayList localArrayList = SelectContactUI.b(this.gVn).aKT();
    if (SelectContactUI.m(this.gVn))
      SelectContactUI.a(this.gVn, SelectContactUI.n(this.gVn), localArrayList);
    do
    {
      do
      {
        return;
        if (SelectContactUI.o(this.gVn))
        {
          SendContactCardUI.a(this.gVn.aal(), SelectContactUI.p(this.gVn), localArrayList);
          return;
        }
      }
      while ((localArrayList == null) || (localArrayList.size() == 0));
      if (localArrayList.size() == 1)
      {
        SelectContactUI.c(this.gVn, (String)localArrayList.get(0));
        return;
      }
    }
    while (SelectContactUI.q(this.gVn));
    SelectContactUI.b(this.gVn, true);
    SelectContactUI.r(this.gVn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dn
 * JD-Core Version:    0.6.2
 */