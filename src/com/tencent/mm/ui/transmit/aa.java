package com.tencent.mm.ui.transmit;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.pluginsdk.model.app.k;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.p;
import com.tencent.mm.ui.base.x;

public final class aa
{
  private x dpV;
  private ad hrS;

  private aa(ad paramad)
  {
    this.hrS = paramad;
  }

  public static final aa a(Context paramContext, WXMediaMessage paramWXMediaMessage, k paramk, ad paramad)
  {
    if (paramk == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SendAppMessage", "unknown app");
      return null;
    }
    aa localaa = new aa(paramad);
    if (paramWXMediaMessage.thumbData == null);
    for (Bitmap localBitmap = null; ; localBitmap = com.tencent.mm.sdk.platformtools.h.cj(paramWXMediaMessage.thumbData))
      switch (paramWXMediaMessage.mediaObject.type())
      {
      default:
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.SendAppMessage", "unkown app message type, skipped, type=" + paramWXMediaMessage.mediaObject.type());
        return null;
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 5:
      case 7:
      }
    Object localObject = View.inflate(paramContext, 2130903088, null);
    ((TextView)((View)localObject).findViewById(2131361972)).setText(paramWXMediaMessage.title);
    while (true)
    {
      ((TextView)((View)localObject).findViewById(2131361975)).setText(l.c(paramContext, paramk));
      localaa.dpV = com.tencent.mm.ui.base.h.a(paramContext, null, (View)localObject, paramContext.getString(2131167677), paramContext.getString(2131167681), new ab(localaa), new ac(localaa));
      return localaa;
      View localView6 = View.inflate(paramContext, 2130903087, null);
      ((ImageView)localView6.findViewById(2131361973)).setImageBitmap(localBitmap);
      ((TextView)localView6.findViewById(2131361972)).setText(paramWXMediaMessage.title);
      localObject = localView6;
      continue;
      View localView5 = View.inflate(paramContext, 2130903086, null);
      ((ImageView)localView5.findViewById(2131361973)).setImageBitmap(localBitmap);
      TextView localTextView9 = (TextView)localView5.findViewById(2131361972);
      TextView localTextView10 = (TextView)localView5.findViewById(2131361974);
      localTextView9.setText(paramWXMediaMessage.title);
      localTextView10.setText(paramWXMediaMessage.description);
      localObject = localView5;
      continue;
      View localView4 = View.inflate(paramContext, 2130903086, null);
      ((ImageView)localView4.findViewById(2131361973)).setImageBitmap(localBitmap);
      TextView localTextView7 = (TextView)localView4.findViewById(2131361972);
      TextView localTextView8 = (TextView)localView4.findViewById(2131361974);
      localTextView7.setText(paramWXMediaMessage.title);
      localTextView8.setText(paramWXMediaMessage.description);
      localObject = localView4;
      continue;
      View localView3 = View.inflate(paramContext, 2130903086, null);
      ((ImageView)localView3.findViewById(2131361973)).setImageBitmap(localBitmap);
      TextView localTextView5 = (TextView)localView3.findViewById(2131361972);
      TextView localTextView6 = (TextView)localView3.findViewById(2131361974);
      localTextView5.setText(paramWXMediaMessage.title);
      localTextView6.setText(paramWXMediaMessage.description);
      localObject = localView3;
      continue;
      View localView2 = View.inflate(paramContext, 2130903086, null);
      ((ImageView)localView2.findViewById(2131361973)).setImageBitmap(localBitmap);
      TextView localTextView3 = (TextView)localView2.findViewById(2131361972);
      TextView localTextView4 = (TextView)localView2.findViewById(2131361974);
      localTextView3.setText(paramWXMediaMessage.title);
      localTextView4.setText(paramWXMediaMessage.description);
      localObject = localView2;
      continue;
      View localView1 = View.inflate(paramContext, 2130903086, null);
      ((ImageView)localView1.findViewById(2131361973)).setImageBitmap(localBitmap);
      TextView localTextView1 = (TextView)localView1.findViewById(2131361972);
      TextView localTextView2 = (TextView)localView1.findViewById(2131361974);
      localTextView1.setText(paramWXMediaMessage.title);
      localTextView2.setText(paramWXMediaMessage.description);
      localObject = localView1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.aa
 * JD-Core Version:    0.6.2
 */