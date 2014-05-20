package com.tencent.mm.ui.bindmobile;

import android.app.ProgressDialog;
import android.content.Intent;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ap;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.protocal.a.mx;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.friend.FindMContactAddUI;
import java.util.Iterator;
import java.util.LinkedList;

final class av
  implements m
{
  av(FindMContactIntroUI paramFindMContactIntroUI)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (FindMContactIntroUI.g(this.gJj) != null)
    {
      FindMContactIntroUI.g(this.gJj).dismiss();
      FindMContactIntroUI.h(this.gJj);
    }
    if (FindMContactIntroUI.i(this.gJj) != null)
    {
      be.uA().b(431, FindMContactIntroUI.i(this.gJj));
      FindMContactIntroUI.j(this.gJj);
    }
    LinkedList localLinkedList;
    int k;
    int n;
    int j;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      localLinkedList = ((ap)paramx).zT();
      ax.c(localLinkedList);
      if ((localLinkedList == null) || (localLinkedList.size() <= 0))
        break label409;
      Iterator localIterator = localLinkedList.iterator();
      k = 0;
      while (localIterator.hasNext())
      {
        mx localmx = (mx)localIterator.next();
        if (localmx != null)
        {
          if (localmx.fzr != 1)
            break label402;
          n = k + 1;
          k = n;
        }
      }
      if (k > 0)
        j = 1;
    }
    while (true)
    {
      Object[] arrayOfObject2 = new Object[2];
      if (localLinkedList == null);
      for (int m = 0; ; m = localLinkedList.size())
      {
        arrayOfObject2[0] = Integer.valueOf(m);
        arrayOfObject2[1] = Integer.valueOf(k);
        aa.e("MicroMsg.FindMContactIntroUI", "tigerreg data size=%d, addcount=%s", arrayOfObject2);
        if ((FindMContactIntroUI.d(this.gJj) == null) || (!FindMContactIntroUI.d(this.gJj).contains("1")) || (j == 0))
          break label336;
        b.ie("R300_300_phone");
        Intent localIntent = new Intent(this.gJj, FindMContactAddUI.class);
        localIntent.putExtra("regsetinfo_ticket", FindMContactIntroUI.c(this.gJj));
        localIntent.putExtra("regsetinfo_NextStep", FindMContactIntroUI.d(this.gJj));
        localIntent.putExtra("regsetinfo_NextStyle", FindMContactIntroUI.e(this.gJj));
        localIntent.putExtra("login_type", 0);
        MMWizardActivity.j(this.gJj, localIntent);
        return;
        j = 0;
        break;
      }
      label336: FindMContactIntroUI.b(this.gJj);
      return;
      FindMContactIntroUI localFindMContactIntroUI1 = this.gJj;
      FindMContactIntroUI localFindMContactIntroUI2 = this.gJj;
      int i = n.bdK;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      arrayOfObject1[1] = Integer.valueOf(paramInt2);
      Toast.makeText(localFindMContactIntroUI1, localFindMContactIntroUI2.getString(i, arrayOfObject1), 0).show();
      return;
      label402: n = k;
      break;
      label409: j = 0;
      k = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.av
 * JD-Core Version:    0.6.2
 */