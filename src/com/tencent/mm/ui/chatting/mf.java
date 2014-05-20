package com.tencent.mm.ui.chatting;

import com.tencent.mm.model.ct;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.platformtools.aa;

final class mf
  implements r
{
  mf(md parammd, WXMediaMessage paramWXMediaMessage, k paramk)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    if (paramBoolean)
    {
      int i = this.gRT.getType();
      str = null;
      if (i != 8)
        break label82;
      if (this.gRT.thumbData == null)
        aa.e("MicroMsg.WXAppMessageReceiver", "code should not reach here due to WXMediaMessage::checkArgs, sendEmoji Fail cause thumbData is null");
    }
    else
    {
      return;
    }
    String str = h.apj().b(md.a(this.gRV), this.gRT, this.gRU.field_appId);
    if (str == null)
    {
      aa.v("MicroMsg.WXAppMessageReceiver", "sendEmoji Fail cause emojiconmd5 is null");
      return;
    }
    label82: ct localct = ct.vB();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(1);
    localct.a(27, arrayOfObject1);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = this.gRT.messageAction;
    arrayOfObject2[1] = this.gRT.messageExt;
    aa.f("MicroMsg.WXAppMessageReceiver", "onDialogClick, messageAction = %s, messageExt = %s", arrayOfObject2);
    s.a(this.gRT, this.gRU.field_appId, this.gRU.field_appName, md.a(this.gRV).aJe(), 1, str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.mf
 * JD-Core Version:    0.6.2
 */