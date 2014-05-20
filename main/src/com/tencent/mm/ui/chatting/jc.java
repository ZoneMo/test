package com.tencent.mm.ui.chatting;

import android.content.Intent;
import com.tencent.mm.ak.a;
import com.tencent.mm.ui.base.v;

final class jc
  implements v
{
  jc(ChattingUI paramChattingUI)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      Intent localIntent = new Intent();
      localIntent.putExtra("map_view_type", 0);
      localIntent.putExtra("map_sender_name", this.gPG.Ch());
      localIntent.putExtra("map_talker_name", this.gPG.aJe());
      a.b(this.gPG.aal(), "location", ".ui.RedirectUI", localIntent);
      return;
    case 1:
    }
    ChattingUI.I(this.gPG);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jc
 * JD-Core Version:    0.6.2
 */