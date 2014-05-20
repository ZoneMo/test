package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.MenuItem;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.cb;

final class bp
  implements cb
{
  bp(Context paramContext)
  {
  }

  public final void a(TextView paramTextView, MenuItem paramMenuItem)
  {
    i locali;
    if (paramTextView != null)
    {
      locali = be.uz().su().tO(paramMenuItem.getTitle());
      if ((locali == null) || (locali.rj() <= 0))
        paramTextView.setText(paramMenuItem.getTitle());
    }
    else
    {
      return;
    }
    paramTextView.setText(com.tencent.mm.ao.b.e(this.cGV, locali.rq(), (int)paramTextView.getTextSize()));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bp
 * JD-Core Version:    0.6.2
 */