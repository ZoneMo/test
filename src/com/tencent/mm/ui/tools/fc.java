package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class fc
  implements View.OnClickListener
{
  fc(SearchViewNotRealTimeHelper paramSearchViewNotRealTimeHelper)
  {
  }

  public final void onClick(View paramView)
  {
    SearchViewNotRealTimeHelper.d(this.hme).setText("");
    if (SearchViewNotRealTimeHelper.c(this.hme) != null)
      SearchViewNotRealTimeHelper.c(this.hme).JV();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fc
 * JD-Core Version:    0.6.2
 */