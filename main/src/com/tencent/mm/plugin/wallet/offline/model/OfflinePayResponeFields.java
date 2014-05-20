package com.tencent.mm.plugin.wallet.offline.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class OfflinePayResponeFields
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new b();
  public String eWT;
  public String faD;
  public String faE;
  public String faF;

  public OfflinePayResponeFields()
  {
  }

  public OfflinePayResponeFields(Parcel paramParcel)
  {
    this.faD = paramParcel.readString();
    this.faE = paramParcel.readString();
    this.faF = paramParcel.readString();
    this.eWT = paramParcel.readString();
  }

  public static String a(OfflinePayResponeFields paramOfflinePayResponeFields)
  {
    if (paramOfflinePayResponeFields == null)
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramOfflinePayResponeFields.faD);
    localStringBuilder.append("_");
    localStringBuilder.append(paramOfflinePayResponeFields.faE);
    localStringBuilder.append("_");
    localStringBuilder.append(paramOfflinePayResponeFields.faF);
    localStringBuilder.append("_");
    localStringBuilder.append(paramOfflinePayResponeFields.eWT);
    return localStringBuilder.toString();
  }

  public static OfflinePayResponeFields pF(String paramString)
  {
    OfflinePayResponeFields localOfflinePayResponeFields;
    if (paramString == null)
      localOfflinePayResponeFields = null;
    String[] arrayOfString;
    do
    {
      return localOfflinePayResponeFields;
      localOfflinePayResponeFields = new OfflinePayResponeFields();
      arrayOfString = paramString.split("_");
    }
    while (arrayOfString.length != 4);
    localOfflinePayResponeFields.faD = arrayOfString[0];
    localOfflinePayResponeFields.faE = arrayOfString[1];
    localOfflinePayResponeFields.faF = arrayOfString[2];
    localOfflinePayResponeFields.eWT = arrayOfString[3];
    return localOfflinePayResponeFields;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.faD);
    paramParcel.writeString(this.faE);
    paramParcel.writeString(this.faF);
    paramParcel.writeString(this.eWT);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.offline.model.OfflinePayResponeFields
 * JD-Core Version:    0.6.2
 */