package com.tencent.mm.protocal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bg extends Binder
  implements bf
{
  public bg()
  {
    attachInterface(this, "com.tencent.mm.protocal.MMSyncCheckCoder_AIDL");
  }

  public static bf u(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.tencent.mm.protocal.MMSyncCheckCoder_AIDL");
    if ((localIInterface != null) && ((localIInterface instanceof bf)))
      return (bf)localIInterface;
    return new bh(paramIBinder);
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.tencent.mm.protocal.MMSyncCheckCoder_AIDL");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.tencent.mm.protocal.MMSyncCheckCoder_AIDL");
      byte[] arrayOfByte2 = uL();
      paramParcel2.writeNoException();
      paramParcel2.writeByteArray(arrayOfByte2);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.tencent.mm.protocal.MMSyncCheckCoder_AIDL");
      byte[] arrayOfByte1 = uM();
      paramParcel2.writeNoException();
      paramParcel2.writeByteArray(arrayOfByte1);
      return true;
    case 3:
    }
    paramParcel1.enforceInterface("com.tencent.mm.protocal.MMSyncCheckCoder_AIDL");
    int i = o(paramParcel1.createByteArray());
    paramParcel2.writeNoException();
    paramParcel2.writeInt(i);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.bg
 * JD-Core Version:    0.6.2
 */