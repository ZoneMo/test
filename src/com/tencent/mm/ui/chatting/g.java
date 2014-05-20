package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.model.app.ab;

final class g
  implements View.OnClickListener
{
  g(AppAttachDownloadUI paramAppAttachDownloadUI)
  {
  }

  public final void onClick(View paramView)
  {
    AppAttachDownloadUI.j(this.gKc);
    AppAttachDownloadUI.g(this.gKc).setVisibility(0);
    AppAttachDownloadUI.h(this.gKc).setVisibility(8);
    AppAttachDownloadUI.i(this.gKc).setVisibility(0);
    AppAttachDownloadUI.n(this.gKc).setVisibility(8);
    AppAttachDownloadUI.a(this.gKc, new ab(AppAttachDownloadUI.k(this.gKc), AppAttachDownloadUI.l(this.gKc), AppAttachDownloadUI.m(this.gKc)));
    be.uA().d(AppAttachDownloadUI.a(this.gKc));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.g
 * JD-Core Version:    0.6.2
 */