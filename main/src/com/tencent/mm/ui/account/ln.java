package com.tencent.mm.ui.account;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import com.tencent.mm.c;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ln extends ContentObserver
{
  private ContentResolver contentResolver;
  private final Context context;
  private final String[] fbp;
  private final lo guC;
  private Pattern guD = Pattern.compile("\\d{4,8}");

  public ln(Context paramContext, Handler paramHandler, lo paramlo)
  {
    super(paramHandler);
    if ((paramContext == null) || (paramHandler == null) || (paramlo == null))
      throw new NullPointerException("SmsContentObserver Construction");
    this.context = paramContext;
    this.fbp = paramContext.getResources().getStringArray(c.Zt);
    this.guC = paramlo;
  }

  public final void aGl()
  {
    this.context.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, this);
  }

  public final void aGm()
  {
    this.context.getContentResolver().unregisterContentObserver(this);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    Uri localUri = Uri.parse("content://sms/inbox");
    this.contentResolver = this.context.getContentResolver();
    String[] arrayOfString = { "body", "_id", "date" };
    String str1 = "( ";
    int i = 0;
    if (i < this.fbp.length)
    {
      if (i == -1 + this.fbp.length);
      for (str1 = str1 + " body like \"%" + this.fbp[i] + "%\" ) "; ; str1 = str1 + "body like \"%" + this.fbp[i] + "%\" or ")
      {
        i++;
        break;
      }
    }
    String str2 = str1 + " and date > " + (System.currentTimeMillis() - 300000L) + " ";
    aa.v("MicroMsg.SmsContentObserver", "sql where:" + str2);
    if ((str2 == null) || (str2.equals("")))
      return;
    Cursor localCursor = this.contentResolver.query(localUri, arrayOfString, str2, null, null);
    int j = -1;
    long l2;
    for (long l1 = 0L; ; l1 = l2)
    {
      try
      {
        if (localCursor.moveToNext())
        {
          l2 = localCursor.getLong(2);
          if (l2 > l1)
          {
            k = localCursor.getPosition();
            break label472;
          }
        }
        else
        {
          if (j >= 0)
          {
            localCursor.moveToPosition(j);
            String str3 = localCursor.getString(localCursor.getColumnIndex("body"));
            Matcher localMatcher = this.guD.matcher(str3);
            boolean bool = localMatcher.find();
            String str4 = null;
            if (bool)
              str4 = localMatcher.group();
            this.guC.wb(str4);
          }
          while (true)
          {
            return;
            this.guC.aGa();
          }
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.SmsContentObserver", localException.toString());
        return;
      }
      finally
      {
        if ((localCursor != null) && (!localCursor.isClosed()))
          localCursor.close();
      }
      l2 = l1;
      int k = j;
      label472: j = k;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ln
 * JD-Core Version:    0.6.2
 */