package com.tencent.mm.ui.friend;

import android.content.res.Resources;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.l;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.modelfriend.v;
import com.tencent.mm.n;

final class aj
  implements v
{
  aj(FindMContactAddUI paramFindMContactAddUI)
  {
  }

  public final void notifyDataSetChanged()
  {
    if ((FindMContactAddUI.e(this.hbn) != 2) && (FindMContactAddUI.e(this.hbn) == 1))
    {
      FindMContactAddUI.f(this.hbn).setText(this.hbn.getString(n.blZ));
      if (!FindMContactAddUI.c(this.hbn).zj())
        break label265;
      if ((FindMContactAddUI.e(this.hbn) != 1) && (FindMContactAddUI.f(this.hbn).getVisibility() == 0) && (FindMContactAddUI.g(this.hbn) != null))
      {
        FindMContactAddUI.f(this.hbn).setVisibility(8);
        FindMContactAddUI.g(this.hbn).setVisibility(0);
      }
    }
    while (true)
    {
      if ((FindMContactAddUI.c(this.hbn).zi() <= 0) || (FindMContactAddUI.e(this.hbn) == 1))
        break label327;
      TextView localTextView2 = FindMContactAddUI.h(this.hbn);
      Resources localResources2 = this.hbn.getResources();
      int m = l.bci;
      int n = FindMContactAddUI.c(this.hbn).zi();
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(FindMContactAddUI.c(this.hbn).zi());
      localTextView2.setText(localResources2.getQuantityString(m, n, arrayOfObject3));
      return;
      Button localButton = FindMContactAddUI.f(this.hbn);
      FindMContactAddUI localFindMContactAddUI = this.hbn;
      int i = n.blY;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(FindMContactAddUI.c(this.hbn).getCount());
      localButton.setText(localFindMContactAddUI.getString(i, arrayOfObject1));
      break;
      label265: if ((FindMContactAddUI.e(this.hbn) != 1) && (FindMContactAddUI.f(this.hbn).getVisibility() == 8) && (FindMContactAddUI.g(this.hbn) != null))
      {
        FindMContactAddUI.f(this.hbn).setVisibility(0);
        FindMContactAddUI.g(this.hbn).setVisibility(8);
      }
    }
    label327: TextView localTextView1 = FindMContactAddUI.h(this.hbn);
    Resources localResources1 = this.hbn.getResources();
    int j = l.bcl;
    int k = FindMContactAddUI.c(this.hbn).getCount();
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(FindMContactAddUI.c(this.hbn).getCount());
    localTextView1.setText(localResources1.getQuantityString(j, k, arrayOfObject2));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.aj
 * JD-Core Version:    0.6.2
 */