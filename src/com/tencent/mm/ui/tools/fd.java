package com.tencent.mm.ui.tools;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.aa;

final class fd
  implements View.OnClickListener
{
  fd(SearchViewNotRealTimeHelper paramSearchViewNotRealTimeHelper)
  {
  }

  public final void onClick(View paramView)
  {
    aa.v("MicroMsg.SearchViewNotRealTimeHelper", "home btn click");
    if (SearchViewNotRealTimeHelper.c(this.hme) != null)
      SearchViewNotRealTimeHelper.c(this.hme).JW();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fd
 * JD-Core Version:    0.6.2
 */