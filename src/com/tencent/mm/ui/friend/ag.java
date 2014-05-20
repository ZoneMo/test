package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.MMWizardActivity;

final class ag
  implements m
{
  ag(FindMContactAddUI paramFindMContactAddUI)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (FindMContactAddUI.a(this.hbn) != null)
    {
      FindMContactAddUI.a(this.hbn).dismiss();
      FindMContactAddUI.b(this.hbn);
    }
    if (FindMContactAddUI.o(this.hbn) != null)
    {
      be.uA().b(30, FindMContactAddUI.o(this.hbn));
      FindMContactAddUI.p(this.hbn);
    }
    if ((FindMContactAddUI.k(this.hbn) != null) && (FindMContactAddUI.k(this.hbn).contains("2")))
    {
      Intent localIntent = new Intent(this.hbn, FindMContactInviteUI.class);
      localIntent.putExtra("regsetinfo_ticket", FindMContactAddUI.l(this.hbn));
      localIntent.putExtra("login_type", FindMContactAddUI.m(this.hbn));
      localIntent.putExtra("regsetinfo_NextStyle", FindMContactAddUI.e(this.hbn));
      MMWizardActivity.j(this.hbn, localIntent);
      return;
    }
    FindMContactAddUI.n(this.hbn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ag
 * JD-Core Version:    0.6.2
 */