package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.tencent.mm.pluginsdk.model.app.ab;

final class e
  implements View.OnClickListener
{
  e(AppAttachDownloadUI paramAppAttachDownloadUI)
  {
  }

  public final void onClick(View paramView)
  {
    AppAttachDownloadUI.g(this.gKc).setVisibility(8);
    AppAttachDownloadUI.h(this.gKc).setVisibility(0);
    AppAttachDownloadUI.i(this.gKc).setVisibility(8);
    AppAttachDownloadUI.a(this.gKc).pause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.e
 * JD-Core Version:    0.6.2
 */