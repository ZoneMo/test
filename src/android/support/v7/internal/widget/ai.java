package android.support.v7.internal.widget;

import android.widget.PopupWindow;

final class ai
  implements Runnable
{
  private ai(ListPopupWindow paramListPopupWindow)
  {
  }

  public final void run()
  {
    if ((ListPopupWindow.a(this.oK) != null) && (ListPopupWindow.a(this.oK).getCount() > ListPopupWindow.a(this.oK).getChildCount()) && (ListPopupWindow.a(this.oK).getChildCount() <= this.oK.ox))
    {
      ListPopupWindow.b(this.oK).setInputMethodMode(2);
      this.oK.show();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ai
 * JD-Core Version:    0.6.2
 */