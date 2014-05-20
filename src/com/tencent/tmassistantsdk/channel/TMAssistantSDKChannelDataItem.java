package com.tencent.tmassistantsdk.channel;

import com.tencent.tmassistantsdk.util.Cryptor;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

public class TMAssistantSDKChannelDataItem
{
  public static final int DATEITEM_VERSION = 0;
  private static final String ENCRYPT_KEY = "&-*)Wb5_U,[^!9'+";
  private int mDBIdentity = -1;
  private String mDataItemAction = "";
  private long mDataItemEndTime = 0L;
  private long mDataItemStartTime = 0L;
  private int mDataItemType = 0;
  private int mDataItemVersion = 0;
  private String mHostPackageName = "";
  private String mHostUserIdentity = "";
  private int mHostVersion = 0;

  public TMAssistantSDKChannelDataItem(String paramString1, int paramInt1, String paramString2, int paramInt2, String paramString3, long paramLong1, long paramLong2, int paramInt3)
  {
    this.mHostPackageName = paramString1;
    if (this.mHostPackageName == null)
      this.mHostPackageName = "";
    this.mHostVersion = paramInt1;
    this.mHostUserIdentity = paramString2;
    if (this.mHostUserIdentity == null)
      this.mHostUserIdentity = "";
    this.mDataItemType = paramInt2;
    this.mDataItemAction = paramString3;
    if (this.mDataItemAction == null)
      this.mDataItemAction = "";
    this.mDataItemStartTime = paramLong1;
    this.mDataItemEndTime = paramLong2;
    this.mDataItemVersion = paramInt3;
  }

  public static TMAssistantSDKChannelDataItem getDataItemFromByte(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
      return null;
    byte[] arrayOfByte = new Cryptor().decrypt(paramArrayOfByte, "&-*)Wb5_U,[^!9'+".getBytes());
    if (arrayOfByte != null);
    try
    {
      JSONObject localJSONObject = new JSONObject(new String(arrayOfByte, "UTF-8"));
      TMAssistantSDKChannelDataItem localTMAssistantSDKChannelDataItem = new TMAssistantSDKChannelDataItem(localJSONObject.getString("mHostPackageName"), localJSONObject.getInt("mHostVersion"), localJSONObject.getString("mHostUserIdentity"), localJSONObject.getInt("mDataItemType"), localJSONObject.getString("mDataItemAction"), localJSONObject.getLong("mDataItemStartTime"), localJSONObject.getLong("mDataItemEndTime"), localJSONObject.getInt("mDataItemVersion"));
      return localTMAssistantSDKChannelDataItem;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      return null;
    }
    catch (JSONException localJSONException)
    {
      label110: break label110;
    }
  }

  public byte[] getBuffer()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("mHostPackageName", this.mHostPackageName);
      localJSONObject.put("mHostVersion", this.mHostVersion);
      localJSONObject.put("mHostUserIdentity", this.mHostUserIdentity);
      localJSONObject.put("mDataItemType", this.mDataItemType);
      localJSONObject.put("mDataItemAction", this.mDataItemAction);
      localJSONObject.put("mDataItemStartTime", this.mDataItemStartTime);
      localJSONObject.put("mDataItemEndTime", this.mDataItemEndTime);
      localJSONObject.put("mDataItemVersion", this.mDataItemVersion);
      String str = localJSONObject.toString();
      if (str != null)
      {
        byte[] arrayOfByte1 = str.getBytes("UTF-8");
        if (arrayOfByte1 != null)
        {
          byte[] arrayOfByte2 = new Cryptor().encrypt(arrayOfByte1, "&-*)Wb5_U,[^!9'+".getBytes());
          return arrayOfByte2;
        }
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      return null;
    }
    catch (JSONException localJSONException)
    {
      label144: break label144;
    }
  }

  public int getDBIdentity()
  {
    return this.mDBIdentity;
  }

  public String getDataItemAction()
  {
    return this.mDataItemAction;
  }

  public long getDataItemEndTime()
  {
    return this.mDataItemEndTime;
  }

  public long getDataItemStartTime()
  {
    return this.mDataItemStartTime;
  }

  public int getDataItemType()
  {
    return this.mDataItemType;
  }

  public int getDataItemVersion()
  {
    return this.mDataItemVersion;
  }

  public String getHostPackageName()
  {
    return this.mHostPackageName;
  }

  public String getHostUserIdentity()
  {
    return this.mHostUserIdentity;
  }

  public int getHostVersion()
  {
    return this.mHostVersion;
  }

  public void setDBIdentity(int paramInt)
  {
    this.mDBIdentity = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.channel.TMAssistantSDKChannelDataItem
 * JD-Core Version:    0.6.2
 */