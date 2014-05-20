package com.google.android.gms.internal;

import android.content.Context;
import android.widget.CompoundButton;

final class br extends CompoundButton
{
  public br(el paramel, Context paramContext)
  {
    super(paramContext);
  }

  public final void toggle()
  {
    if (this.Nx.Ni)
    {
      super.toggle();
      return;
    }
    this.Nx.Ni = true;
    this.Nx.iY();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.br
 * JD-Core Version:    0.6.2
 */