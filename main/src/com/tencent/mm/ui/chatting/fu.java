package com.tencent.mm.ui.chatting;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.tools.ez;

final class fu
  implements ez
{
  fu(fn paramfn)
  {
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
    aa.v("MicroMsg.ChattingMoreBtnBarHelper", "onQuitSearch");
    if (fn.a(this.gOz).isInEditMode())
    {
      fn.b(this.gOz).aJD();
      fn.d(this.gOz).setVisibility(0);
      fn.d(this.gOz).ny(fn.a(this.gOz).XS());
    }
  }

  public final void FV()
  {
    aa.v("MicroMsg.ChattingMoreBtnBarHelper", "onEnterSearch");
    if (fn.a(this.gOz).isInEditMode())
    {
      fn.b(this.gOz).aJC();
      fn.d(this.gOz).setVisibility(8);
    }
  }

  public final void ig(String paramString)
  {
    aa.v("MicroMsg.ChattingMoreBtnBarHelper", "on edit change");
    if (cj.hX(paramString))
      if (fn.b(this.gOz).aJE())
      {
        if (fn.h(this.gOz) != null)
          fn.h(this.gOz).ih("");
        fn.b(this.gOz).nC(-1);
      }
    do
    {
      return;
      if (fn.i(this.gOz))
      {
        fn.b(this.gOz).aJD();
        fn.d(this.gOz).setVisibility(0);
        fn.d(this.gOz).ny(fn.a(this.gOz).XS());
        return;
      }
      fn.b(this.gOz).aJD();
      fn.d(this.gOz).setVisibility(8);
      return;
      aa.v("MicroMsg.ChattingMoreBtnBarHelper", "enter search mode");
      fn.d(this.gOz).setVisibility(8);
      fn.b(this.gOz).aJC();
    }
    while (fn.h(this.gOz) == null);
    fn.h(this.gOz).ih(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fu
 * JD-Core Version:    0.6.2
 */