package oicq.wlogin_sdk.sharemem;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class WloginLoginInfo
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator CREATOR = new a();
  public static int hyi = 1;
  public static int hyj = 2;
  public long ehX;
  public long hyk;
  public long hyl;
  public String mAccount;
  public int uC;

  private WloginLoginInfo(Parcel paramParcel)
  {
    this.mAccount = paramParcel.readString();
    this.hyk = paramParcel.readLong();
    this.hyl = paramParcel.readLong();
    this.ehX = paramParcel.readLong();
    this.uC = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mAccount);
    paramParcel.writeLong(this.hyk);
    paramParcel.writeLong(this.hyl);
    paramParcel.writeLong(this.ehX);
    paramParcel.writeInt(this.uC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.sharemem.WloginLoginInfo
 * JD-Core Version:    0.6.2
 */