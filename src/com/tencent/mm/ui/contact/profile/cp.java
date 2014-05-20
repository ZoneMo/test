package com.tencent.mm.ui.contact.profile;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.chatting.ChattingUI;

final class cp
  implements View.OnClickListener
{
  cp(cb paramcb)
  {
  }

  public final void onClick(View paramView)
  {
    if (NormalUserFooterPreference.d(this.gXl.gXk))
    {
      cb localcb2 = this.gXl;
      String str = NormalUserFooterPreference.a(localcb2.gXk).getUsername();
      Intent localIntent2 = new Intent(localcb2.gXk.getContext(), ChattingUI.class);
      localIntent2.addFlags(67108864);
      if (NormalUserFooterPreference.k(localcb2.gXk))
      {
        localIntent2.putExtra("Chat_User", str);
        localIntent2.putExtra("Chat_Mode", 1);
        ((Activity)localcb2.gXk.getContext()).setResult(-1, localIntent2);
      }
      while (true)
      {
        ((Activity)localcb2.gXk.getContext()).finish();
        return;
        localIntent2.putExtra("Chat_User", str);
        localIntent2.putExtra("Chat_Mode", 1);
        localcb2.gXk.getContext().startActivity(localIntent2);
      }
    }
    cb localcb1 = this.gXl;
    Intent localIntent1 = new Intent(localcb1.gXk.getContext(), ChattingUI.class);
    localIntent1.addFlags(67108864);
    if (NormalUserFooterPreference.k(localcb1.gXk))
    {
      localIntent1.putExtra("Chat_User", NormalUserFooterPreference.a(localcb1.gXk).getUsername());
      localIntent1.putExtra("Chat_Mode", 1);
      ((Activity)localcb1.gXk.getContext()).setResult(-1, localIntent1);
    }
    while (true)
    {
      ((Activity)localcb1.gXk.getContext()).finish();
      return;
      localIntent1.putExtra("Chat_User", NormalUserFooterPreference.a(localcb1.gXk).getUsername());
      localIntent1.putExtra("Chat_Mode", 1);
      localcb1.gXk.getContext().startActivity(localIntent1);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cp
 * JD-Core Version:    0.6.2
 */