package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.br;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.platformtools.e;
import com.tencent.mm.platformtools.f;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.bindgooglecontact.BindGoogleContactIntroUI;
import com.tencent.mm.ui.bindgooglecontact.GoogleFriendUI;
import java.lang.ref.WeakReference;

final class dt
  implements View.OnClickListener
{
  dt(ds paramds, f paramf, e parame)
  {
  }

  public final void onClick(View paramView)
  {
    br.uP().a(this.hlB, this.hlC);
    Context localContext = (Context)ds.a(this.hlD).get();
    if (localContext != null)
    {
      if (!ab.zy())
      {
        Intent localIntent1 = new Intent(localContext, BindGoogleContactIntroUI.class);
        localIntent1.putExtra("enter_scene", 1);
        MMWizardActivity.j(localContext, localIntent1);
      }
      Intent localIntent2 = new Intent(localContext, GoogleFriendUI.class);
      localIntent2.putExtra("enter_scene", 1);
      localContext.startActivity(localIntent2);
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(6);
      arrayOfObject[1] = Integer.valueOf(1);
      localm.d(11002, arrayOfObject);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dt
 * JD-Core Version:    0.6.2
 */