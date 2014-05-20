package com.tencent.mm.ui.base;

import android.util.SparseIntArray;
import android.view.View;
import android.view.View.OnClickListener;

final class ap
  implements View.OnClickListener
{
  ap(MMCollapsibleTextView paramMMCollapsibleTextView)
  {
  }

  public final void onClick(View paramView)
  {
    switch (MMCollapsibleTextView.b(this.gzm).get(MMCollapsibleTextView.a(this.gzm), -1))
    {
    default:
      return;
    case 1:
      MMCollapsibleTextView.b(this.gzm).put(MMCollapsibleTextView.a(this.gzm), 2);
    case 2:
    }
    while (true)
    {
      MMCollapsibleTextView.c(this.gzm);
      return;
      MMCollapsibleTextView.b(this.gzm).put(MMCollapsibleTextView.a(this.gzm), 1);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ap
 * JD-Core Version:    0.6.2
 */