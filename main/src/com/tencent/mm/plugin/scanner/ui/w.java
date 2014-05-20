package com.tencent.mm.plugin.scanner.ui;

import com.tencent.mm.ui.base.preference.n;
import java.util.HashMap;

final class w
  implements t
{
  w(ProductUI paramProductUI)
  {
  }

  public final void aan()
  {
    if (this.ede.cIG != null)
      this.ede.cIG.notifyDataSetChanged();
  }

  public final void b(String paramString, Boolean paramBoolean)
  {
    if ((paramString != null) && (paramString.length() > 0))
      ProductUI.a(this.ede).put(paramString, paramBoolean);
  }

  public final Boolean mA(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      return (Boolean)ProductUI.a(this.ede).get(paramString);
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.w
 * JD-Core Version:    0.6.2
 */