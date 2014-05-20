package com.tencent.mm.modelsimple;

import android.accounts.Account;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Looper;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.RawContacts;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.k;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class c extends Thread
{
  private Account cwO;
  private d cwP;
  private Looper cwQ;
  private String cwR;
  private Context mContext;
  private String username;

  public c(Context paramContext, Account paramAccount)
  {
    this(paramContext, paramAccount, null, null);
  }

  public c(Context paramContext, Account paramAccount, String paramString)
  {
    this(paramContext, paramAccount, paramString, null);
  }

  public c(Context paramContext, Account paramAccount, String paramString1, String paramString2)
  {
    this.mContext = paramContext;
    this.cwO = paramAccount;
    this.username = paramString1;
    this.cwR = paramString2;
    aa.i("MicroMsg.ContactsOperations", "username = " + paramString1 + ", " + paramString2);
  }

  private void BU()
  {
    if (!be.se())
    {
      aa.d("MicroMsg.ContactsOperations", "account not ready, quit this operation");
      quit();
      return;
    }
    List localList = ax.Al().ze();
    if ((localList == null) || (localList.size() == 0))
    {
      aa.e("MicroMsg.ContactsOperations", "there is no wechat friend in this phone");
      quit();
      return;
    }
    HashMap localHashMap = new HashMap();
    Uri localUri = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("account_name", this.cwO.name).appendQueryParameter("account_type", this.cwO.type).build();
    Cursor localCursor = this.mContext.getContentResolver().query(localUri, new String[] { "sync1", "_id" }, "deleted=\"0\"", null, null);
    Iterator localIterator;
    if (localCursor == null)
    {
      aa.e("MicroMsg.ContactsOperations", "query get no user");
      this.cwP = new d(this, this.mContext.getContentResolver());
      localIterator = localList.iterator();
    }
    while (true)
    {
      label167: if (!localIterator.hasNext())
        break label371;
      h localh = (h)localIterator.next();
      String str1 = localh.getUsername();
      com.tencent.mm.storage.i locali = be.uz().su().tO(str1);
      if ((locali != null) && (locali.rb()))
      {
        if (cj.hX(localh.yM()));
        for (String str2 = localh.yP(); ; str2 = localh.yM())
        {
          String str3 = localh.yS();
          String str4 = localh.yX();
          locali.rB();
          if (localHashMap.get(str4) == null)
            c(str2, str3, str4, str1);
          this.cwP.execute();
          break label167;
          if (localCursor.moveToFirst())
            do
              localHashMap.put(localCursor.getString(0), Long.valueOf(localCursor.getLong(1)));
            while (localCursor.moveToNext());
          localCursor.close();
          break;
        }
      }
      gp(localh.yX());
    }
    label371: this.cwP.execute();
    quit();
  }

  private void c(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    aa.d("MicroMsg.ContactsOperations", "add wechat contact: displayname:" + paramString1 + ", phoneNum:" + paramString2 + ", " + paramString3 + ", username:" + paramString4);
    ContentProviderOperation.Builder localBuilder1 = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
    localBuilder1.withValue("account_name", this.cwO.name);
    localBuilder1.withValue("account_type", this.cwO.type);
    localBuilder1.withValue("sync1", paramString3);
    this.cwP.a(localBuilder1.build());
    ContentProviderOperation.Builder localBuilder2 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
    localBuilder2.withValueBackReference("raw_contact_id", 0);
    localBuilder2.withValue("mimetype", "vnd.android.cursor.item/name");
    localBuilder2.withValue("data1", paramString1);
    this.cwP.a(localBuilder2.build());
    ContentProviderOperation.Builder localBuilder3 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
    localBuilder3.withValueBackReference("raw_contact_id", 0);
    localBuilder3.withValue("mimetype", "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile");
    localBuilder3.withValue("data1", paramString2);
    localBuilder3.withValue("data2", this.mContext.getString(n.amt));
    localBuilder3.withValue("data3", this.mContext.getString(n.biF));
    localBuilder3.withValue("data4", paramString3);
    this.cwP.a(localBuilder3.build());
    ContentProviderOperation.Builder localBuilder4 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
    localBuilder4.withValueBackReference("raw_contact_id", 0);
    localBuilder4.withValue("mimetype", "vnd.android.cursor.item/vnd.com.tencent.mm.plugin.sns.timeline");
    localBuilder4.withValue("data1", paramString2);
    localBuilder4.withValue("data2", this.mContext.getString(n.amt));
    localBuilder4.withValue("data3", this.mContext.getString(n.biG));
    localBuilder4.withValue("data4", paramString3);
    this.cwP.a(localBuilder4.build());
  }

  private void gp(String paramString)
  {
    Cursor localCursor = this.mContext.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[] { "contact_id", "_id" }, "(mimetype= ? or mimetype= ?) AND data4 = ?", new String[] { "vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile", "vnd.android.cursor.item/vnd.com.tencent.mm.plugin.sns.timeline", paramString }, null);
    if (localCursor == null)
    {
      aa.e("MicroMsg.ContactsOperations", "get null cursor");
      return;
    }
    String str1;
    label98: int j;
    if (localCursor.moveToFirst())
    {
      int i = localCursor.getColumnIndex("contact_id");
      if (i < 0)
        break label213;
      str1 = localCursor.getString(i);
      j = localCursor.getColumnIndex("_id");
      if (j < 0)
        break label221;
    }
    label213: label221: for (String str2 = localCursor.getString(j); ; str2 = "")
    {
      if ((!cj.hX(str1)) && (!cj.hX(str2)))
      {
        this.mContext.getContentResolver().delete(ContactsContract.Data.CONTENT_URI, "_id = ?", new String[] { str2 });
        this.mContext.getContentResolver().delete(ContactsContract.RawContacts.CONTENT_URI, "contact_id = ? AND account_type = ?", new String[] { str1, "com.tencent.mm.account" });
      }
      if (localCursor.moveToNext())
        break;
      localCursor.close();
      return;
      str1 = "";
      break label98;
    }
  }

  private void quit()
  {
    if (this.cwQ != null)
      this.cwQ.quit();
  }

  public final void run()
  {
    Looper.prepare();
    this.cwQ = Looper.myLooper();
    long l = System.currentTimeMillis();
    aa.i("MicroMsg.ContactsOperations", "start time:" + l);
    if ((cj.hX(this.username)) && (cj.hX(this.cwR)))
      BU();
    while (true)
    {
      aa.i("MicroMsg.ContactsOperations", "end time:" + System.currentTimeMillis());
      Looper.loop();
      return;
      if (!cj.hX(this.cwR))
        break;
      h localh3 = ax.Al().fq(this.username);
      if ((localh3 != null) && (!cj.hX(localh3.yX())))
        gp(localh3.yX());
      quit();
    }
    h localh1 = ax.Al().fq(this.username);
    if ((localh1 == null) || (cj.hX(localh1.yX())));
    for (h localh2 = ax.Al().fq(this.cwR); ; localh2 = localh1)
    {
      String str;
      if ((localh2 != null) && (!cj.hX(localh2.yX())))
      {
        Uri localUri = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("account_name", this.cwO.name).appendQueryParameter("account_type", this.cwO.type).build();
        Cursor localCursor = this.mContext.getContentResolver().query(localUri, new String[] { "sync1", "_id" }, "deleted=\"0\" AND sync1=\"" + localh2.yX() + "\"", null, null);
        if ((localCursor == null) || (localCursor.getCount() == 0))
        {
          if (cj.hX(localh2.yM()))
          {
            str = localh2.yP();
            label320: this.cwP = new d(this, this.mContext.getContentResolver());
            c(str, localh2.yS(), localh2.yX(), this.username);
            this.cwP.execute();
          }
        }
        else if (localCursor != null)
          localCursor.close();
      }
      while (true)
      {
        quit();
        break;
        str = localh2.yM();
        break label320;
        aa.d("MicroMsg.ContactsOperations", "query addrupload is null " + this.username);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelsimple.c
 * JD-Core Version:    0.6.2
 */