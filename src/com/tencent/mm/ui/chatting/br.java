package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.view.MenuItem;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;
import java.util.List;

final class br
  implements cd
{
  br(Context paramContext, List paramList, boolean paramBoolean)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    Context localContext = this.cGV;
    this.cGV.getString(2131167675);
    bm.a(h.a(localContext, this.cGV.getString(2131165710), false, null));
    fn.gOp.c(new bt(this.cGV, this.gMd, this.gMf, paramMenuItem.getTitle()));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.br
 * JD-Core Version:    0.6.2
 */