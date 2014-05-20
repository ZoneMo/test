package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SpinnerAdapter;

final class as extends ListPopupWindow
  implements au
{
  private ListAdapter ol;
  private CharSequence pF;

  public as(ap paramap, Context paramContext, int paramInt)
  {
    super(paramContext, null, paramInt);
    setAnchorView(paramap);
    dk();
    dj();
    setOnItemClickListener(new x(paramap, new at(this, paramap)));
  }

  public final void f(CharSequence paramCharSequence)
  {
    this.pF = paramCharSequence;
  }

  public final void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    this.ol = paramListAdapter;
  }

  public final void show()
  {
    int i = this.pE.getPaddingLeft();
    if (this.pE.oq == -2)
    {
      int n = this.pE.getWidth();
      int i1 = this.pE.getPaddingRight();
      setContentWidth(Math.max(this.pE.a((SpinnerAdapter)this.ol, getBackground()), n - i - i1));
    }
    while (true)
    {
      Drawable localDrawable = getBackground();
      int j = 0;
      if (localDrawable != null)
      {
        localDrawable.getPadding(ap.a(this.pE));
        j = -ap.a(this.pE).left;
      }
      setHorizontalOffset(j + i);
      dl();
      super.show();
      getListView().setChoiceMode(1);
      setSelection(this.pE.getSelectedItemPosition());
      return;
      if (this.pE.oq == -1)
      {
        int k = this.pE.getWidth();
        int m = this.pE.getPaddingRight();
        setContentWidth(k - i - m);
      }
      else
      {
        setContentWidth(this.pE.oq);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.as
 * JD-Core Version:    0.6.2
 */