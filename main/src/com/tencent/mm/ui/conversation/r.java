package com.tencent.mm.ui.conversation;

import android.content.Context;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.bd;

final class r extends s
{
  public r(Context paramContext, bd parambd)
  {
    super(paramContext, parambd);
  }

  public final void FZ()
  {
    setCursor(be.uz().sx().b(w.chM, this.cKz, "officialaccounts"));
    if (this.gmO != null)
      this.gmO.FW();
    super.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.r
 * JD-Core Version:    0.6.2
 */