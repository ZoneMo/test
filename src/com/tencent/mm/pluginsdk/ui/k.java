package com.tencent.mm.pluginsdk.ui;

import android.view.ViewGroup.LayoutParams;
import com.tencent.mm.sdk.platformtools.aa;

final class k
  implements Runnable
{
  k(EmojiBarView paramEmojiBarView)
  {
  }

  public final void run()
  {
    int i = this.fkw.getRight() - this.fkw.getLeft() - this.fkw.getPaddingRight() - this.fkw.getPaddingLeft();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(i);
    aa.e("MicroMsg.EmojiBarView", "end measure width: %d", arrayOfObject1);
    if ((this.fkw.getLayoutParams() != null) && (i > 0))
    {
      this.fkw.getLayoutParams().height = (i / 2);
      this.fkw.setLayoutParams(this.fkw.getLayoutParams());
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.fkw.getLayoutParams().height);
      aa.e("MicroMsg.EmojiBarView", "set measure : %d", arrayOfObject2);
      EmojiBarView.a(this.fkw);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.k
 * JD-Core Version:    0.6.2
 */