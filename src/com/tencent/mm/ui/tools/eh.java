package com.tencent.mm.ui.tools;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.i;
import com.tencent.mm.n.ac;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

final class eh
  implements DialogInterface.OnClickListener
{
  eh(NewTaskUI paramNewTaskUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa.d("MicroMsg.NewTaskUI", "imgSid:" + NewTaskUI.a(this.hlN).grp + " img len" + NewTaskUI.a(this.hlN).grr.length + " " + j.qg());
    if (NewTaskUI.b(this.hlN) == null)
    {
      aa.d("MicroMsg.NewTaskUI", "[arthurdan.SecurityImageCrash] fatal error!!! secimg is null!");
      return;
    }
    i locali = new i(NewTaskUI.a(this.hlN).username, NewTaskUI.a(this.hlN).hkw, NewTaskUI.a(this.hlN).hkx, NewTaskUI.a(this.hlN).grs, NewTaskUI.b(this.hlN).aGu(), NewTaskUI.b(this.hlN).aGt(), NewTaskUI.b(this.hlN).aGv());
    be.uA().d(locali);
    NewTaskUI localNewTaskUI1 = this.hlN;
    NewTaskUI localNewTaskUI2 = this.hlN;
    this.hlN.getString(2131167675);
    NewTaskUI.a(localNewTaskUI1, h.a(localNewTaskUI2, this.hlN.getString(2131165569), true, new ei(this, locali)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.eh
 * JD-Core Version:    0.6.2
 */