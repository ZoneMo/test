package com.tencent.mm.plugin.scanner.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import com.tencent.mm.h;
import com.tencent.mm.i;

final class u
  implements View.OnClickListener
{
  u(MusicPreference paramMusicPreference)
  {
  }

  public final void onClick(View paramView)
  {
    if (MusicPreference.a(this.ecP) == null);
    while (paramView.getId() != i.aEn)
      return;
    if (MusicPreference.b(this.ecP))
    {
      MusicPreference.a(this.ecP, false);
      MusicPreference.c(this.ecP).setImageResource(h.ahQ);
    }
    while (true)
    {
      MusicPreference.a(this.ecP).d(this.ecP);
      return;
      MusicPreference.a(this.ecP, true);
      MusicPreference.c(this.ecP).setImageResource(h.ahR);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.u
 * JD-Core Version:    0.6.2
 */