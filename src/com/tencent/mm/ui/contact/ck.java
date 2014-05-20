package com.tencent.mm.ui.contact;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.ui.MMActivity;

final class ck
  implements View.OnClickListener
{
  ck(FriendPreference paramFriendPreference, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    if ((FriendPreference.a(this.gUh) != null) && (!au.hX(FriendPreference.a(this.gUh).yY())));
    for (String[] arrayOfString = FriendPreference.b(this.gUh).getResources().getStringArray(2131296303); ; arrayOfString = FriendPreference.b(this.gUh).getResources().getStringArray(2131296304))
    {
      com.tencent.mm.ui.base.h.b(FriendPreference.b(this.gUh), null, arrayOfString, null, new cl(this, arrayOfString));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ck
 * JD-Core Version:    0.6.2
 */