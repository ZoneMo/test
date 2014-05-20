package com.tencent.mm.ui.bindqq;

import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.bc;
import com.tencent.mm.ui.bd;

final class q
  implements bd
{
  q(QQGroupUI paramQQGroupUI)
  {
  }

  public final void FW()
  {
    if (cj.c((Integer)be.uz().sr().get(9)) != 0);
    for (int i = 1; i == 0; i = 0)
    {
      QQGroupUI.a(this.gJB).setVisibility(0);
      QQGroupUI.b(this.gJB).setVisibility(8);
      QQGroupUI.c(this.gJB).setVisibility(8);
      return;
    }
    if (QQGroupUI.d(this.gJB).getCount() <= 0)
    {
      QQGroupUI.b(this.gJB).setVisibility(8);
      QQGroupUI.c(this.gJB).setVisibility(0);
      QQGroupUI.a(this.gJB).setVisibility(8);
      return;
    }
    QQGroupUI.b(this.gJB).setVisibility(0);
    QQGroupUI.c(this.gJB).setVisibility(8);
    QQGroupUI.a(this.gJB).setVisibility(8);
  }

  public final void FX()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.q
 * JD-Core Version:    0.6.2
 */