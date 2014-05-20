package com.tencent.mm.ui.contact;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.ui.tools.eo;

final class ej
  implements AdapterView.OnItemClickListener
{
  ej(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (SelectContactUI.b(this.gVn, paramInt))
      SelectContactUI.h(this.gVn).aNE();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ej
 * JD-Core Version:    0.6.2
 */