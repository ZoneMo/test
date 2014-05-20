package com.tencent.mm.compatible.g;

import android.media.AudioManager.OnAudioFocusChangeListener;

final class f
  implements AudioManager.OnAudioFocusChangeListener
{
  f(e parame)
  {
  }

  public final void onAudioFocusChange(int paramInt)
  {
    if (e.a(this.cfB) != null)
      e.a(this.cfB).bq(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.g.f
 * JD-Core Version:    0.6.2
 */