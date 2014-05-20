package com.tencent.mm.plugin.voicereminder.ui;

import com.tencent.mm.plugin.voicereminder.a.j;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.List;

final class a
  implements j
{
  a(RemindDialog paramRemindDialog)
  {
  }

  public final void e(String paramString, long paramLong)
  {
    aa.d("MicroMsg.RemindDialog", "onVoiceRemind " + paramString);
    RemindDialog.a(this.ePv).add(paramString);
    RemindDialog.b(this.ePv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.ui.a
 * JD-Core Version:    0.6.2
 */