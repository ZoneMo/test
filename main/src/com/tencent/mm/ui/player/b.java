package com.tencent.mm.ui.player;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class b
  implements View.OnClickListener
{
  b(MusicBannerView paramMusicBannerView)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(MusicBannerView.a(this.hcX), MainMusicPlayerUI.class);
    MusicBannerView.a(this.hcX).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.b
 * JD-Core Version:    0.6.2
 */