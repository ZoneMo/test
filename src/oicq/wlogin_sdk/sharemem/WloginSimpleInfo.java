package oicq.wlogin_sdk.sharemem;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Serializable;

public class WloginSimpleInfo
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator CREATOR = new c();
  public long hwZ;
  public byte[] hyv;
  public byte[] hyw;
  public byte[] hyx;
  public byte[] hyy;

  public WloginSimpleInfo()
  {
    this.hwZ = 0L;
    this.hyv = new byte[0];
    this.hyw = new byte[0];
    this.hyx = new byte[0];
    this.hyy = new byte[0];
  }

  public WloginSimpleInfo(long paramLong, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    this.hwZ = paramLong;
    this.hyv = ((byte[])paramArrayOfByte1.clone());
    this.hyw = ((byte[])paramArrayOfByte2.clone());
    this.hyx = ((byte[])paramArrayOfByte3.clone());
    this.hyy = ((byte[])paramArrayOfByte4.clone());
  }

  private WloginSimpleInfo(Parcel paramParcel)
  {
    this.hwZ = paramParcel.readLong();
    this.hyv = paramParcel.createByteArray();
    this.hyw = paramParcel.createByteArray();
    this.hyx = paramParcel.createByteArray();
    this.hyy = paramParcel.createByteArray();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.hwZ);
    paramParcel.writeByteArray(this.hyv);
    paramParcel.writeByteArray(this.hyw);
    paramParcel.writeByteArray(this.hyx);
    paramParcel.writeByteArray(this.hyy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.sharemem.WloginSimpleInfo
 * JD-Core Version:    0.6.2
 */