package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.View.OnLongClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class fl
  implements View.OnLongClickListener
{
  private View.OnCreateContextMenuListener dYT;
  private ChattingUI gMB;

  public fl(View.OnCreateContextMenuListener paramOnCreateContextMenuListener, ChattingUI paramChattingUI)
  {
    this.gMB = paramChattingUI;
    this.dYT = paramOnCreateContextMenuListener;
  }

  public final boolean onLongClick(View paramView)
  {
    if ((paramView.getTag() instanceof kk))
    {
      kk localkk = (kk)paramView.getTag();
      if (localkk.dws == 1)
      {
        if (w.cp(this.gMB.aJe()))
        {
          i locali = be.uz().su().tO(localkk.bPx);
          this.gMB.dKO.qK(this.gMB.dKO.asy() + "@" + locali.rq() + " ");
          this.gMB.gOX = false;
          this.gMB.dKO.setMode(1);
          paramView.postDelayed(new fm(this), 2000L);
        }
        return true;
      }
    }
    paramView.setOnCreateContextMenuListener(this.dYT);
    this.gMB.openContextMenu(paramView);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.fl
 * JD-Core Version:    0.6.2
 */