package com.tencent.mm.ui.chatting;

import android.content.Context;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import java.util.Iterator;
import java.util.List;

final class bt
  implements bw
{
  private String cnW;
  private Context context;
  private boolean gJU;
  private List gMg;

  public bt(Context paramContext, List paramList, boolean paramBoolean, String paramString)
  {
    this.context = paramContext;
    this.gMg = paramList;
    this.gJU = paramBoolean;
    this.cnW = paramString;
  }

  public final boolean ve()
  {
    Iterator localIterator = this.gMg.iterator();
    while (localIterator.hasNext())
    {
      ak localak = (ak)localIterator.next();
      bm.a(this.context, localak, this.gJU, this.cnW);
    }
    return true;
  }

  public final boolean vf()
  {
    if (bm.aJa() != null)
      bm.aJa().dismiss();
    h.an(this.context, this.context.getString(2131165732));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bt
 * JD-Core Version:    0.6.2
 */