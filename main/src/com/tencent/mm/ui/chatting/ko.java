package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ui.widget.MMEditText;

final class ko
  implements View.OnClickListener
{
  ko(km paramkm)
  {
  }

  public final void onClick(View paramView)
  {
    String str = km.a(this.gQX).getText().toString().trim();
    if (km.b(this.gQX) != null)
    {
      kq localkq = km.b(this.gQX);
      localkq.wu(str);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ko
 * JD-Core Version:    0.6.2
 */