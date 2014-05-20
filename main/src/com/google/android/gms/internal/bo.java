package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.plus.c;

final class bo
  implements View.OnClickListener, c
{
  private final c Nw = null;

  public bo(el paramel)
  {
  }

  public final void b(Intent paramIntent)
  {
    Context localContext = this.Nx.getContext();
    if (((localContext instanceof Activity)) && (paramIntent != null))
      ((Activity)localContext).startActivityForResult(paramIntent, this.Nx.Nj);
  }

  public final void onClick(View paramView)
  {
    if ((paramView == this.Nx.Nm) || (paramView == this.Nx.No))
      if (this.Nx.Ns != null)
        break label52;
    label52: for (Intent localIntent = null; this.Nw != null; localIntent = (Intent)this.Nx.Ns.Nc.getParcelable("intent"))
    {
      this.Nw.b(localIntent);
      return;
    }
    b(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bo
 * JD-Core Version:    0.6.2
 */