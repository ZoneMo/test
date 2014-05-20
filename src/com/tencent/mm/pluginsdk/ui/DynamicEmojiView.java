package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.y;

public class DynamicEmojiView extends FrameLayout
  implements o
{
  private View dey;
  private EmojiView fkl;
  private ProgressBar fkm;
  private boolean fkn;
  private j fko = j.fkq;

  public DynamicEmojiView(Context paramContext)
  {
    super(paramContext);
    arc();
  }

  public DynamicEmojiView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    arc();
  }

  private void arc()
  {
    this.dey = inflate(getContext(), k.aTv, null);
    this.fkl = ((EmojiView)this.dey.findViewById(i.awm));
    this.fkl.a(this);
    this.fkm = ((ProgressBar)this.dey.findViewById(i.ayn));
    addView(this.dey, -1, -1);
  }

  private boolean are()
  {
    return (this.fkn) && (arf());
  }

  private boolean arf()
  {
    return (this.dey != null) && (this.fkl != null) && (this.fkm != null);
  }

  public final boolean a(j paramj)
  {
    boolean bool2;
    j localj;
    do
    {
      try
      {
        boolean bool1 = are();
        bool2 = false;
        if (!bool1);
        while (true)
        {
          return bool2;
          if ((paramj != j.fks) || (this.fkl.arn() == null) || (!this.fkl.arn().aBA()))
            break;
          a(j.fkt);
          bool2 = false;
        }
      }
      finally
      {
      }
      localj = this.fko;
      bool2 = false;
    }
    while (localj == paramj);
    switch (i.fkp[paramj.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      this.fko = paramj;
      bool2 = true;
      break;
      this.fkm.setVisibility(0);
      this.fkl.setVisibility(8);
      aa.v("MicroMsg.DynamicEmojiView", "switch emoji view -> none");
      continue;
      aa.v("MicroMsg.DynamicEmojiView", "switch emoji view -> decoding");
      this.fkm.setVisibility(0);
      this.fkl.setVisibility(8);
      continue;
      aa.v("MicroMsg.DynamicEmojiView", "switch emoji view -> downloading");
      this.fkm.setVisibility(0);
      this.fkl.setVisibility(8);
      continue;
      aa.v("MicroMsg.DynamicEmojiView", "switch emoji view -> running");
      this.fkm.setVisibility(8);
      this.fkl.setVisibility(0);
    }
  }

  public final void ard()
  {
    this.fkn = true;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(true);
    aa.e("MicroMsg.DynamicEmojiView", "use State UI: %B", arrayOfObject);
    arf();
    this.fkl.a(this);
  }

  public final boolean g(y paramy)
  {
    if ((paramy == null) || (!are()));
    do
    {
      return true;
      aa.d("MicroMsg.DynamicEmojiView", "call back decoding ");
    }
    while (!a(j.fks));
    return false;
  }

  public final void h(y paramy)
  {
    if ((paramy != null) && (are()))
      if (this.fko != j.fkt)
        break label28;
    label28: for (int i = 1; i != 0; i = 0)
      return;
    aa.d("MicroMsg.DynamicEmojiView", "call back running ");
    a(j.fkt);
  }

  public final void i(y paramy)
  {
    if ((!arf()) || (paramy == null))
      return;
    if (are())
    {
      aa.d("MicroMsg.DynamicEmojiView", "reset dynamic emoji view");
      a(j.fkq);
    }
    this.fkl.i(paramy);
  }

  public final void refresh()
  {
    if (!arf())
      return;
    this.fkl.refresh();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.DynamicEmojiView
 * JD-Core Version:    0.6.2
 */