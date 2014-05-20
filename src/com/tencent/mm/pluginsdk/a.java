package com.tencent.mm.pluginsdk;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.Contacts.ContactMethods;
import android.provider.Contacts.Phones;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;
import java.util.List;

final class a
{
  public static List aO(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    Cursor localCursor = paramContext.getContentResolver().query(Contacts.Phones.CONTENT_URI, null, null, null, null);
    if (localCursor == null)
    {
      aa.e("AddressBook16Impl", "getMobileInfo : cursor is null.");
      return localLinkedList;
    }
    while (localCursor.moveToNext())
    {
      String str = localCursor.getString(localCursor.getColumnIndex("display_name"));
      localLinkedList.add(new String[] { localCursor.getString(localCursor.getColumnIndex("person")), str, localCursor.getString(localCursor.getColumnIndex("number")) });
    }
    localCursor.close();
    return localLinkedList;
  }

  public static List aP(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    Cursor localCursor = paramContext.getContentResolver().query(Contacts.ContactMethods.CONTENT_EMAIL_URI, null, null, null, null);
    if (localCursor == null)
    {
      aa.e("AddressBook16Impl", "getEmailInfo: cursor is null.");
      return localLinkedList;
    }
    if (localCursor.moveToFirst());
    try
    {
      label111: 
      do
      {
        String str = localCursor.getString(localCursor.getColumnIndex("data"));
        localLinkedList.add(new String[] { localCursor.getString(localCursor.getColumnIndex("_id")), localCursor.getString(localCursor.getColumnIndex("name")), str });
      }
      while (localCursor.moveToNext());
      localCursor.close();
      return localLinkedList;
    }
    catch (Exception localException)
    {
      break label111;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.a
 * JD-Core Version:    0.6.2
 */