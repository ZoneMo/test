package com.tencent.mm.pluginsdk.ui.preference;

import android.content.Context;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

final class k
  implements View.OnLongClickListener
{
  k(FMessageListView paramFMessageListView, n paramn)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    aa.d("MicroMsg.FMessageListView", "jacks long click digest");
    Context localContext = this.frE.getContext();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.frE.getContext().getString(com.tencent.mm.n.bgH);
    h.a(localContext, null, arrayOfString, null, new l(this));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.preference.k
 * JD-Core Version:    0.6.2
 */