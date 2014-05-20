package com.tencent.mm.storage;

import com.tencent.mm.g.a;
import info.guardianproject.database.CursorDataItem;

public final class n extends a
  implements CursorDataItem
{
  public n()
  {
  }

  public n(String paramString)
  {
    super(paramString);
  }

  private void g(int paramInt, long paramLong)
  {
    switch (paramInt)
    {
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    default:
      return;
    case 0:
      this.field_unReadCount = ((int)paramLong);
      return;
    case 1:
      this.field_status = ((int)paramLong);
      return;
    case 2:
      this.field_isSend = ((int)paramLong);
      return;
    case 3:
      this.field_conversationTime = paramLong;
      return;
    case 7:
      this.field_flag = paramLong;
      return;
    case 10:
    }
    this.field_attrflag = ((int)paramLong);
  }

  public final void aAH()
  {
    this.field_status = 0;
    this.field_isSend = 0;
    this.field_content = "";
    this.field_msgType = "0";
    this.field_unReadCount = 0;
    this.field_digest = "";
    this.field_digestUser = "";
  }

  public final void fillColumnBlob(int paramInt, byte[] paramArrayOfByte)
  {
  }

  public final void fillColumnDouble(int paramInt, double paramDouble)
  {
  }

  public final void fillColumnFloat(int paramInt, float paramFloat)
  {
  }

  public final void fillColumnInt(int paramInt, long paramLong)
  {
    g(paramInt, paramLong);
  }

  public final void fillColumnLong(int paramInt, long paramLong)
  {
    g(paramInt, paramLong);
  }

  public final void fillColumnNull(int paramInt)
  {
  }

  public final void fillColumnString(int paramInt, String paramString)
  {
    switch (paramInt)
    {
    case 7:
    case 10:
    default:
      return;
    case 4:
      this.field_username = paramString;
      return;
    case 5:
      this.field_content = paramString;
      return;
    case 6:
      this.field_msgType = paramString;
      return;
    case 8:
      this.field_digest = paramString;
      return;
    case 9:
      this.field_digestUser = paramString;
      return;
    case 11:
    }
    this.field_editingMsg = paramString;
  }

  public final void onItemShow()
  {
  }

  public final void t(ak paramak)
  {
    this.field_status = paramak.getStatus();
    this.field_isSend = paramak.rO();
    if (paramak.getStatus() == 1);
    for (long l = 9223372036854775807L; ; l = paramak.DL())
    {
      this.field_conversationTime = l;
      this.field_content = paramak.getContent();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.n
 * JD-Core Version:    0.6.2
 */