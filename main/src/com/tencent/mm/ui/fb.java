package com.tencent.mm.ui;

import android.content.Context;
import android.media.AudioManager;
import com.tencent.mm.sdk.platformtools.al;

public final class fb
{
  private static fb gpp;
  private AudioManager cbj;

  public static fb aFD()
  {
    if (gpp == null)
      gpp = new fb();
    return gpp;
  }

  public final AudioManager aFE()
  {
    if (this.cbj == null)
      this.cbj = ((AudioManager)al.getContext().getSystemService("audio"));
    return this.cbj;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.fb
 * JD-Core Version:    0.6.2
 */