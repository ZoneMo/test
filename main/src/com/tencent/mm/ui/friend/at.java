package com.tencent.mm.ui.friend;

import android.content.res.Resources;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.l;
import com.tencent.mm.modelfriend.p;
import com.tencent.mm.modelfriend.v;
import com.tencent.mm.n;

final class at
  implements v
{
  at(FindMContactInviteUI paramFindMContactInviteUI)
  {
  }

  public final void notifyDataSetChanged()
  {
    if ((FindMContactInviteUI.d(this.hbp) != 2) && (FindMContactInviteUI.d(this.hbp) == 1))
    {
      FindMContactInviteUI.e(this.hbp).setText(this.hbp.getString(n.bmh));
      if (!FindMContactInviteUI.b(this.hbp).zj())
        break label265;
      if ((FindMContactInviteUI.d(this.hbp) != 1) && (FindMContactInviteUI.e(this.hbp).getVisibility() == 0) && (FindMContactInviteUI.f(this.hbp) != null))
      {
        FindMContactInviteUI.e(this.hbp).setVisibility(8);
        FindMContactInviteUI.f(this.hbp).setVisibility(0);
      }
    }
    while (true)
    {
      if ((FindMContactInviteUI.b(this.hbp).zi() <= 0) || (FindMContactInviteUI.d(this.hbp) == 1))
        break label327;
      TextView localTextView2 = FindMContactInviteUI.g(this.hbp);
      Resources localResources2 = this.hbp.getResources();
      int m = l.bcj;
      int n = FindMContactInviteUI.b(this.hbp).zi();
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(FindMContactInviteUI.b(this.hbp).zi());
      localTextView2.setText(localResources2.getQuantityString(m, n, arrayOfObject3));
      return;
      Button localButton = FindMContactInviteUI.e(this.hbp);
      FindMContactInviteUI localFindMContactInviteUI = this.hbp;
      int i = n.bmg;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(FindMContactInviteUI.b(this.hbp).getCount());
      localButton.setText(localFindMContactInviteUI.getString(i, arrayOfObject1));
      break;
      label265: if ((FindMContactInviteUI.d(this.hbp) != 1) && (FindMContactInviteUI.e(this.hbp).getVisibility() == 8) && (FindMContactInviteUI.f(this.hbp) != null))
      {
        FindMContactInviteUI.e(this.hbp).setVisibility(0);
        FindMContactInviteUI.f(this.hbp).setVisibility(8);
      }
    }
    label327: TextView localTextView1 = FindMContactInviteUI.g(this.hbp);
    Resources localResources1 = this.hbp.getResources();
    int j = l.bck;
    int k = FindMContactInviteUI.b(this.hbp).getCount();
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(FindMContactInviteUI.b(this.hbp).getCount());
    localTextView1.setText(localResources1.getQuantityString(j, k, arrayOfObject2));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.at
 * JD-Core Version:    0.6.2
 */