package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.view.View.OnClickListener;
import com.tencent.mm.model.br;
import com.tencent.mm.platformtools.ab;
import com.tencent.mm.platformtools.ac;
import com.tencent.mm.platformtools.e;
import com.tencent.mm.platformtools.f;
import java.lang.ref.WeakReference;

public final class ds
{
  private final WeakReference hlA;

  public ds(Activity paramActivity)
  {
    this.hlA = new WeakReference(paramActivity);
  }

  public final ab uQ()
  {
    br.uP();
    ab localab1 = br.uQ();
    ab localab2 = null;
    f localf;
    e locale;
    Object localObject;
    if (localab1 != null)
    {
      localf = localab1.cGO;
      locale = localab1.cGP;
      int i = dy.ciV[localf.ordinal()];
      localObject = null;
      switch (i)
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
    }
    while (true)
    {
      localab2 = localab1.Fz().a((View.OnClickListener)localObject).FA();
      return localab2;
      localObject = new dt(this, localf, locale);
      continue;
      localObject = new du(this, localf, locale);
      continue;
      localObject = new dv(this, localf, locale);
      continue;
      localObject = new dw(this, localf, locale);
      continue;
      localObject = new dx(this, localf, locale);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ds
 * JD-Core Version:    0.6.2
 */