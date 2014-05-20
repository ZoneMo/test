package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.platformtools.ar;

final class ai
  implements ar
{
  ai(FindMContactAddUI paramFindMContactAddUI)
  {
  }

  public final boolean ve()
  {
    FindMContactAddUI.a(this.hbn, c.aQ(this.hbn));
    FindMContactAddUI.c(this.hbn).l(FindMContactAddUI.d(this.hbn));
    FindMContactAddUI.c(this.hbn).b(ax.Ar());
    return true;
  }

  public final boolean vf()
  {
    if (FindMContactAddUI.a(this.hbn) != null)
    {
      FindMContactAddUI.a(this.hbn).dismiss();
      FindMContactAddUI.b(this.hbn);
    }
    FindMContactAddUI.c(this.hbn).notifyDataSetChanged();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ai
 * JD-Core Version:    0.6.2
 */