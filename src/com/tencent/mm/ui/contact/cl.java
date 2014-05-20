package com.tencent.mm.ui.contact;

import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.v;

final class cl
  implements v
{
  cl(ck paramck, String[] paramArrayOfString)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    do
    {
      String str;
      do
      {
        do
        {
          int j;
          do
          {
            do
              return;
            while ((this.gUi.gUg == null) || (this.gUi.gUg.length() == 0));
            j = 1 + this.gUi.gUg.lastIndexOf(' ');
          }
          while (j <= 0);
          FriendPreference.a(this.gUi.gUh, this.gUi.gUg.substring(j));
          return;
        }
        while ((this.gUi.gUg == null) || (this.gUi.gUg.length() == 0));
        int i = this.gUi.gUg.lastIndexOf(' ');
        str = this.gUi.gUg.substring(0, i);
      }
      while ((str == null) || (str.length() == 0));
      w.b(FriendPreference.c(this.gUi.gUh), str.trim());
      return;
    }
    while ((this.dJZ == null) || (this.dJZ.length <= 2) || (FriendPreference.a(this.gUi.gUh) == null) || (FriendPreference.c(this.gUi.gUh) == null));
    FriendPreference.a(this.gUi.gUh, FriendPreference.c(this.gUi.gUh).getUsername(), FriendPreference.a(this.gUi.gUh).yY());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cl
 * JD-Core Version:    0.6.2
 */