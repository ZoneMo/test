package com.tencent.mm.plugin.ext.provider;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.ext.a.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

public class ExtControlProviderEntry extends ExtContentProviderBase
{
  private static final UriMatcher dfB;
  private static final String[] dfC = { "retCode" };

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    dfB = localUriMatcher;
    localUriMatcher.addURI("com.tencent.mm.plugin.ext.entry", "view_profile", 2);
    dfB.addURI("com.tencent.mm.plugin.ext.entry", "to_chatting", 3);
    dfB.addURI("com.tencent.mm.plugin.ext.entry", "to_nearby", 4);
    dfB.addURI("com.tencent.mm.plugin.ext.entry", "sns_comment_detail", 5);
    dfB.addURI("com.tencent.mm.plugin.ext.entry", "share_time_line", 6);
  }

  private Cursor e(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "wrong args");
      fT(3);
      return null;
    }
    String str = paramArrayOfString[0];
    if ((str == null) || (str.length() <= 0))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "contactId == null");
      fT(3);
      return null;
    }
    i locali;
    try
    {
      locali = be.uz().su().bQ(a.ju(str));
      if ((locali == null) || (locali.rj() <= 0) || (getContext() == null))
      {
        fT(3);
        return null;
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.ExtControlEntryProvider", localException.getMessage());
      fT(3);
      return null;
    }
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.contact.profile.ContactInfoUI"));
    localIntent.addFlags(268435456);
    localIntent.putExtra("Contact_User", locali.getUsername());
    getContext().startActivity(localIntent);
    MatrixCursor localMatrixCursor = new MatrixCursor(dfC);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localMatrixCursor.addRow(arrayOfObject);
    fT(0);
    return localMatrixCursor;
  }

  private Cursor f(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "wrong args");
      fT(3);
      return null;
    }
    String str = paramArrayOfString[0];
    if ((str == null) || (str.length() <= 0))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "contactId == null");
      fT(3);
      return null;
    }
    i locali;
    try
    {
      locali = be.uz().su().bQ(a.ju(str));
      if ((locali == null) || (locali.rj() <= 0) || (getContext() == null))
      {
        fT(3);
        return null;
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.ExtControlEntryProvider", localException.getMessage());
      fT(3);
      return null;
    }
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.chatting.ChattingUI"));
    localIntent.putExtra("Chat_User", locali.getUsername());
    localIntent.putExtra("finish_direct", true);
    localIntent.addFlags(268435456);
    getContext().startActivity(localIntent);
    MatrixCursor localMatrixCursor = new MatrixCursor(dfC);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localMatrixCursor.addRow(arrayOfObject);
    fT(0);
    return localMatrixCursor;
  }

  private Cursor g(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "wrong args");
      fT(3);
      return null;
    }
    String str = paramArrayOfString[0];
    if ((str == null) || (str.length() <= 0))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "wrong args");
      fT(3);
      return null;
    }
    long l;
    try
    {
      l = a.ju(str);
      if (l <= 0L)
      {
        fT(3);
        return null;
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.ExtControlEntryProvider", localException.getMessage());
      fT(3);
      return null;
    }
    if (getContext() == null)
    {
      fT(4);
      return null;
    }
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.plugin.sns.ui.SnsCommentDetailUI"));
    localIntent.putExtra("INTENT_SNS_LOCAL_ID", (int)l);
    localIntent.addCategory("android.intent.category.DEFAULT");
    localIntent.addFlags(268435456);
    getContext().startActivity(localIntent);
    fT(0);
    MatrixCursor localMatrixCursor = new MatrixCursor(dfC);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localMatrixCursor.addRow(arrayOfObject);
    return localMatrixCursor;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }

  public String getType(Uri paramUri)
  {
    return null;
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }

  public boolean onCreate()
  {
    return true;
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    aa.d("MicroMsg.ExtControlEntryProvider", "query()");
    a(paramUri, getContext(), dfB);
    if (paramUri == null)
    {
      fT(3);
      return null;
    }
    if ((cj.hX(Mp())) || (cj.hX(Mq())))
    {
      fT(3);
      return null;
    }
    if (!ID())
    {
      fT(1);
      return this.dft;
    }
    if (!ao(getContext()))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "invalid appid ! return null");
      fT(2);
      return null;
    }
    switch (dfB.match(paramUri))
    {
    default:
      fT(3);
      return null;
    case 2:
      return e(paramArrayOfString2);
    case 3:
      return f(paramArrayOfString2);
    case 4:
      if (getContext() == null)
      {
        fT(4);
        return null;
      }
      Intent localIntent2 = new Intent();
      localIntent2.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.plugin.nearby.ui.NearbyFriendsUI"));
      localIntent2.addFlags(268435456);
      getContext().startActivity(localIntent2);
      MatrixCursor localMatrixCursor2 = new MatrixCursor(dfC);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      localMatrixCursor2.addRow(arrayOfObject2);
      fT(0);
      return localMatrixCursor2;
    case 5:
      return g(paramArrayOfString2);
    case 6:
    }
    if ((paramArrayOfString2 == null) || (paramArrayOfString2.length <= 0))
    {
      aa.w("MicroMsg.ExtControlEntryProvider", "wrong args");
      fT(3);
      return null;
    }
    if (getContext() == null)
    {
      fT(4);
      return null;
    }
    Intent localIntent1 = new Intent();
    localIntent1.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.tools.ShareToTimeLineUI"));
    localIntent1.setAction("android.intent.action.SEND");
    localIntent1.addCategory("android.intent.category.DEFAULT");
    localIntent1.addFlags(268435456);
    if (paramArrayOfString2[1] == null);
    for (String str = ""; ; str = paramArrayOfString2[1])
    {
      localIntent1.putExtra("android.intent.extra.TEXT", str);
      if ((paramArrayOfString2[0] != null) && (paramArrayOfString2[0].trim().length() > 0))
        localIntent1.putExtra("android.intent.extra.STREAM", Uri.parse(paramArrayOfString2[0]));
      localIntent1.putExtra("Ksnsupload_empty_img", true);
      localIntent1.setType("image/*");
      getContext().startActivity(localIntent1);
      fT(0);
      MatrixCursor localMatrixCursor1 = new MatrixCursor(dfC);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(1);
      localMatrixCursor1.addRow(arrayOfObject1);
      return localMatrixCursor1;
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.ext.provider.ExtControlProviderEntry
 * JD-Core Version:    0.6.2
 */