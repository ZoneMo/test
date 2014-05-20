package com.tencent.mm.ui.chatting;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import java.util.Iterator;
import java.util.List;

public final class bu
{
  public static boolean a(Context paramContext, List paramList, i parami)
  {
    if (paramContext == null)
    {
      aa.w("MicroMsg.ChattingEditModeSendToMail", "do send to mail fail, context is null");
      return false;
    }
    if ((paramList == null) || (paramList.isEmpty()))
    {
      aa.w("MicroMsg.ChattingEditModeSendToMail", "do send to mail fail, select item empty");
      return false;
    }
    if ((parami == null) || (parami.rj() <= 0))
    {
      aa.w("MicroMsg.ChattingEditModeSendToMail", "do send to mail fail, contact error");
      return false;
    }
    return b(paramContext, paramList, parami);
  }

  private static boolean b(Context paramContext, List paramList, i parami)
  {
    String str2;
    if (!parami.getUsername().endsWith("@chatroom"))
    {
      String str7 = paramContext.getString(2131165727);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = parami.rq();
      arrayOfObject2[1] = be.uz().sr().get(4);
      str2 = String.format(str7, arrayOfObject2);
      m localm = m.dZN;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(7);
      arrayOfObject1[1] = Integer.valueOf(paramList.size());
      localm.d(10811, arrayOfObject1);
      if ((0x1 & v.tq()) == 0)
      {
        aa.d("MicroMsg.ChattingEditModeSendToMail", "use qq mail plugin to send mail");
        String str4 = new QQMailHistoryExporter(paramContext, paramList, parami).aKg();
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("mail_mode", 6);
        localIntent2.putExtra("mail_content", str4);
        localIntent2.putExtra("subject", str2);
        localIntent2.putExtra("show_qqmail", true);
        a.a(paramContext, "qqmail", ".ui.ComposeUI", localIntent2, 220);
        return false;
      }
    }
    else
    {
      String str5;
      if (cj.hX(parami.kn()))
      {
        Iterator localIterator = r.cg(parami.getUsername()).iterator();
        String str6;
        for (str5 = ""; localIterator.hasNext(); str5 = str5 + str6 + ", ")
          str6 = w.cu((String)localIterator.next());
      }
      for (String str1 = str5.substring(0, -2 + str5.length()); ; str1 = parami.rq())
      {
        str2 = String.format(paramContext.getString(2131165728), new Object[] { str1 });
        break;
      }
    }
    aa.w("MicroMsg.ChattingEditModeSendToMail", "use order mail app to send mail");
    ku localku = new ku(paramContext, paramList, parami);
    String str3 = localku.aKg();
    Intent localIntent1 = new Intent("android.intent.action.SEND_MULTIPLE");
    localIntent1.setType("message/rfc822");
    localIntent1.putExtra("android.intent.extra.SUBJECT", str2);
    localIntent1.putExtra("android.intent.extra.TEXT", str3);
    localIntent1.putParcelableArrayListExtra("android.intent.extra.STREAM", localku.aKf());
    try
    {
      paramContext.startActivity(Intent.createChooser(localIntent1, paramContext.getString(2131166879)));
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      while (true)
        Toast.makeText(paramContext, 2131165723, 0).show();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.bu
 * JD-Core Version:    0.6.2
 */