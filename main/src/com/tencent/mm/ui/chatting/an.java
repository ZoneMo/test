package com.tencent.mm.ui.chatting;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;

final class an
  implements View.OnClickListener
{
  an(ChatFooterCustom paramChatFooterCustom)
  {
  }

  public final void onClick(View paramView)
  {
    ChatFooterCustom.d(this.gLu).aIX();
    ImageView localImageView = (ImageView)paramView;
    if (localImageView.getTag() == null)
    {
      localImageView.setTag(new Object());
      localImageView.setImageResource(2130838860);
      int k = 0;
      if (k < ChatFooterCustom.e(this.gLu))
      {
        View localView2 = ChatFooterCustom.f(this.gLu).getChildAt(k);
        if (k >= 3);
        for (int m = 0; ; m = 8)
        {
          localView2.setVisibility(m);
          k++;
          break;
        }
      }
    }
    else
    {
      localImageView.setTag(null);
      localImageView.setImageResource(2130838857);
      int i = 0;
      if (i < ChatFooterCustom.e(this.gLu))
      {
        View localView1 = ChatFooterCustom.f(this.gLu).getChildAt(i);
        if (i < 3);
        for (int j = 0; ; j = 8)
        {
          localView1.setVisibility(j);
          i++;
          break;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.an
 * JD-Core Version:    0.6.2
 */