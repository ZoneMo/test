package com.tencent.mm.ui.base;

import android.view.View;
import android.view.ViewGroup.OnHierarchyChangeListener;

final class cq
  implements ViewGroup.OnHierarchyChangeListener
{
  private ViewGroup.OnHierarchyChangeListener gBB;

  private cq(MMRadioGroupView paramMMRadioGroupView)
  {
  }

  public final void onChildViewAdded(View paramView1, View paramView2)
  {
    if ((paramView1 == this.gBA) && ((paramView2 instanceof MMRadioImageButton)))
    {
      if (paramView2.getId() == -1)
      {
        int i = paramView2.hashCode();
        if (i < 0)
          i &= 2147483647;
        paramView2.setId(i);
      }
      ((MMRadioImageButton)paramView2).a(MMRadioGroupView.b(this.gBA));
    }
    if (this.gBB != null)
      this.gBB.onChildViewAdded(paramView1, paramView2);
  }

  public final void onChildViewRemoved(View paramView1, View paramView2)
  {
    if ((paramView1 == this.gBA) && ((paramView2 instanceof MMRadioImageButton)))
      ((MMRadioImageButton)paramView2).a(null);
    if (this.gBB != null)
      this.gBB.onChildViewRemoved(paramView1, paramView2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.cq
 * JD-Core Version:    0.6.2
 */