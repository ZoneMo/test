package com.tencent.mm.ui.tools;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.br;
import com.tencent.mm.platformtools.e;
import com.tencent.mm.platformtools.f;
import java.lang.ref.WeakReference;

final class dx
  implements View.OnClickListener
{
  dx(ds paramds, f paramf, e parame)
  {
  }

  public final void onClick(View paramView)
  {
    br.uP().a(this.hlB, this.hlC);
    ds.c((Context)ds.a(this.hlD).get(), true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dx
 * JD-Core Version:    0.6.2
 */