package com.tencent.mm.ui.chatting;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.pluginsdk.ui.c;
import com.tencent.mm.storage.ak;

final class mc extends cf
{
  TextView gMU;

  public mc(int paramInt)
  {
    super(paramInt);
  }

  public static void a(mc parammc, ak paramak, int paramInt, ChattingUI paramChattingUI)
  {
    if (parammc == null)
      return;
    String str = paramChattingUI.gMi.bNl;
    c.a(parammc.cMS, str);
    parammc.cMS.setVisibility(0);
    ImageView localImageView;
    if (parammc.gKj != null)
    {
      localImageView = parammc.gKj;
      if (paramak.getStatus() != 6)
        break label160;
    }
    label160: for (int i = 8; ; i = 0)
    {
      localImageView.setVisibility(i);
      parammc.cMS.setTag(new kk(str));
      parammc.cMS.setOnClickListener(paramChattingUI.gMi.gNw);
      parammc.cMS.setOnLongClickListener(paramChattingUI.gMi.gNy);
      parammc.gki.setTag(new kk(paramak, paramChattingUI.gJU, paramInt, null, 0, '\000'));
      parammc.gki.setOnClickListener(paramChattingUI.gMi.gNw);
      parammc.gki.setOnLongClickListener(paramChattingUI.gMi.gNy);
      return;
    }
  }

  public final cf au(View paramView)
  {
    super.as(paramView);
    if (this.type == 39)
    {
      this.dkq = ((TextView)paramView.findViewById(2131361841));
      this.gMU = ((TextView)paramView.findViewById(2131362327));
      this.gki = paramView.findViewById(2131362277);
    }
    while (true)
    {
      if (this.type == 39)
        this.gKj = ((ImageView)paramView.findViewById(2131362325));
      this.daW = ((CheckBox)paramView.findViewById(2131361843));
      this.eyN = paramView.findViewById(2131361844);
      return this;
      this.dkq = ((TextView)paramView.findViewById(2131361841));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.mc
 * JD-Core Version:    0.6.2
 */