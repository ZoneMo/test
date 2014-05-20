package com.tencent.mm.plugin.accountsync.model;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import android.widget.Toast;
import com.tencent.mm.a.f;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.modelfriend.i;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.k;

public final class d
  implements c
{
  private int cIc;
  private String cId;
  private Uri uri;

  public d(int paramInt, String paramString, Uri paramUri)
  {
    this.cIc = paramInt;
    this.cId = paramString;
    this.uri = paramUri;
  }

  private int a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    h localh = ax.Al().fs(paramString1);
    if (paramContext == null)
      aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "null context");
    do
    {
      return 1;
      if (localh == null)
      {
        aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "this user is not my friend");
        return 1;
      }
      String str = localh.getUsername();
      if (cj.hX(str))
      {
        aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "get username failed, phonenum md5 is " + paramString1);
        return 1;
      }
      if (be.uz().su().tK(str))
      {
        switch (this.cIc)
        {
        default:
          return 1;
        case 1:
          Intent localIntent2 = new Intent();
          localIntent2.putExtra("Chat_User", str);
          localIntent2.putExtra("finish_direct", true);
          localIntent2.addFlags(67108864);
          com.tencent.mm.plugin.a.a.cHS.d(localIntent2, paramContext);
          return 0;
        case 2:
        }
        Intent localIntent1 = new Intent();
        localIntent1.putExtra("sns_userName", str);
        localIntent1.addFlags(67108864);
        com.tencent.mm.ak.a.b(paramContext, "sns", ".ui.SnsUserUI", localIntent1);
        return 0;
      }
    }
    while ((cj.hX(paramString3)) || (cj.hX(paramString2)));
    Toast.makeText(paramContext, paramContext.getString(n.biK), 1).show();
    paramContext.getContentResolver().delete(ContactsContract.Data.CONTENT_URI, "_id = ?", new String[] { paramString2 });
    paramContext.getContentResolver().delete(ContactsContract.RawContacts.CONTENT_URI, "contact_id = ? AND account_type = ?", new String[] { paramString3, "com.tencent.mm.account" });
    return 1;
  }

  public final int aj(Context paramContext)
  {
    if (paramContext == null)
    {
      aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "null context");
      return 1;
    }
    if ((!be.uD()) || (be.uG()))
    {
      aa.d("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "not login, start bind login");
      return 3;
    }
    if (cj.hX((String)be.uz().sr().get(6, "")))
    {
      aa.d("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "not bind mobile, start bind mobie");
      return 2;
    }
    if (this.uri != null)
    {
      Cursor localCursor = paramContext.getContentResolver().query(this.uri, new String[] { "contact_id", "_id", "data4" }, null, null, null);
      if (localCursor == null)
      {
        aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "query database err");
        return 1;
      }
      localCursor.moveToFirst();
      int i = localCursor.getColumnIndex("data4");
      if (i == -1)
      {
        aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "no data4 segment exist");
        localCursor.close();
        return 1;
      }
      String str1 = localCursor.getString(i);
      int j = localCursor.getColumnIndex("contact_id");
      String str2;
      int k;
      if (j >= 0)
      {
        str2 = localCursor.getString(j);
        k = localCursor.getColumnIndex("_id");
        if (k < 0)
          break label247;
      }
      label247: for (String str3 = localCursor.getString(k); ; str3 = "")
      {
        localCursor.close();
        if (!cj.hX(str1))
          break label254;
        aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "null friendmobile");
        return 1;
        str2 = "";
        break;
      }
      label254: return a(paramContext, str1, str3, str2);
    }
    if (!cj.hX(this.cId))
      return a(paramContext, f.h(com.tencent.mm.pluginsdk.c.kH(this.cId).getBytes()), null, null);
    aa.e("MicroMsg.ProcessorToChattingOrTimeLineByPhone", "uri is null and the phone num is null");
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.model.d
 * JD-Core Version:    0.6.2
 */