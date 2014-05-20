package com.tencent.mm.plugin.wallet.pay.model;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class j extends ContentObserver
{
  private boolean cmH = false;
  private ContentResolver contentResolver;
  private boolean fbl = false;
  private boolean fbm = false;
  private k fbn;
  private long fbo = 0L;
  private String[] fbp;
  private Context mContext;

  public j(Handler paramHandler, Context paramContext)
  {
    super(paramHandler);
    this.mContext = paramContext;
  }

  private static String p(int paramInt, String paramString)
  {
    while (true)
    {
      if (paramInt >= paramString.length())
        return null;
      while ((paramInt < paramString.length()) && (!Character.isDigit(paramString.charAt(paramInt))))
        paramInt++;
      for (int i = paramInt + 1; (i < paramString.length()) && (Character.isDigit(paramString.charAt(i))); i++);
      String str = paramString.substring(paramInt, i);
      aa.v("MicroMsg.SmsVerifyObserver", "verify number from sms:" + str);
      if (str.length() == 6)
        return str;
      paramInt = i + 1;
    }
  }

  public final void a(k paramk)
  {
    this.fbn = paramk;
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    while (true)
    {
      int k;
      try
      {
        if ((this.fbl) || (this.cmH))
          break label426;
        if (this.fbm)
          return;
        Uri localUri = Uri.parse("content://sms/inbox");
        this.contentResolver = this.mContext.getContentResolver();
        String[] arrayOfString1 = { "body", "_id", "date" };
        String[] arrayOfString2 = this.fbp;
        String str1 = null;
        if (arrayOfString2 != null)
        {
          k = 0;
          String str3 = "( ";
          if (k < this.fbp.length)
          {
            if (k == -1 + this.fbp.length)
            {
              str3 = str3 + " body like \"%" + this.fbp[k] + "%\" ) ";
              break label427;
            }
            str3 = str3 + "body like \"%" + this.fbp[k] + "%\" or ";
            break label427;
          }
          str1 = str3 + " and date > " + this.fbo + " ";
          aa.v("MicroMsg.SmsVerifyObserver", "sql where:" + str1);
        }
        if ((str1 == null) || (str1.equals("")))
          break label426;
        Cursor localCursor = this.contentResolver.query(localUri, arrayOfString1, str1, null, "date desc");
        if (localCursor == null)
          break label426;
        i = -1;
        l1 = 0L;
        if (localCursor.moveToNext())
        {
          l2 = localCursor.getLong(2);
          if (l2 > l1)
          {
            j = localCursor.getPosition();
            break label433;
          }
        }
        else
        {
          if (i >= 0)
          {
            localCursor.moveToPosition(i);
            String str2 = p(0, localCursor.getString(localCursor.getColumnIndex("body")));
            if ((!cj.hX(str2)) && (str2.length() == 6))
            {
              if (this.fbn != null)
                this.fbn.pH(str2);
              this.fbm = true;
            }
          }
          localCursor.close();
          return;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      long l2 = l1;
      int j = i;
      break label433;
      label426: return;
      label427: k++;
      continue;
      label433: int i = j;
      long l1 = l2;
    }
  }

  public final void start()
  {
    this.fbl = false;
    this.fbm = false;
    this.cmH = false;
    Uri localUri = Uri.parse("content://sms/inbox");
    this.contentResolver = this.mContext.getContentResolver();
    String str1 = "( ";
    String str2;
    Cursor localCursor;
    if (this.fbp != null)
    {
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
      aa.v("MicroMsg.SmsVerifyObserver", "sql where:" + str1);
      str2 = str1;
      String[] arrayOfString = { "date" };
      localCursor = this.contentResolver.query(localUri, arrayOfString, str2, null, "date desc limit 1");
      if ((localCursor == null) || (localCursor.getCount() <= 0))
        break label271;
      localCursor.moveToFirst();
    }
    label271: for (long l = localCursor.getLong(0); ; l = 0L)
    {
      if (localCursor != null)
        localCursor.close();
      this.fbo = l;
      this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, this);
      return;
      str2 = "";
      break;
    }
  }

  public final void stop()
  {
    if (this.mContext != null)
      this.mContext.getContentResolver().unregisterContentObserver(this);
    this.cmH = true;
  }

  public final void x(String[] paramArrayOfString)
  {
    this.fbp = paramArrayOfString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.model.j
 * JD-Core Version:    0.6.2
 */