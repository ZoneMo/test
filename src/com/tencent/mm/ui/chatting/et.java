package com.tencent.mm.ui.chatting;

import com.tencent.mm.pluginsdk.ae;
import com.tencent.mm.pluginsdk.ui.applet.am;

final class et
  implements ae
{
  et(es parames, ChattingUI paramChattingUI)
  {
  }

  public final void a(am paramam)
  {
    switch (paramam.type)
    {
    case 3:
    case 5:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    default:
      return;
    case 4:
      es.a(this.gNZ, paramam);
      return;
    case 2:
    case 6:
    case 7:
    case 9:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    }
    this.gNY.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.et
 * JD-Core Version:    0.6.2
 */