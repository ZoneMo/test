package com.tencent.mm.pluginsdk.ui;

import com.tencent.mm.aj.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class bg
  implements i
{
  bg(VoiceSearchLayout paramVoiceSearchLayout)
  {
  }

  public final void EH()
  {
    this.fnw.reset();
    VoiceSearchLayout.q(this.fnw).a(false, null, -1L);
  }

  public final void EI()
  {
    VoiceSearchLayout.n(this.fnw);
    VoiceSearchLayout.o(this.fnw);
    if (VoiceSearchLayout.p(this.fnw) != null)
      VoiceSearchLayout.p(this.fnw).azn();
  }

  public final void a(String[] paramArrayOfString, long paramLong)
  {
    try
    {
      aa.d("MicroMsg.VoiceSearchLayout", "dkaddr onRes ");
      if (paramArrayOfString != null)
      {
        aa.d("MicroMsg.VoiceSearchLayout", "dkaddr onRes size:" + paramArrayOfString.length + " " + paramArrayOfString.toString());
        int i = paramArrayOfString.length;
        for (int j = 0; j < i; j++)
        {
          String str = paramArrayOfString[j];
          aa.d("MicroMsg.VoiceSearchLayout", "search username  :" + str);
        }
      }
      this.fnw.reset();
      VoiceSearchLayout.q(this.fnw).a(true, paramArrayOfString, paramLong);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.bg
 * JD-Core Version:    0.6.2
 */