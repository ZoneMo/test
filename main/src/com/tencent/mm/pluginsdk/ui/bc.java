package com.tencent.mm.pluginsdk.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class bc
  implements View.OnClickListener
{
  bc(VoiceSearchLayout paramVoiceSearchLayout)
  {
  }

  public final void onClick(View paramView)
  {
    if (VoiceSearchLayout.a(this.fnw))
    {
      if (VoiceSearchLayout.b(this.fnw) == 0)
      {
        if (VoiceSearchLayout.c(this.fnw))
        {
          this.fnw.arO();
          return;
        }
        this.fnw.T();
        return;
      }
      this.fnw.arO();
      return;
    }
    this.fnw.ki(VoiceSearchLayout.b(this.fnw));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.bc
 * JD-Core Version:    0.6.2
 */