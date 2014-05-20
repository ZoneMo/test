package com.tencent.mm.ui.bindqq;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.x;

final class z
  implements View.OnClickListener
{
  z(StartUnbindQQ paramStartUnbindQQ)
  {
  }

  public final void onClick(View paramView)
  {
    if (StartUnbindQQ.a(this.gJG) == null)
    {
      StartUnbindQQ.a(this.gJG, h.a(this.gJG, null, StartUnbindQQ.b(this.gJG), new aa(this), new ab(this)));
      return;
    }
    StartUnbindQQ.a(this.gJG).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.z
 * JD-Core Version:    0.6.2
 */