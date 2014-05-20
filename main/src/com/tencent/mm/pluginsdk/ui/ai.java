package com.tencent.mm.pluginsdk.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.ao.c;
import com.tencent.mm.storage.y;

final class ai
  implements AdapterView.OnItemClickListener
{
  ai(SmileyGrid paramSmileyGrid)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (SmileyGrid.a(this.flM))
    {
    case 21:
    case 22:
    case 24:
    default:
    case 23:
    case 25:
    case 20:
    }
    do
    {
      return;
      if ((SmileyGrid.a(this.flM) == 25) && (paramInt == 0) && (this.flM.dJC == 0))
      {
        SmileyGrid.b(this.flM);
        return;
      }
      y localy = (y)this.flM.fly.getItem(paramInt);
      SmileyGrid.a(this.flM, localy);
      return;
      if (paramInt == -1 + this.flM.fly.getCount())
      {
        SmileyGrid.c(this.flM).ahQ();
        return;
      }
    }
    while (paramInt + this.flM.dJC * (-1 + this.flM.flC) >= SmileyGrid.d(this.flM));
    int i = paramInt + this.flM.dJC * (-1 + this.flM.flC);
    if (SmileyGrid.e(this.flM))
    {
      SmileyGrid.c(this.flM).append(c.x(this.flM.getContext(), i));
      return;
    }
    SmileyGrid.c(this.flM).append(c.w(this.flM.getContext(), i));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ai
 * JD-Core Version:    0.6.2
 */