package info.guardianproject.ashmem;

import java.io.FileDescriptor;

public class MemoryFile {
	private static String TAG = "MemoryFile";
	private FileDescriptor hwn;
	private int hwo;
	private int mLength;

	static {
		System.loadLibrary("mmdb");
	}

	private boolean isClosed() {
		return !this.hwn.valid();
	}

	private static native void native_close(FileDescriptor paramFileDescriptor);

	private static native int native_get_size(FileDescriptor paramFileDescriptor);

	private static native int native_mmap(FileDescriptor paramFileDescriptor,
			int paramInt1, int paramInt2);

	private static native void native_munmap(int paramInt1, int paramInt2);

	private static native FileDescriptor native_open(String paramString,
			int paramInt);

	private static native void native_pin(FileDescriptor paramFileDescriptor,
			boolean paramBoolean);

	private static native int native_read(FileDescriptor paramFileDescriptor,
			int paramInt1, byte[] paramArrayOfByte, int paramInt2,
			int paramInt3, int paramInt4, boolean paramBoolean);

	private static native void native_write(FileDescriptor paramFileDescriptor,
			int paramInt1, byte[] paramArrayOfByte, int paramInt2,
			int paramInt3, int paramInt4, boolean paramBoolean);

	protected void finalize() {
		if (!isClosed()) {
			int i = this.hwo;
			int j = 0;
			if (i == 0)
				j = 1;
			if (j != 0)
				;
		}
		native_munmap(this.hwo, this.mLength);
		this.hwo = 0;
		if (!isClosed())
			native_close(this.hwn);
		return;
	}
}
