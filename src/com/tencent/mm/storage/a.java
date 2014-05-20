package com.tencent.mm.storage;

import android.database.Cursor;
import com.tencent.mm.a.j;
import com.tencent.mm.sdk.platformtools.cj;
import info.guardianproject.database.CursorDataItem;

public final class a
  implements CursorDataItem
{
  public long cfY;
  private String field_alias;
  public String field_conRemark;
  public int field_deleteFlag;
  public byte[] field_lvbuff;
  private String field_nickname;
  public int field_showHead;
  public String field_signature;
  private String field_username;
  private int field_verifyFlag;
  public int field_weiboFlag;
  private CharSequence ggm;

  public static void aAc()
  {
  }

  private void f(int paramInt, long paramLong)
  {
    switch (paramInt)
    {
    default:
      return;
    case 4:
      this.field_verifyFlag = ((int)paramLong);
      return;
    case 5:
      this.field_showHead = ((int)paramLong);
      return;
    case 6:
      this.field_weiboFlag = ((int)paramLong);
      return;
    case 7:
      this.cfY = paramLong;
      return;
    case 8:
    }
    this.field_deleteFlag = ((int)paramLong);
  }

  public final CharSequence aAd()
  {
    return this.ggm;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.field_username = paramCursor.getString(0);
    this.field_nickname = paramCursor.getString(1);
    this.field_alias = paramCursor.getString(2);
    this.field_conRemark = paramCursor.getString(3);
    this.field_verifyFlag = paramCursor.getInt(4);
    this.field_showHead = paramCursor.getInt(5);
    this.field_weiboFlag = paramCursor.getInt(6);
    this.cfY = paramCursor.getLong(7);
    this.field_deleteFlag = paramCursor.getInt(8);
  }

  public final void fillColumnBlob(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramInt == 6)
      this.field_lvbuff = paramArrayOfByte;
  }

  public final void fillColumnDouble(int paramInt, double paramDouble)
  {
  }

  public final void fillColumnFloat(int paramInt, float paramFloat)
  {
  }

  public final void fillColumnInt(int paramInt, long paramLong)
  {
    f(paramInt, paramLong);
  }

  public final void fillColumnLong(int paramInt, long paramLong)
  {
    f(paramInt, paramLong);
  }

  public final void fillColumnNull(int paramInt)
  {
  }

  public final void fillColumnString(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      this.field_username = paramString;
      return;
    case 1:
      this.field_nickname = paramString;
      return;
    case 2:
      this.field_alias = paramString;
      return;
    case 3:
    }
    this.field_conRemark = paramString;
  }

  public final String getUsername()
  {
    return this.field_username;
  }

  public final void onItemShow()
  {
  }

  public final int rJ()
  {
    return this.field_verifyFlag;
  }

  public final int rl()
  {
    return this.field_showHead;
  }

  public final String rr()
  {
    String str;
    if ((this.field_conRemark != null) && (!this.field_conRemark.trim().equals("")))
      str = this.field_conRemark;
    while (true)
    {
      return str;
      str = com.tencent.mm.f.a.bs(this.field_username);
      if (str == null)
      {
        if ((this.field_nickname != null) && (this.field_nickname.length() > 0))
          break;
        str = this.field_alias;
        if (cj.hX(str))
        {
          str = this.field_username;
          if (str == null)
            str = null;
          while ((str == null) || (str.length() == 0))
          {
            return this.field_username;
            if (str.toLowerCase().endsWith("@t.qq.com"))
            {
              str = "@" + str.replace("@t.qq.com", "");
            }
            else if (str.toLowerCase().endsWith("@qqim"))
            {
              str = str.replace("@qqim", "");
              long l = Long.valueOf(str).longValue();
              if (l < 0L)
                str = new j(l).toString();
            }
          }
        }
      }
    }
    return this.field_nickname;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.a
 * JD-Core Version:    0.6.2
 */