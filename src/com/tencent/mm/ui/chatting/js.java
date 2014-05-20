package com.tencent.mm.ui.chatting;

import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.Intent;
import android.view.DragEvent;
import android.view.View;
import android.view.View.OnDragListener;
import com.tencent.mm.a.c;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.o;
import com.tencent.mm.pluginsdk.model.app.s;
import com.tencent.mm.pluginsdk.ui.tools.t;
import com.tencent.mm.sdk.modelmsg.WXFileObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;

final class js
  implements View.OnDragListener
{
  js(jr paramjr)
  {
  }

  public final boolean onDrag(View paramView, DragEvent paramDragEvent)
  {
    int i = 1;
    switch (paramDragEvent.getAction())
    {
    default:
      aa.e("MicroMsg.ChattingUI", "Unknown action type received by OnDragListener.");
      i = 0;
    case 1:
    case 5:
    case 2:
    case 4:
    case 3:
    }
    ClipData localClipData;
    do
    {
      return i;
      aa.i("MicroMsg.ChattingUI", "ACTION_DRAG_STARTED");
      return i;
      aa.i("MicroMsg.ChattingUI", "ACTION_DRAG_ENTERED");
      return i;
      aa.i("MicroMsg.ChattingUI", "ACTION_DRAG_LOCATION");
      return i;
      aa.i("MicroMsg.ChattingUI", "ACTION_DRAG_ENDED");
      return i;
      aa.i("MicroMsg.ChattingUI", "ACTION_DROP");
      localClipData = paramDragEvent.getClipData();
    }
    while (localClipData == null);
    int j = localClipData.getItemCount();
    int k = 0;
    label115: ClipData.Item localItem;
    if (k < j)
    {
      localItem = localClipData.getItemAt(k);
      if (localItem != null)
        break label149;
      aa.e("MicroMsg.ChattingUI", "item == null");
    }
    while (true)
    {
      k++;
      break label115;
      break;
      label149: if (localItem.getIntent() != null)
      {
        this.gQm.gPG.startActivity(localItem.getIntent());
      }
      else if (localItem.getUri() != null)
      {
        t localt = new t(this.gQm.gPG.aal(), localItem.getUri());
        if ((localt.fuA != 0) && (localt.filePath != null));
        switch (localt.fuA)
        {
        default:
          ct localct = ct.vB();
          Object[] arrayOfObject = new Object[i];
          arrayOfObject[0] = Integer.valueOf(i);
          localct.a(38, arrayOfObject);
          ChattingUI.a(this.gQm.gPG, localt.filePath);
          WXMediaMessage localWXMediaMessage = new WXMediaMessage(new WXFileObject(ChattingUI.K(this.gQm.gPG)));
          localWXMediaMessage.title = new File(ChattingUI.K(this.gQm.gPG)).getName();
          localWXMediaMessage.description = au.K(c.ar(ChattingUI.K(this.gQm.gPG)));
          k localk = new k();
          localk.field_appId = "wx4310bbd51be7d979";
          ba.HE().c(localk, new String[0]);
          s.a(localWXMediaMessage, localk.field_appId, localk.field_appName, this.gQm.gPG.aJe(), 2, null);
          break;
        case 3:
          ChattingUI.a(this.gQm.gPG, localt.filePath);
          boolean bool = v.b(ChattingUI.K(this.gQm.gPG), this.gQm.gPG.aJe(), i);
          ChattingUI localChattingUI = this.gQm.gPG;
          if (bool);
          int n;
          for (int m = i; ; n = 0)
          {
            ChattingUI.a(localChattingUI, m, ChattingUI.K(this.gQm.gPG));
            break;
          }
        case 4:
          Intent localIntent = new Intent();
          localIntent.setData(localItem.getUri());
          ChattingUI.b(this.gQm.gPG, localIntent);
          continue;
          aa.e("MicroMsg.ChattingUI", "get file path failed");
          break;
        }
      }
      else if ((localItem.getText() != null) && (localItem.getText().length() > 0))
      {
        this.gQm.gPG.wD(localItem.getText().toString());
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.js
 * JD-Core Version:    0.6.2
 */