.class public Linfo/guardianproject/ashmem/MemoryFile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private hwn:Ljava/io/FileDescriptor;

.field private hwo:I

.field private mLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "MemoryFile"

    sput-object v0, Linfo/guardianproject/ashmem/MemoryFile;->TAG:Ljava/lang/String;

    .line 411
    const-string v0, "mmdb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private isClosed()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Linfo/guardianproject/ashmem/MemoryFile;->hwn:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native native_close(Ljava/io/FileDescriptor;)V
.end method

.method private static native native_get_size(Ljava/io/FileDescriptor;)I
.end method

.method private static native native_mmap(Ljava/io/FileDescriptor;II)I
.end method

.method private static native native_munmap(II)V
.end method

.method private static native native_open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
.end method

.method private static native native_pin(Ljava/io/FileDescriptor;Z)V
.end method

.method private static native native_read(Ljava/io/FileDescriptor;I[BIIIZ)I
.end method

.method private static native native_write(Ljava/io/FileDescriptor;I[BIIIZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Linfo/guardianproject/ashmem/MemoryFile;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    sget-object v1, Linfo/guardianproject/ashmem/MemoryFile;->TAG:Ljava/lang/String;

    .line 140
    iget v1, p0, Linfo/guardianproject/ashmem/MemoryFile;->hwo:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    :try_start_0
    iget v0, p0, Linfo/guardianproject/ashmem/MemoryFile;->hwo:I

    iget v1, p0, Linfo/guardianproject/ashmem/MemoryFile;->mLength:I

    invoke-static {v0, v1}, Linfo/guardianproject/ashmem/MemoryFile;->native_munmap(II)V

    const/4 v0, 0x0

    iput v0, p0, Linfo/guardianproject/ashmem/MemoryFile;->hwo:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Linfo/guardianproject/ashmem/MemoryFile;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Linfo/guardianproject/ashmem/MemoryFile;->hwn:Ljava/io/FileDescriptor;

    invoke-static {v0}, Linfo/guardianproject/ashmem/MemoryFile;->native_close(Ljava/io/FileDescriptor;)V

    .line 142
    :cond_2
    return-void

    .line 140
    :catch_0
    move-exception v0

    sget-object v1, Linfo/guardianproject/ashmem/MemoryFile;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    goto :goto_0
.end method
