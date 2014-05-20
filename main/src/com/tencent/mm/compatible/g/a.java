package com.tencent.mm.compatible.g;

import android.content.Context;

public final class a
{
  private d cfw = null;
  private Context mContext = null;

  public a(Context paramContext)
  {
    this.mContext = paramContext;
    com.tencent.mm.compatible.a.a.a(8, new b(this));
  }

  public final void a(c paramc)
  {
    if (this.cfw != null)
      this.cfw.a(paramc);
  }

  public final boolean qc()
  {
    if (this.cfw == null)
      return false;
    return this.cfw.qc();
  }

  public final boolean requestFocus()
  {
    if (this.cfw == null)
      return false;
    return this.cfw.requestFocus();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.a
 * JD-Core Version:    0.6.2
 */