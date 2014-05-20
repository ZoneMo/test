package android.support.v7.internal.widget;

import android.view.View;
import android.widget.ListAdapter;

final class at
  implements w
{
  at(as paramas, ap paramap)
  {
  }

  public final void h(View paramView, int paramInt)
  {
    this.pH.pE.setSelection(paramInt);
    if (this.pH.pE.nO != null)
    {
      ap localap = this.pH.pE;
      as.a(this.pH).getItemId(paramInt);
      localap.g(paramView, paramInt);
    }
    this.pH.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.at
 * JD-Core Version:    0.6.2
 */