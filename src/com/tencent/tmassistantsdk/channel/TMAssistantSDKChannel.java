package com.tencent.tmassistantsdk.channel;

import java.util.ArrayList;

public class TMAssistantSDKChannel
{
  public long AddDataItem(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, long paramLong1, long paramLong2)
  {
    try
    {
      TMAssistantSDKChannelDataItem localTMAssistantSDKChannelDataItem = new TMAssistantSDKChannelDataItem(paramString1, paramInt1, paramString2, paramInt2, paramString3, paramLong1, paramLong2, 0);
      long l = new DBOption().insert(localTMAssistantSDKChannelDataItem);
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean delDataItem(long paramLong)
  {
    boolean bool2;
    if (paramLong < 0L)
      bool2 = false;
    while (true)
    {
      return bool2;
      try
      {
        boolean bool1 = new DBOption().delete(paramLong);
        bool2 = bool1;
      }
      finally
      {
      }
    }
  }

  public ArrayList getChannelDataItemList()
  {
    try
    {
      ArrayList localArrayList = new DBOption().queryAll();
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.channel.TMAssistantSDKChannel
 * JD-Core Version:    0.6.2
 */