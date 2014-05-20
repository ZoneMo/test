package com.tencent.mm.ui.player;

import com.tencent.mm.model.am;
import com.tencent.mm.sdk.platformtools.aa;

final class e
  implements am
{
  e(MusicDetailUI paramMusicDetailUI)
  {
  }

  public final void B(int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.MusicDetailUI", "pos:%d  duration:%d", arrayOfObject);
  }

  public final void onFinish()
  {
    this.hdb.finish();
  }

  public final void onPause()
  {
  }

  public final void onResume()
  {
  }

  public final void onStart()
  {
  }

  public final void onStop()
  {
  }

  public final void pB()
  {
    this.hdb.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.e
 * JD-Core Version:    0.6.2
 */