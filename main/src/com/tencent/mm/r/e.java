package com.tencent.mm.r;

import com.tencent.mm.model.aj;
import com.tencent.mm.sdk.platformtools.aa;

public final class e extends aj
{
  public final boolean cn(int paramInt)
  {
    if ((paramInt == 0) || (paramInt <= 604372991));
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Boolean.valueOf(bool);
      aa.d("MicroMsg.EmojiInfoDataTransfer", "in needTransfer, sVer = %d, result = %b", arrayOfObject);
      return bool;
    }
  }

  public final String getTag()
  {
    return "MicroMsg.EmojiInfoDataTransfer";
  }

  public final void transfer(int paramInt)
  {
    aa.i("MicroMsg.EmojiInfoDataTransfer", "start transfer EmojiInfoStorage and EmojiGroupInfoStorage");
    aa.i("MicroMsg.EmojiInfoDataTransfer", "end transfer EmojiInfoStorage and EmojiGroupInfoStorage");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.r.e
 * JD-Core Version:    0.6.2
 */