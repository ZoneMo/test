package android.support.v7.internal.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

final class ag
  implements AbsListView.OnScrollListener
{
  private ag(ListPopupWindow paramListPopupWindow)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!this.oK.isInputMethodNotNeeded()) && (ListPopupWindow.b(this.oK).getContentView() != null))
    {
      ListPopupWindow.d(this.oK).removeCallbacks(ListPopupWindow.c(this.oK));
      ListPopupWindow.c(this.oK).run();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ag
 * JD-Core Version:    0.6.2
 */